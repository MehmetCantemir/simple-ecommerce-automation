USE [master]
GO
/****** Object:  Database [OnlineAlisveriVT2]    Script Date: 25.12.2023 10:51:20 ******/
CREATE DATABASE [OnlineAlisveriVT2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'OnlineAlisveriVT2', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\OnlineAlisveriVT2.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'OnlineAlisveriVT2_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\OnlineAlisveriVT2_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [OnlineAlisveriVT2] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [OnlineAlisveriVT2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [OnlineAlisveriVT2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [OnlineAlisveriVT2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [OnlineAlisveriVT2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [OnlineAlisveriVT2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [OnlineAlisveriVT2] SET ARITHABORT OFF 
GO
ALTER DATABASE [OnlineAlisveriVT2] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [OnlineAlisveriVT2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [OnlineAlisveriVT2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [OnlineAlisveriVT2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [OnlineAlisveriVT2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [OnlineAlisveriVT2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [OnlineAlisveriVT2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [OnlineAlisveriVT2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [OnlineAlisveriVT2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [OnlineAlisveriVT2] SET  DISABLE_BROKER 
GO
ALTER DATABASE [OnlineAlisveriVT2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [OnlineAlisveriVT2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [OnlineAlisveriVT2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [OnlineAlisveriVT2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [OnlineAlisveriVT2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [OnlineAlisveriVT2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [OnlineAlisveriVT2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [OnlineAlisveriVT2] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [OnlineAlisveriVT2] SET  MULTI_USER 
GO
ALTER DATABASE [OnlineAlisveriVT2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [OnlineAlisveriVT2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [OnlineAlisveriVT2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [OnlineAlisveriVT2] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [OnlineAlisveriVT2] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [OnlineAlisveriVT2] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [OnlineAlisveriVT2] SET QUERY_STORE = ON
GO
ALTER DATABASE [OnlineAlisveriVT2] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [OnlineAlisveriVT2]
GO
/****** Object:  User [2000]    Script Date: 25.12.2023 10:51:20 ******/
CREATE USER [2000] FOR LOGIN [2000] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [2000]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [2000]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [2000]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [2000]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [2000]
GO
ALTER ROLE [db_datareader] ADD MEMBER [2000]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [2000]
GO
ALTER ROLE [db_denydatareader] ADD MEMBER [2000]
GO
ALTER ROLE [db_denydatawriter] ADD MEMBER [2000]
GO
/****** Object:  Table [dbo].[Adminler]    Script Date: 25.12.2023 10:51:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Adminler](
	[AdminID] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciAdi] [varchar](15) NULL,
	[Sifre] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[AdminID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kargo]    Script Date: 25.12.2023 10:51:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kargo](
	[KargoID] [int] IDENTITY(1,1) NOT NULL,
	[SiparisID] [int] NULL,
	[KargoTarihi] [date] NULL,
	[KargoDurumu] [varchar](13) NULL,
	[TeslimatAdresi] [varchar](90) NULL,
PRIMARY KEY CLUSTERED 
(
	[KargoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kategori]    Script Date: 25.12.2023 10:51:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kategori](
	[KategoriID] [int] IDENTITY(1,1) NOT NULL,
	[KategoriAdi] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[KategoriID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Musteriler]    Script Date: 25.12.2023 10:51:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Musteriler](
	[MusteriID] [int] IDENTITY(1,1) NOT NULL,
	[MusteriAdi] [varchar](25) NULL,
	[MusteriSoyadi] [varchar](25) NULL,
	[KullaniciAdi] [varchar](10) NULL,
	[Sifre] [varchar](7) NULL,
	[Adres] [varchar](50) NULL,
	[Eposta] [varchar](20) NULL,
	[Telno] [varchar](11) NULL,
PRIMARY KEY CLUSTERED 
(
	[MusteriID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Odeme]    Script Date: 25.12.2023 10:51:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Odeme](
	[OdemeID] [int] IDENTITY(1,1) NOT NULL,
	[SiparisID] [int] NULL,
	[OdemeTarihi] [date] NULL,
	[OdemeTutari] [decimal](18, 0) NULL,
	[OdemeTuruID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[OdemeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OdemeTurleri]    Script Date: 25.12.2023 10:51:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OdemeTurleri](
	[OdemeTuruID] [int] IDENTITY(1,1) NOT NULL,
	[OdemeTuruAdi] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[OdemeTuruID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Personel]    Script Date: 25.12.2023 10:51:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personel](
	[PersonelID] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciAdi] [varchar](15) NULL,
	[Sifre] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[PersonelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SilinenMusteri]    Script Date: 25.12.2023 10:51:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SilinenMusteri](
	[SilinenMusteriID] [int] IDENTITY(1,1) NOT NULL,
	[MusteriID] [int] NULL,
	[SilinmeTarihi] [date] NULL,
	[SilenAdmin] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[SilinenMusteriID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SilinenUrunler]    Script Date: 25.12.2023 10:51:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SilinenUrunler](
	[SilinenUrunID] [int] IDENTITY(1,1) NOT NULL,
	[UrunID] [int] NULL,
	[SilinmeTarihi] [date] NULL,
	[AdminID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[SilinenUrunID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Siparisler]    Script Date: 25.12.2023 10:51:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Siparisler](
	[SiparisID] [int] IDENTITY(1,1) NOT NULL,
	[Miktar] [int] NULL,
	[ToplamFiyat] [decimal](18, 0) NULL,
	[MusteriID] [int] NULL,
	[UrunID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[SiparisID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Urunler]    Script Date: 25.12.2023 10:51:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Urunler](
	[UrunID] [int] IDENTITY(1,1) NOT NULL,
	[UrunAdi] [varchar](25) NULL,
	[UrunAciklamasi] [varchar](50) NULL,
	[Fiyat] [money] NULL,
	[Stok] [int] NULL,
	[KategoriID] [int] NULL,
	[RenkID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[UrunID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UrunRenkleri]    Script Date: 25.12.2023 10:51:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UrunRenkleri](
	[RenkID] [int] IDENTITY(1,1) NOT NULL,
	[RenkAdi] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[RenkID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Adminler] ON 

INSERT [dbo].[Adminler] ([AdminID], [KullaniciAdi], [Sifre]) VALUES (5, N'Admin', N'Admin')
SET IDENTITY_INSERT [dbo].[Adminler] OFF
GO
SET IDENTITY_INSERT [dbo].[Kargo] ON 

INSERT [dbo].[Kargo] ([KargoID], [SiparisID], [KargoTarihi], [KargoDurumu], [TeslimatAdresi]) VALUES (6, 3, CAST(N'2023-10-10' AS Date), N'DAGITIMDA', N'ANKARA')
SET IDENTITY_INSERT [dbo].[Kargo] OFF
GO
SET IDENTITY_INSERT [dbo].[Kategori] ON 

INSERT [dbo].[Kategori] ([KategoriID], [KategoriAdi]) VALUES (1, N'SWEATSHIRT')
INSERT [dbo].[Kategori] ([KategoriID], [KategoriAdi]) VALUES (2, N'PANTOLON')
INSERT [dbo].[Kategori] ([KategoriID], [KategoriAdi]) VALUES (3, N'ELBİSE')
SET IDENTITY_INSERT [dbo].[Kategori] OFF
GO
SET IDENTITY_INSERT [dbo].[Musteriler] ON 

INSERT [dbo].[Musteriler] ([MusteriID], [MusteriAdi], [MusteriSoyadi], [KullaniciAdi], [Sifre], [Adres], [Eposta], [Telno]) VALUES (2, N'mehmet', N'cantemir', N'Ca', N'1234', N'istanbul', N'memo@gmail.com', N'02314142141')
INSERT [dbo].[Musteriler] ([MusteriID], [MusteriAdi], [MusteriSoyadi], [KullaniciAdi], [Sifre], [Adres], [Eposta], [Telno]) VALUES (3, N'çağla', N'şilak', N'çş', N'1234', N'istanbul', N'cagla@gmail.com', N'02314142141')
INSERT [dbo].[Musteriler] ([MusteriID], [MusteriAdi], [MusteriSoyadi], [KullaniciAdi], [Sifre], [Adres], [Eposta], [Telno]) VALUES (4, N'yasin', N'yılmaz', N'yy', N'1234', N'istanbul', N'yasin@gmail.com', N'02314142141')
INSERT [dbo].[Musteriler] ([MusteriID], [MusteriAdi], [MusteriSoyadi], [KullaniciAdi], [Sifre], [Adres], [Eposta], [Telno]) VALUES (5, N'KAZIM', N'KARABEKİR', N'KK', N'1234', N'FINDIKLI', N'kk@gmail.com', N'12321421421')
INSERT [dbo].[Musteriler] ([MusteriID], [MusteriAdi], [MusteriSoyadi], [KullaniciAdi], [Sifre], [Adres], [Eposta], [Telno]) VALUES (7, N'asd', N'asdd', N'asd', N'asd', N'asd', N'asd', N'123')
SET IDENTITY_INSERT [dbo].[Musteriler] OFF
GO
SET IDENTITY_INSERT [dbo].[OdemeTurleri] ON 

INSERT [dbo].[OdemeTurleri] ([OdemeTuruID], [OdemeTuruAdi]) VALUES (1, N'HAVALE')
INSERT [dbo].[OdemeTurleri] ([OdemeTuruID], [OdemeTuruAdi]) VALUES (3, N'KREDİ KARTI')
INSERT [dbo].[OdemeTurleri] ([OdemeTuruID], [OdemeTuruAdi]) VALUES (2, N'NAKİT')
SET IDENTITY_INSERT [dbo].[OdemeTurleri] OFF
GO
SET IDENTITY_INSERT [dbo].[Personel] ON 

INSERT [dbo].[Personel] ([PersonelID], [KullaniciAdi], [Sifre]) VALUES (1, N'memo', N'1234')
SET IDENTITY_INSERT [dbo].[Personel] OFF
GO
SET IDENTITY_INSERT [dbo].[Siparisler] ON 

INSERT [dbo].[Siparisler] ([SiparisID], [Miktar], [ToplamFiyat], [MusteriID], [UrunID]) VALUES (3, 1, CAST(1000 AS Decimal(18, 0)), 3, 2)
SET IDENTITY_INSERT [dbo].[Siparisler] OFF
GO
SET IDENTITY_INSERT [dbo].[Urunler] ON 

INSERT [dbo].[Urunler] ([UrunID], [UrunAdi], [UrunAciklamasi], [Fiyat], [Stok], [KategoriID], [RenkID]) VALUES (1, N'Kısa Kollu Elbise', N'yazlık', 700.0000, 10, 3, 2)
INSERT [dbo].[Urunler] ([UrunID], [UrunAdi], [UrunAciklamasi], [Fiyat], [Stok], [KategoriID], [RenkID]) VALUES (2, N'Uzun Kollu elbise', N'kışlık', 1000.0000, 5, 3, 1)
INSERT [dbo].[Urunler] ([UrunID], [UrunAdi], [UrunAciklamasi], [Fiyat], [Stok], [KategoriID], [RenkID]) VALUES (4, N'şapkalo sweatshirt', N'kışlık', 400.0000, 30, 1, 3)
INSERT [dbo].[Urunler] ([UrunID], [UrunAdi], [UrunAciklamasi], [Fiyat], [Stok], [KategoriID], [RenkID]) VALUES (5, N'KOT PANTOLON', N'KISLIK', 200.0000, 20, 2, 1)
INSERT [dbo].[Urunler] ([UrunID], [UrunAdi], [UrunAciklamasi], [Fiyat], [Stok], [KategoriID], [RenkID]) VALUES (6, N'KADİFE', N'KISLIK', 200.0000, 20, 2, 1)
INSERT [dbo].[Urunler] ([UrunID], [UrunAdi], [UrunAciklamasi], [Fiyat], [Stok], [KategoriID], [RenkID]) VALUES (7, N'ŞAPKASIZ SWITSHIRT', N'Kışlık', 500.0000, 40, 1, 5)
INSERT [dbo].[Urunler] ([UrunID], [UrunAdi], [UrunAciklamasi], [Fiyat], [Stok], [KategoriID], [RenkID]) VALUES (8, N' SWITSHIRT', N'Kışlık', 500.0000, 40, 1, 5)
INSERT [dbo].[Urunler] ([UrunID], [UrunAdi], [UrunAciklamasi], [Fiyat], [Stok], [KategoriID], [RenkID]) VALUES (9, N' siyah elbise', N'düğünlük', 500.0000, 40, 1, 5)
SET IDENTITY_INSERT [dbo].[Urunler] OFF
GO
SET IDENTITY_INSERT [dbo].[UrunRenkleri] ON 

INSERT [dbo].[UrunRenkleri] ([RenkID], [RenkAdi]) VALUES (1, N'Siyah')
INSERT [dbo].[UrunRenkleri] ([RenkID], [RenkAdi]) VALUES (2, N'beyaz')
INSERT [dbo].[UrunRenkleri] ([RenkID], [RenkAdi]) VALUES (3, N'sarı')
INSERT [dbo].[UrunRenkleri] ([RenkID], [RenkAdi]) VALUES (4, N'kırmızı')
INSERT [dbo].[UrunRenkleri] ([RenkID], [RenkAdi]) VALUES (5, N'kahverengi')
SET IDENTITY_INSERT [dbo].[UrunRenkleri] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__OdemeTur__A2CF89A323132707]    Script Date: 25.12.2023 10:51:21 ******/
ALTER TABLE [dbo].[OdemeTurleri] ADD UNIQUE NONCLUSTERED 
(
	[OdemeTuruAdi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Kargo]  WITH CHECK ADD FOREIGN KEY([SiparisID])
REFERENCES [dbo].[Siparisler] ([SiparisID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Odeme]  WITH CHECK ADD FOREIGN KEY([OdemeTuruID])
REFERENCES [dbo].[OdemeTurleri] ([OdemeTuruID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Odeme]  WITH CHECK ADD FOREIGN KEY([SiparisID])
REFERENCES [dbo].[Siparisler] ([SiparisID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SilinenUrunler]  WITH CHECK ADD FOREIGN KEY([AdminID])
REFERENCES [dbo].[Adminler] ([AdminID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Siparisler]  WITH CHECK ADD FOREIGN KEY([MusteriID])
REFERENCES [dbo].[Musteriler] ([MusteriID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Siparisler]  WITH CHECK ADD FOREIGN KEY([UrunID])
REFERENCES [dbo].[Urunler] ([UrunID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Urunler]  WITH CHECK ADD FOREIGN KEY([KategoriID])
REFERENCES [dbo].[Kategori] ([KategoriID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Urunler]  WITH CHECK ADD FOREIGN KEY([RenkID])
REFERENCES [dbo].[UrunRenkleri] ([RenkID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Kargo]  WITH CHECK ADD CHECK  (([KargoDurumu]='TESLİM EDİLDİ' OR [KargoDurumu]='DAGITIMDA' OR [KargoDurumu]='MERKEZDE' OR [KargoDurumu]='ALINDI'))
GO
/****** Object:  StoredProcedure [dbo].[BackupAl]    Script Date: 25.12.2023 10:51:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BackupAl]
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @BackupPath NVARCHAR(255)
    SET @BackupPath = 'C:\Users\mehme\Desktop\yedek.bak'

    DECLARE @DatabaseName NVARCHAR(255)
    SET @DatabaseName = 'OnlineAlisveriVT2'

    DECLARE @BackupStatement NVARCHAR(MAX)
    SET @BackupStatement = 'BACKUP DATABASE [' + @DatabaseName + '] TO DISK =''' + @BackupPath + ''''

  
    EXEC sp_executesql @BackupStatement

 

END
GO
/****** Object:  StoredProcedure [dbo].[elbiseListele]    Script Date: 25.12.2023 10:51:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[elbiseListele]
AS
BEGIN

SELECT UrunAdi,UrunAciklamasi,Fiyat,Stok,KategoriID,RenkID
FROM Urunler 
WHERE KategoriID = 3

END
GO
/****** Object:  StoredProcedure [dbo].[FiyataGöreAra]    Script Date: 25.12.2023 10:51:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[FiyataGöreAra]
	@para money
AS
BEGIN

SELECT * FROM Urunler
WHERE Fiyat<@para

END
GO
/****** Object:  StoredProcedure [dbo].[FiyataGöreAra1]    Script Date: 25.12.2023 10:51:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[FiyataGöreAra1]
	@para money
AS
BEGIN

SELECT * FROM Urunler
WHERE Fiyat>@para

END
GO
/****** Object:  StoredProcedure [dbo].[GetKategoriIDByAdi]    Script Date: 25.12.2023 10:51:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetKategoriIDByAdi]
    @KategoriAdi NVARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT KategoriID
    FROM Kategori
    WHERE KategoriAdi = @KategoriAdi;
END
GO
/****** Object:  StoredProcedure [dbo].[GetRenkIDByAdi]    Script Date: 25.12.2023 10:51:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetRenkIDByAdi]
    @RenkAdi NVARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT RenkID
    FROM urunRenkleri
    WHERE renkAdi = @RenkAdi;
END
GO
/****** Object:  StoredProcedure [dbo].[GetUrunlerByKategoriID]    Script Date: 25.12.2023 10:51:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetUrunlerByKategoriID]
    @KategoriID INT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT *
    FROM Urunler
    WHERE KategoriID = @KategoriID;
END

GO
/****** Object:  StoredProcedure [dbo].[GetUrunlerByRenkID]    Script Date: 25.12.2023 10:51:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetUrunlerByRenkID]
    @RenkID INT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT *
    FROM urunler
    WHERE RenkID = @RenkID;
END
GO
/****** Object:  StoredProcedure [dbo].[kargoListele]    Script Date: 25.12.2023 10:51:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[kargoListele]
AS
BEGIN

SELECT SiparisID,KargoTarihi,KargoDurumu,TeslimatAdresi
FROM Kargo 
WHERE KargoID = 6

END


select * from Kargo
GO
/****** Object:  StoredProcedure [dbo].[MusteriAdiAra]    Script Date: 25.12.2023 10:51:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[MusteriAdiAra]

	@musteriAdi varchar
AS
BEGIN

SELECT * FROM Musteriler
WHERE MusteriAdi=@musteriAdi

END
GO
/****** Object:  StoredProcedure [dbo].[MusteriAdiSoyadiAdres]    Script Date: 25.12.2023 10:51:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[MusteriAdiSoyadiAdres]

	@kullaniciAdi varchar
AS
BEGIN

SELECT MusteriAdi , MusteriSoyadi ,Adres FROM Musteriler
WHERE KullaniciAdi=@kullaniciAdi

END


select * from Adminler
GO
/****** Object:  StoredProcedure [dbo].[MusteriEkle]    Script Date: 25.12.2023 10:51:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[MusteriEkle]
	@adi varchar (20),
	@soyadi varchar(20),
	@kullaniciadi varchar(20),
	@sifre varchar(20),
	@adres varchar(20),
	@eposta varchar(20),
	@telefon varchar(20)
AS
BEGIN

INSERT INTO Musteriler(MusteriAdi,MusteriSoyadi,KullaniciAdi,Sifre,Adres,Eposta,Telno)
VALUES
	(@adi,@soyadi,@kullaniciadi,@sifre,@adres,@eposta,@telefon)

END
GO
/****** Object:  StoredProcedure [dbo].[MusteriIDBul]    Script Date: 25.12.2023 10:51:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[MusteriIDBul]

	@kullaniciAdi varchar(20)
AS
BEGIN

SELECT MusteriID FROM Musteriler
WHERE KullaniciAdi=@kullaniciAdi

END
GO
/****** Object:  StoredProcedure [dbo].[MusteriListele]    Script Date: 25.12.2023 10:51:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[MusteriListele]
AS
BEGIN
    SELECT * FROM Musteriler;
END;
GO
/****** Object:  StoredProcedure [dbo].[MusteriSil]    Script Date: 25.12.2023 10:51:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[MusteriSil]

	@musteriKullaniciID int
AS
BEGIN

DELETE  FROM Musteriler
WHERE MusteriID=@musteriKullaniciID

END
GO
/****** Object:  StoredProcedure [dbo].[pantolonListele]    Script Date: 25.12.2023 10:51:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pantolonListele]
AS
BEGIN

SELECT UrunAdi,UrunAciklamasi,Fiyat,Stok,KategoriID,RenkID
FROM Urunler 
WHERE KategoriID = 2

END
GO
/****** Object:  StoredProcedure [dbo].[PersonelEkle]    Script Date: 25.12.2023 10:51:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PersonelEkle]
	@kullaniciAdi varchar (20),
	@sifre varchar(20)
AS
BEGIN

INSERT INTO Personel(KullaniciAdi,Sifre)
VALUES
	(@kullaniciAdi,@sifre)

END
GO
/****** Object:  StoredProcedure [dbo].[RenkliUrun]    Script Date: 25.12.2023 10:51:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[RenkliUrun]
	@renk varchar(15)
AS
BEGIN

SELECT * FROM Urunler
WHERE RenkId IN(SELECT RenkID 
FROM UrunRenkleri 
WHERE RenkAdi=@renk)

END
GO
/****** Object:  StoredProcedure [dbo].[SilinenMusteriListele]    Script Date: 25.12.2023 10:51:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SilinenMusteriListele]
AS
BEGIN
    SELECT * FROM SilinenMusteri;
END;
GO
/****** Object:  StoredProcedure [dbo].[SilinenUrunListele]    Script Date: 25.12.2023 10:51:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SilinenUrunListele]


AS
BEGIN

SELECT * FROM SilinenUrunler

END
GO
/****** Object:  StoredProcedure [dbo].[SiparisEkle]    Script Date: 25.12.2023 10:51:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SiparisEkle]
	@miktar int ,
	@urunFiyati int,
	@musteriID int,
	@urunID int
AS
BEGIN

INSERT INTO Siparisler(Miktar,ToplamFiyat,MusteriID,UrunID)
VALUES
	(@miktar, @urunFiyati*@miktar ,@musteriID,@urunID)
END
GO
/****** Object:  StoredProcedure [dbo].[SiparisEkleme]    Script Date: 25.12.2023 10:51:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SiparisEkleme]
	@miktar int ,
	@fiyat decimal,
	@musteriID int,
	@urunID int
AS
BEGIN

INSERT INTO Siparisler(Miktar,ToplamFiyat,MusteriID,UrunID)
VALUES
	(@miktar,@fiyat,@musteriID,@urunID)
END
GO
/****** Object:  StoredProcedure [dbo].[SiparisListele]    Script Date: 25.12.2023 10:51:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SiparisListele]


AS
BEGIN

SELECT SiparisID , Miktar,ToplamFiyat FROM Siparisler

END
GO
/****** Object:  StoredProcedure [dbo].[sweatshirtListele]    Script Date: 25.12.2023 10:51:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sweatshirtListele]
AS
BEGIN

SELECT UrunID,UrunAdi,UrunAciklamasi,Fiyat,Stok,KategoriID,RenkID
FROM Urunler 
WHERE KategoriID = 1

END
GO
/****** Object:  StoredProcedure [dbo].[UrunEkle]    Script Date: 25.12.2023 10:51:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UrunEkle]
	@urunAdi varchar (20),
	@urunAciklamasi varchar(20),
	@fiyat int,
	@kategori int,
	@renk int
AS
BEGIN

INSERT INTO Urunler(UrunAdi,UrunAciklamasi,Fiyat,KategoriID,RenkID)
VALUES
	(@urunAdi,@urunAciklamasi,@fiyat,@kategori,@renk)

END
GO
/****** Object:  StoredProcedure [dbo].[UrunGuncelle]    Script Date: 25.12.2023 10:51:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UrunGuncelle]
	@urunID int,
	@urunAdi varchar,
	@urunAciklamasi varchar,
	@fiyat int,
	@kategori int,
	@renk int
AS
BEGIN

UPDATE Urunler
SET 
	UrunAdi=@urunAdi,
	UrunAciklamasi=@urunAciklamasi,
	Fiyat=@fiyat,
	KategoriID=@kategori,
	RenkID=@renk
	
	WHERE
	UrunID=@urunID;


END
GO
/****** Object:  StoredProcedure [dbo].[UrunListele]    Script Date: 25.12.2023 10:51:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UrunListele]


AS
BEGIN

SELECT * FROM Urunler

END
GO
/****** Object:  StoredProcedure [dbo].[UrunSil]    Script Date: 25.12.2023 10:51:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UrunSil]

	@urunKodu int
AS
BEGIN

DELETE  FROM Urunler
WHERE UrunID=@urunKodu 

END
GO
/****** Object:  StoredProcedure [dbo].[usp_BackupDatabase]    Script Date: 25.12.2023 10:51:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_BackupDatabase]
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @BackupPath NVARCHAR(255)
    SET @BackupPath = 'C:\Users\yasin\yedek.bak'

    DECLARE @DatabaseName NVARCHAR(255)
    SET @DatabaseName = 'OnlineAlisveriVT2'

    DECLARE @BackupStatement NVARCHAR(MAX)
    SET @BackupStatement = 'BACKUP DATABASE [' + @DatabaseName + '] TO DISK =''' + @BackupPath + ''''

    -- Backup işlemini gerçekleştir
    EXEC sp_executesql @BackupStatement
END
GO
USE [master]
GO
ALTER DATABASE [OnlineAlisveriVT2] SET  READ_WRITE 
GO
