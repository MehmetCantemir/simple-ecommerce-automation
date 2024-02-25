USE [OnlineAlisveriVT3]
GO
/****** Object:  Trigger [dbo].[UpdateStok]    Script Date: 25.12.2023 12:19:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TRIGGER [dbo].[UpdateStok]
ON [dbo].[Urunler]
AFTER INSERT
AS
BEGIN
    UPDATE Urunler
    SET Stok = Stok - 1
    FROM Urunler
    INNER JOIN inserted i ON Urunler.UrunID = i.UrunID;
END;



