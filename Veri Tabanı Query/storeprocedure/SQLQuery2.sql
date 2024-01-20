USE [OnlineAlisveriVT3]
GO
/****** Object:  StoredProcedure [dbo].[SiparisEkleme]    Script Date: 25.12.2023 12:00:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[SiparisEkleme]
	@miktar int ,
	@fiyat decimal,

	@urunID int
AS
BEGIN

INSERT INTO Siparisler(Miktar,ToplamFiyat,UrunID)
VALUES
	(@miktar,@fiyat,@urunID)
END
