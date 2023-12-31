USE [master]
GO
/****** Object:  Database [Kuruyemis]    Script Date: 5.01.2023 12:41:11 ******/
CREATE DATABASE [Kuruyemis]

USE [Kuruyemis]
GO
/****** Object:  Table [dbo].[Araba]    Script Date: 5.01.2023 12:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Araba](
	[ArabaPlaka] [nchar](10) NOT NULL,
 CONSTRAINT [PKAraba] PRIMARY KEY CLUSTERED 
(
	[ArabaPlaka] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Calisanlar]    Script Date: 5.01.2023 12:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Calisanlar](
	[CalisanlarID] [int] NOT NULL,
	[CalisanlarAdi] [nchar](50) NULL,
	[CalisanlarTel] [bigint] NOT NULL,
	[Pozisyon] [nchar](50) NULL,
 CONSTRAINT [PKCalisanlar] PRIMARY KEY CLUSTERED 
(
	[CalisanlarID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Depo]    Script Date: 5.01.2023 12:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Depo](
	[DepoID] [int] NOT NULL,
	[DepoAdi] [nchar](50) NULL,
	[DepoAdres] [nchar](200) NULL,
	[TedarikciID] [int] NOT NULL,
 CONSTRAINT [PKDepo] PRIMARY KEY CLUSTERED 
(
	[DepoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kasiyer]    Script Date: 5.01.2023 12:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kasiyer](
	[KasiyerID] [int] NOT NULL,
	[MusteriID] [int] NOT NULL,
 CONSTRAINT [PKKasiyer] PRIMARY KEY CLUSTERED 
(
	[KasiyerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kurye]    Script Date: 5.01.2023 12:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kurye](
	[KuryeID] [int] NOT NULL,
	[MotorPlaka] [nchar](10) NOT NULL,
	[SiparisNo] [int] NOT NULL,
 CONSTRAINT [PKKurye] PRIMARY KEY CLUSTERED 
(
	[KuryeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Motor]    Script Date: 5.01.2023 12:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Motor](
	[MotorPlaka] [nchar](10) NOT NULL,
 CONSTRAINT [PKMotor] PRIMARY KEY CLUSTERED 
(
	[MotorPlaka] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Musteri]    Script Date: 5.01.2023 12:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Musteri](
	[MusteriID] [int] NOT NULL,
	[MusteriAdi] [nchar](50) NULL,
	[MusteriTel] [bigint] NOT NULL,
	[SiparisNo] [int] NOT NULL,
 CONSTRAINT [PKMusteri] PRIMARY KEY CLUSTERED 
(
	[MusteriID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Satis]    Script Date: 5.01.2023 12:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Satis](
	[SatisID] [int] NOT NULL,
	[SatisTarih] [date] NULL,
	[SubeID] [int] NOT NULL,
 CONSTRAINT [PKSatis] PRIMARY KEY CLUSTERED 
(
	[SatisID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Siparis]    Script Date: 5.01.2023 12:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Siparis](
	[SiparisNo] [int] NOT NULL,
	[SiparisAdres] [nchar](200) NULL,
	[SiparisTutar] [smallmoney] NULL,
	[SiparisTarih] [date] NULL,
	[UrunID] [int] NOT NULL,
 CONSTRAINT [PKSiparis] PRIMARY KEY CLUSTERED 
(
	[SiparisNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sofor]    Script Date: 5.01.2023 12:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sofor](
	[SoforID] [int] NOT NULL,
	[DepoID] [int] NOT NULL,
	[SubeID] [int] NOT NULL,
	[ArabaPlaka] [nchar](10) NOT NULL,
 CONSTRAINT [PKSofor] PRIMARY KEY CLUSTERED 
(
	[SoforID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stok]    Script Date: 5.01.2023 12:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stok](
	[StokKodu] [int] NOT NULL,
	[MiktarKg] [int] NULL,
	[DepoID] [int] NOT NULL,
 CONSTRAINT [PKStok] PRIMARY KEY CLUSTERED 
(
	[StokKodu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sube]    Script Date: 5.01.2023 12:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sube](
	[SubeID] [int] NOT NULL,
	[SubeAdi] [nchar](50) NULL,
	[SubeAdres] [nchar](200) NULL,
	[SoforID] [int] NOT NULL,
	[KasiyerID] [int] NOT NULL,
 CONSTRAINT [PKSube] PRIMARY KEY CLUSTERED 
(
	[SubeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tasit]    Script Date: 5.01.2023 12:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tasit](
	[TasitPlaka] [nchar](10) NOT NULL,
	[TasitAdi] [nchar](20) NULL,
	[TasitSegment] [nchar](3) NULL,
	[TasitModel] [nchar](100) NULL,
 CONSTRAINT [PKTasit] PRIMARY KEY CLUSTERED 
(
	[TasitPlaka] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tedarikci]    Script Date: 5.01.2023 12:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tedarikci](
	[TedarikciID] [int] NOT NULL,
	[TedarikciAdi] [nchar](50) NULL,
	[TedarikciAdres] [nchar](200) NULL,
 CONSTRAINT [PKTedarikci] PRIMARY KEY CLUSTERED 
(
	[TedarikciID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Urun]    Script Date: 5.01.2023 12:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Urun](
	[UrunID] [int] NOT NULL,
	[UrunAdi] [nchar](50) NULL,
	[UrunFiyat] [smallmoney] NULL,
 CONSTRAINT [PKUrun] PRIMARY KEY CLUSTERED 
(
	[UrunID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Araba] ([ArabaPlaka]) VALUES (N'34 CM 958 ')
INSERT [dbo].[Araba] ([ArabaPlaka]) VALUES (N'34 EA 747 ')
INSERT [dbo].[Araba] ([ArabaPlaka]) VALUES (N'34 EV 211 ')
INSERT [dbo].[Araba] ([ArabaPlaka]) VALUES (N'34 F 432  ')
INSERT [dbo].[Araba] ([ArabaPlaka]) VALUES (N'34 GT 8945')
INSERT [dbo].[Araba] ([ArabaPlaka]) VALUES (N'34 KF 142 ')
INSERT [dbo].[Araba] ([ArabaPlaka]) VALUES (N'34 LK 416 ')
INSERT [dbo].[Araba] ([ArabaPlaka]) VALUES (N'34 M 214  ')
INSERT [dbo].[Araba] ([ArabaPlaka]) VALUES (N'34 V 769  ')
INSERT [dbo].[Araba] ([ArabaPlaka]) VALUES (N'34 VA 1011')
GO
INSERT [dbo].[Calisanlar] ([CalisanlarID], [CalisanlarAdi], [CalisanlarTel], [Pozisyon]) VALUES (1001001, N'HÜLYA ÖNAL                                        ', 5505107095, N'Kasiyer                                           ')
INSERT [dbo].[Calisanlar] ([CalisanlarID], [CalisanlarAdi], [CalisanlarTel], [Pozisyon]) VALUES (1001002, N'ERHAN HÜSEYİN GÜNBEY                              ', 5456885132, N'Kasiyer                                           ')
INSERT [dbo].[Calisanlar] ([CalisanlarID], [CalisanlarAdi], [CalisanlarTel], [Pozisyon]) VALUES (1001003, N'ERCAN KARACAN                                     ', 5377655510, N'Kasiyer                                           ')
INSERT [dbo].[Calisanlar] ([CalisanlarID], [CalisanlarAdi], [CalisanlarTel], [Pozisyon]) VALUES (1001004, N'SALMAN ÖNER                                       ', 5896661566, N'Kasiyer                                           ')
INSERT [dbo].[Calisanlar] ([CalisanlarID], [CalisanlarAdi], [CalisanlarTel], [Pozisyon]) VALUES (1001005, N'ZEMZEM AKİ                                        ', 5051476151, N'Kasiyer                                           ')
INSERT [dbo].[Calisanlar] ([CalisanlarID], [CalisanlarAdi], [CalisanlarTel], [Pozisyon]) VALUES (1001006, N'ÖZTAN OĞUZSOY                                     ', 5505107095, N'Kasiyer                                           ')
INSERT [dbo].[Calisanlar] ([CalisanlarID], [CalisanlarAdi], [CalisanlarTel], [Pozisyon]) VALUES (1001007, N'İSMAİL PİRİM                                      ', 5512333334, N'Kasiyer                                           ')
INSERT [dbo].[Calisanlar] ([CalisanlarID], [CalisanlarAdi], [CalisanlarTel], [Pozisyon]) VALUES (1001008, N'ELİFCAN ŞEKERLER                                  ', 5344478777, N'Kasiyer                                           ')
INSERT [dbo].[Calisanlar] ([CalisanlarID], [CalisanlarAdi], [CalisanlarTel], [Pozisyon]) VALUES (1001009, N'ATA KASKALAN                                      ', 8502221222, N'Kasiyer                                           ')
INSERT [dbo].[Calisanlar] ([CalisanlarID], [CalisanlarAdi], [CalisanlarTel], [Pozisyon]) VALUES (1001010, N'LAL TOKSARI                                       ', 5318549404, N'Kasiyer                                           ')
INSERT [dbo].[Calisanlar] ([CalisanlarID], [CalisanlarAdi], [CalisanlarTel], [Pozisyon]) VALUES (1001101, N'NURHAN ÇİLOĞLU                                    ', 5505557096, N'Kurye                                             ')
INSERT [dbo].[Calisanlar] ([CalisanlarID], [CalisanlarAdi], [CalisanlarTel], [Pozisyon]) VALUES (1001102, N'ŞUEDA KILBACAK                                    ', 5454565133, N'Kurye                                             ')
INSERT [dbo].[Calisanlar] ([CalisanlarID], [CalisanlarAdi], [CalisanlarTel], [Pozisyon]) VALUES (1001103, N'OSMAN ERSEGUN AKSÖYEK                             ', 5378455511, N'Kurye                                             ')
INSERT [dbo].[Calisanlar] ([CalisanlarID], [CalisanlarAdi], [CalisanlarTel], [Pozisyon]) VALUES (1001104, N'EBUBEKİR ONUR YÜCETÜRK                            ', 5896951566, N'Kurye                                             ')
INSERT [dbo].[Calisanlar] ([CalisanlarID], [CalisanlarAdi], [CalisanlarTel], [Pozisyon]) VALUES (1001105, N'CUNDULLAH BAŞYİĞİT                                ', 5053216151, N'Kurye                                             ')
INSERT [dbo].[Calisanlar] ([CalisanlarID], [CalisanlarAdi], [CalisanlarTel], [Pozisyon]) VALUES (1001106, N'TAHACAN BÜYÜKTAŞ                                  ', 5504887096, N'Kurye                                             ')
INSERT [dbo].[Calisanlar] ([CalisanlarID], [CalisanlarAdi], [CalisanlarTel], [Pozisyon]) VALUES (1001107, N'VELAT KAYAN                                       ', 5510103335, N'Kurye                                             ')
INSERT [dbo].[Calisanlar] ([CalisanlarID], [CalisanlarAdi], [CalisanlarTel], [Pozisyon]) VALUES (1001108, N'NEJDET ARIKBOĞA                                   ', 5349988778, N'Kurye                                             ')
INSERT [dbo].[Calisanlar] ([CalisanlarID], [CalisanlarAdi], [CalisanlarTel], [Pozisyon]) VALUES (1001109, N'RAŞAN ŞEN TANRIKULU                               ', 5507351223, N'Kurye                                             ')
INSERT [dbo].[Calisanlar] ([CalisanlarID], [CalisanlarAdi], [CalisanlarTel], [Pozisyon]) VALUES (1001110, N'RESUL SINICI                                      ', 5311959405, N'Kurye                                             ')
INSERT [dbo].[Calisanlar] ([CalisanlarID], [CalisanlarAdi], [CalisanlarTel], [Pozisyon]) VALUES (1001201, N'ESMERALDA AY GÜNEY                                ', 5505107097, N'Sofor                                             ')
INSERT [dbo].[Calisanlar] ([CalisanlarID], [CalisanlarAdi], [CalisanlarTel], [Pozisyon]) VALUES (1001202, N'ESRA NUR SEYMEN                                   ', 5454105134, N'Sofor                                             ')
INSERT [dbo].[Calisanlar] ([CalisanlarID], [CalisanlarAdi], [CalisanlarTel], [Pozisyon]) VALUES (1001203, N'ŞİFA MADAK                                        ', 5378410512, N'Sofor                                             ')
INSERT [dbo].[Calisanlar] ([CalisanlarID], [CalisanlarAdi], [CalisanlarTel], [Pozisyon]) VALUES (1001204, N'FATMA DUYGU KAVAK                                 ', 5896900567, N'Sofor                                             ')
INSERT [dbo].[Calisanlar] ([CalisanlarID], [CalisanlarAdi], [CalisanlarTel], [Pozisyon]) VALUES (1001205, N'SEYFİ CEM YEŞİLDAĞER                              ', 5053200152, N'Sofor                                             ')
INSERT [dbo].[Calisanlar] ([CalisanlarID], [CalisanlarAdi], [CalisanlarTel], [Pozisyon]) VALUES (1001206, N'FARUK KUŞTİMUR                                    ', 5504800097, N'Sofor                                             ')
INSERT [dbo].[Calisanlar] ([CalisanlarID], [CalisanlarAdi], [CalisanlarTel], [Pozisyon]) VALUES (1001207, N'GÜLİSTAN AKSÖZ                                    ', 5510199336, N'Sofor                                             ')
INSERT [dbo].[Calisanlar] ([CalisanlarID], [CalisanlarAdi], [CalisanlarTel], [Pozisyon]) VALUES (1001208, N'NAFİYE ÖKSÜZOĞLU                                  ', 5349988779, N'Sofor                                             ')
INSERT [dbo].[Calisanlar] ([CalisanlarID], [CalisanlarAdi], [CalisanlarTel], [Pozisyon]) VALUES (1001209, N'ÖZGÜR SİNAN KHALİL                                ', 5507377224, N'Sofor                                             ')
INSERT [dbo].[Calisanlar] ([CalisanlarID], [CalisanlarAdi], [CalisanlarTel], [Pozisyon]) VALUES (1001210, N'SAİD ÖNAL                                         ', 5311955406, N'Sofor                                             ')
GO
INSERT [dbo].[Depo] ([DepoID], [DepoAdi], [DepoAdres], [TedarikciID]) VALUES (101, N'İstanbul Depo                                     ', N'Boyaci Köyü,22, 19702, Mecitözü/ İstanbul, Turkey                                                                                                                                                       ', 1)
INSERT [dbo].[Depo] ([DepoID], [DepoAdi], [DepoAdres], [TedarikciID]) VALUES (102, N'Ankara Depo                                       ', N'Sakizlar,10, 37752, Azdavay/ Ankara, Turkey                                                                                                                                                             ', 3)
INSERT [dbo].[Depo] ([DepoID], [DepoAdi], [DepoAdres], [TedarikciID]) VALUES (103, N'Bursa Depo                                        ', N'Görentepe,18, 21640, Silvan/ Bursa, Turkey                                                                                                                                                              ', 3)
INSERT [dbo].[Depo] ([DepoID], [DepoAdi], [DepoAdres], [TedarikciID]) VALUES (104, N'Antalya Depo                                      ', N'Mukamlar Köyü,9, 14902, Kaş/ Antalya, Turkey                                                                                                                                                            ', 2)
INSERT [dbo].[Depo] ([DepoID], [DepoAdi], [DepoAdres], [TedarikciID]) VALUES (105, N'İzmir Depo                                        ', N'Hicim Baba,35, 50000, Merkez/ İzmir, Turkey                                                                                                                                                             ', 5)
INSERT [dbo].[Depo] ([DepoID], [DepoAdi], [DepoAdres], [TedarikciID]) VALUES (106, N'Adana Depo                                        ', N'Kirkişla,10, 42850, Cihanbeyli/ Adana, Turkey                                                                                                                                                           ', 4)
GO
INSERT [dbo].[Kasiyer] ([KasiyerID], [MusteriID]) VALUES (1001001, 10000001)
INSERT [dbo].[Kasiyer] ([KasiyerID], [MusteriID]) VALUES (1001002, 10000001)
INSERT [dbo].[Kasiyer] ([KasiyerID], [MusteriID]) VALUES (1001003, 10000002)
INSERT [dbo].[Kasiyer] ([KasiyerID], [MusteriID]) VALUES (1001004, 10000002)
INSERT [dbo].[Kasiyer] ([KasiyerID], [MusteriID]) VALUES (1001005, 10000003)
INSERT [dbo].[Kasiyer] ([KasiyerID], [MusteriID]) VALUES (1001006, 10000003)
INSERT [dbo].[Kasiyer] ([KasiyerID], [MusteriID]) VALUES (1001007, 10000004)
INSERT [dbo].[Kasiyer] ([KasiyerID], [MusteriID]) VALUES (1001008, 10000004)
INSERT [dbo].[Kasiyer] ([KasiyerID], [MusteriID]) VALUES (1001009, 10000005)
INSERT [dbo].[Kasiyer] ([KasiyerID], [MusteriID]) VALUES (1001010, 10000005)
GO
INSERT [dbo].[Kurye] ([KuryeID], [MotorPlaka], [SiparisNo]) VALUES (1001101, N'34 H 324  ', 42480)
INSERT [dbo].[Kurye] ([KuryeID], [MotorPlaka], [SiparisNo]) VALUES (1001102, N'34 GA 474 ', 32176)
INSERT [dbo].[Kurye] ([KuryeID], [MotorPlaka], [SiparisNo]) VALUES (1001103, N'34 FF 420 ', 51220)
INSERT [dbo].[Kurye] ([KuryeID], [MotorPlaka], [SiparisNo]) VALUES (1001104, N'34 BV 697 ', 71208)
INSERT [dbo].[Kurye] ([KuryeID], [MotorPlaka], [SiparisNo]) VALUES (1001105, N'34 BM 2147', 89784)
INSERT [dbo].[Kurye] ([KuryeID], [MotorPlaka], [SiparisNo]) VALUES (1001106, N'34 DEV 121', 65811)
INSERT [dbo].[Kurye] ([KuryeID], [MotorPlaka], [SiparisNo]) VALUES (1001107, N'34 NC 895 ', 82223)
INSERT [dbo].[Kurye] ([KuryeID], [MotorPlaka], [SiparisNo]) VALUES (1001108, N'34 KL 164 ', 85960)
INSERT [dbo].[Kurye] ([KuryeID], [MotorPlaka], [SiparisNo]) VALUES (1001109, N'34 EC 1010', 43100)
INSERT [dbo].[Kurye] ([KuryeID], [MotorPlaka], [SiparisNo]) VALUES (1001110, N'34 AE 4589', 15643)
GO
INSERT [dbo].[Motor] ([MotorPlaka]) VALUES (N'34 AE 4589')
INSERT [dbo].[Motor] ([MotorPlaka]) VALUES (N'34 BM 2147')
INSERT [dbo].[Motor] ([MotorPlaka]) VALUES (N'34 BV 697 ')
INSERT [dbo].[Motor] ([MotorPlaka]) VALUES (N'34 DEV 121')
INSERT [dbo].[Motor] ([MotorPlaka]) VALUES (N'34 EC 1010')
INSERT [dbo].[Motor] ([MotorPlaka]) VALUES (N'34 FF 420 ')
INSERT [dbo].[Motor] ([MotorPlaka]) VALUES (N'34 GA 474 ')
INSERT [dbo].[Motor] ([MotorPlaka]) VALUES (N'34 H 324  ')
INSERT [dbo].[Motor] ([MotorPlaka]) VALUES (N'34 KL 164 ')
INSERT [dbo].[Motor] ([MotorPlaka]) VALUES (N'34 NC 895 ')
GO
INSERT [dbo].[Musteri] ([MusteriID], [MusteriAdi], [MusteriTel], [SiparisNo]) VALUES (10000001, N'OLCAY BAŞAK ÖĞREDEN                               ', 5544900000, 42480)
INSERT [dbo].[Musteri] ([MusteriID], [MusteriAdi], [MusteriTel], [SiparisNo]) VALUES (10000002, N'ZARİFE GEZİCİ                                     ', 5544894500, 51220)
INSERT [dbo].[Musteri] ([MusteriID], [MusteriAdi], [MusteriTel], [SiparisNo]) VALUES (10000003, N'TOLGA SAKALLIOĞLU                                 ', 5319543999, 89784)
INSERT [dbo].[Musteri] ([MusteriID], [MusteriAdi], [MusteriTel], [SiparisNo]) VALUES (10000004, N'ŞADİYE SELİN ÜNALAN                               ', 5319540999, 85960)
INSERT [dbo].[Musteri] ([MusteriID], [MusteriAdi], [MusteriTel], [SiparisNo]) VALUES (10000005, N'ÖNER KETEN                                        ', 5319540000, 15643)
INSERT [dbo].[Musteri] ([MusteriID], [MusteriAdi], [MusteriTel], [SiparisNo]) VALUES (10000006, NULL, 5655444569, 15643)
GO
INSERT [dbo].[Satis] ([SatisID], [SatisTarih], [SubeID]) VALUES (15643, CAST(N'2022-03-27' AS Date), 1005)
INSERT [dbo].[Satis] ([SatisID], [SatisTarih], [SubeID]) VALUES (32176, CAST(N'2022-01-14' AS Date), 1001)
INSERT [dbo].[Satis] ([SatisID], [SatisTarih], [SubeID]) VALUES (42480, CAST(N'2022-04-27' AS Date), 1001)
INSERT [dbo].[Satis] ([SatisID], [SatisTarih], [SubeID]) VALUES (43100, CAST(N'2022-01-10' AS Date), 1005)
INSERT [dbo].[Satis] ([SatisID], [SatisTarih], [SubeID]) VALUES (51220, CAST(N'2022-01-14' AS Date), 1002)
INSERT [dbo].[Satis] ([SatisID], [SatisTarih], [SubeID]) VALUES (65811, CAST(N'2022-02-22' AS Date), 1003)
INSERT [dbo].[Satis] ([SatisID], [SatisTarih], [SubeID]) VALUES (71208, CAST(N'2022-03-19' AS Date), 1002)
INSERT [dbo].[Satis] ([SatisID], [SatisTarih], [SubeID]) VALUES (82223, CAST(N'2022-01-02' AS Date), 1004)
INSERT [dbo].[Satis] ([SatisID], [SatisTarih], [SubeID]) VALUES (85960, CAST(N'2022-02-17' AS Date), 1004)
INSERT [dbo].[Satis] ([SatisID], [SatisTarih], [SubeID]) VALUES (89784, CAST(N'2022-04-01' AS Date), 1003)
GO
INSERT [dbo].[Siparis] ([SiparisNo], [SiparisAdres], [SiparisTutar], [SiparisTarih], [UrunID]) VALUES (15643, N'Yalova İzmit Karayolu,1, 77602, Çiftlikköy/ Yalova, Türkiye                                                                                                                                             ', 200.9000, CAST(N'2022-03-27' AS Date), 120010)
INSERT [dbo].[Siparis] ([SiparisNo], [SiparisAdres], [SiparisTutar], [SiparisTarih], [UrunID]) VALUES (32176, N'Tabakhane,23, 16900, Yenişehir/ Bursa, Türkiye                                                                                                                                                          ', 335.9000, CAST(N'2022-01-14' AS Date), 120002)
INSERT [dbo].[Siparis] ([SiparisNo], [SiparisAdres], [SiparisTutar], [SiparisTarih], [UrunID]) VALUES (42480, N'Danişmantli,17, 67380, Ereğli/ Zonguldak, Türkiye                                                                                                                                                       ', 456.9500, CAST(N'2022-04-27' AS Date), 120001)
INSERT [dbo].[Siparis] ([SiparisNo], [SiparisAdres], [SiparisTutar], [SiparisTarih], [UrunID]) VALUES (43100, N'Gölyazı,22, 55600, Terme/ Samsun, Türkiye                                                                                                                                                               ', 345.9500, CAST(N'2022-01-10' AS Date), 120009)
INSERT [dbo].[Siparis] ([SiparisNo], [SiparisAdres], [SiparisTutar], [SiparisTarih], [UrunID]) VALUES (51220, N'Çayağzı Köyü,32, 57702, Durağan/ Sinop, Türkiye                                                                                                                                                         ', 747.0500, CAST(N'2022-01-15' AS Date), 120003)
INSERT [dbo].[Siparis] ([SiparisNo], [SiparisAdres], [SiparisTutar], [SiparisTarih], [UrunID]) VALUES (65811, N'Çerçili,34, 19502, Osmancık/ Çorum, Türkiye                                                                                                                                                             ', 560.9500, CAST(N'2022-02-22' AS Date), 120006)
INSERT [dbo].[Siparis] ([SiparisNo], [SiparisAdres], [SiparisTutar], [SiparisTarih], [UrunID]) VALUES (71208, N'Yaka,33, 9760, Bozdoğan/ Aydın, Türkiye                                                                                                                                                                 ', 306.0500, CAST(N'2022-03-19' AS Date), 120004)
INSERT [dbo].[Siparis] ([SiparisNo], [SiparisAdres], [SiparisTutar], [SiparisTarih], [UrunID]) VALUES (82223, N'Çeltiközü Köyü,25, 19902, Kargı/ Çorum, Türkiye                                                                                                                                                         ', 116.8500, CAST(N'2022-01-02' AS Date), 120007)
INSERT [dbo].[Siparis] ([SiparisNo], [SiparisAdres], [SiparisTutar], [SiparisTarih], [UrunID]) VALUES (85960, N'İnönü Mah.,35, 3911, Sultandağı/ Afyonkarahisar, Türkiye                                                                                                                                                ', 49.5500, CAST(N'2022-02-17' AS Date), 120008)
INSERT [dbo].[Siparis] ([SiparisNo], [SiparisAdres], [SiparisTutar], [SiparisTarih], [UrunID]) VALUES (89784, N'Demir Köyü,33, 24620, Kemaliye/ Erzincan, Türkiye                                                                                                                                                       ', 497.5000, CAST(N'2022-04-01' AS Date), 120005)
GO
INSERT [dbo].[Sofor] ([SoforID], [DepoID], [SubeID], [ArabaPlaka]) VALUES (1001201, 101, 1001, N'34 F 432  ')
INSERT [dbo].[Sofor] ([SoforID], [DepoID], [SubeID], [ArabaPlaka]) VALUES (1001202, 101, 1002, N'34 EA 747 ')
INSERT [dbo].[Sofor] ([SoforID], [DepoID], [SubeID], [ArabaPlaka]) VALUES (1001203, 102, 1002, N'34 KF 142 ')
INSERT [dbo].[Sofor] ([SoforID], [DepoID], [SubeID], [ArabaPlaka]) VALUES (1001204, 102, 1003, N'34 V 769  ')
INSERT [dbo].[Sofor] ([SoforID], [DepoID], [SubeID], [ArabaPlaka]) VALUES (1001205, 103, 1004, N'34 M 214  ')
INSERT [dbo].[Sofor] ([SoforID], [DepoID], [SubeID], [ArabaPlaka]) VALUES (1001206, 104, 1004, N'34 EV 211 ')
INSERT [dbo].[Sofor] ([SoforID], [DepoID], [SubeID], [ArabaPlaka]) VALUES (1001207, 105, 1005, N'34 CM 958 ')
INSERT [dbo].[Sofor] ([SoforID], [DepoID], [SubeID], [ArabaPlaka]) VALUES (1001208, 106, 1005, N'34 LK 416 ')
INSERT [dbo].[Sofor] ([SoforID], [DepoID], [SubeID], [ArabaPlaka]) VALUES (1001209, 106, 1005, N'34 VA 1011')
INSERT [dbo].[Sofor] ([SoforID], [DepoID], [SubeID], [ArabaPlaka]) VALUES (1001210, 106, 1005, N'34 GT 8945')
GO
INSERT [dbo].[Stok] ([StokKodu], [MiktarKg], [DepoID]) VALUES (120001, 10, 101)
INSERT [dbo].[Stok] ([StokKodu], [MiktarKg], [DepoID]) VALUES (120002, 20, 101)
INSERT [dbo].[Stok] ([StokKodu], [MiktarKg], [DepoID]) VALUES (120003, 30, 102)
INSERT [dbo].[Stok] ([StokKodu], [MiktarKg], [DepoID]) VALUES (120004, 40, 102)
INSERT [dbo].[Stok] ([StokKodu], [MiktarKg], [DepoID]) VALUES (120005, 10, 103)
INSERT [dbo].[Stok] ([StokKodu], [MiktarKg], [DepoID]) VALUES (120006, 60, 103)
INSERT [dbo].[Stok] ([StokKodu], [MiktarKg], [DepoID]) VALUES (120007, 40, 104)
INSERT [dbo].[Stok] ([StokKodu], [MiktarKg], [DepoID]) VALUES (120008, 100, 101)
INSERT [dbo].[Stok] ([StokKodu], [MiktarKg], [DepoID]) VALUES (120009, 40, 105)
INSERT [dbo].[Stok] ([StokKodu], [MiktarKg], [DepoID]) VALUES (120010, 30, 106)
INSERT [dbo].[Stok] ([StokKodu], [MiktarKg], [DepoID]) VALUES (120015, 30, 105)
INSERT [dbo].[Stok] ([StokKodu], [MiktarKg], [DepoID]) VALUES (120016, NULL, 105)
GO
INSERT [dbo].[Sube] ([SubeID], [SubeAdi], [SubeAdres], [SoforID], [KasiyerID]) VALUES (1001, N'Beylikdüzü Şubesi                                 ', N'Tatliçay,14, 8890, Beylikdüzü/Istanbul, Turkey                                                                                                                                                          ', 1001201, 1001001)
INSERT [dbo].[Sube] ([SubeID], [SubeAdi], [SubeAdres], [SoforID], [KasiyerID]) VALUES (1002, N'Esenyurt Şubesi                                   ', N'Dağseven,27, 65900, Esenyurt/Istanbul, Turkey                                                                                                                                                           ', 1001202, 1001002)
INSERT [dbo].[Sube] ([SubeID], [SubeAdi], [SubeAdres], [SoforID], [KasiyerID]) VALUES (1003, N'Avılar Şubesi                                     ', N'Konaközü Köyü,10, 58502, Avcılar/Istanbul, Turkey                                                                                                                                                       ', 1001203, 1001003)
INSERT [dbo].[Sube] ([SubeID], [SubeAdi], [SubeAdres], [SoforID], [KasiyerID]) VALUES (1004, N'Küçükçekmece Şubesi                               ', N'Barutçular,6, 20040, Küçükçekmece/Istanbul, Turkey                                                                                                                                                      ', 1001204, 1001004)
INSERT [dbo].[Sube] ([SubeID], [SubeAdi], [SubeAdres], [SoforID], [KasiyerID]) VALUES (1005, N'Başakşehir Şubesi                                 ', N'Doğuba,34, 29832, Başakşehir/Istanbul, Turkey                                                                                                                                                           ', 1001205, 1001005)
GO
INSERT [dbo].[Tasit] ([TasitPlaka], [TasitAdi], [TasitSegment], [TasitModel]) VALUES (N'34 AE 4589', N'Motor               ', N'A1 ', N'Mondial 125 Drıft L Cbs                                                                             ')
INSERT [dbo].[Tasit] ([TasitPlaka], [TasitAdi], [TasitSegment], [TasitModel]) VALUES (N'34 BM 2147', N'Motor               ', N'A1 ', N'ARORA MAX-T                                                                                         ')
INSERT [dbo].[Tasit] ([TasitPlaka], [TasitAdi], [TasitSegment], [TasitModel]) VALUES (N'34 BV 697 ', N'Motor               ', N'A2 ', N'Mondial Rx3i Evo                                                                                    ')
INSERT [dbo].[Tasit] ([TasitPlaka], [TasitAdi], [TasitSegment], [TasitModel]) VALUES (N'34 CM 958 ', N'Araba               ', N'C  ', N'Ford Trucks                                                                                         ')
INSERT [dbo].[Tasit] ([TasitPlaka], [TasitAdi], [TasitSegment], [TasitModel]) VALUES (N'34 DEV 121', N'Motor               ', N'A1 ', N'HERO YENİ NESİL DASH 125                                                                            ')
INSERT [dbo].[Tasit] ([TasitPlaka], [TasitAdi], [TasitSegment], [TasitModel]) VALUES (N'34 EA 747 ', N'Araba               ', N'D  ', N'Suzuki S-Cross                                                                                      ')
INSERT [dbo].[Tasit] ([TasitPlaka], [TasitAdi], [TasitSegment], [TasitModel]) VALUES (N'34 EC 1010', N'Motor               ', N'A  ', N'ARORA JAGUAR                                                                                        ')
INSERT [dbo].[Tasit] ([TasitPlaka], [TasitAdi], [TasitSegment], [TasitModel]) VALUES (N'34 EV 211 ', N'Araba               ', N'B  ', N'Iveco 70C50                                                                                         ')
INSERT [dbo].[Tasit] ([TasitPlaka], [TasitAdi], [TasitSegment], [TasitModel]) VALUES (N'34 F 432  ', N'Araba               ', N'B  ', N'Peugeot 308                                                                                         ')
INSERT [dbo].[Tasit] ([TasitPlaka], [TasitAdi], [TasitSegment], [TasitModel]) VALUES (N'34 FF 420 ', N'Motor               ', N'A  ', N'Kanuni Scooter Nev 50                                                                               ')
INSERT [dbo].[Tasit] ([TasitPlaka], [TasitAdi], [TasitSegment], [TasitModel]) VALUES (N'34 GA 474 ', N'Motor               ', N'A  ', N'Bajaj Pulsar NS 200 (Euro 4)                                                                        ')
INSERT [dbo].[Tasit] ([TasitPlaka], [TasitAdi], [TasitSegment], [TasitModel]) VALUES (N'34 GT 8945', N'Araba               ', N'B  ', N'Fiat Doblo Cargo                                                                                    ')
INSERT [dbo].[Tasit] ([TasitPlaka], [TasitAdi], [TasitSegment], [TasitModel]) VALUES (N'34 H 324  ', N'Motor               ', N'A1 ', N'Bajaj Dominar D 250                                                                                 ')
INSERT [dbo].[Tasit] ([TasitPlaka], [TasitAdi], [TasitSegment], [TasitModel]) VALUES (N'34 KF 142 ', N'Araba               ', N'B  ', N'Citroen C5 Aircross                                                                                 ')
INSERT [dbo].[Tasit] ([TasitPlaka], [TasitAdi], [TasitSegment], [TasitModel]) VALUES (N'34 KL 164 ', N'Motor               ', N'A  ', N'Rks Rt 250 Enduro                                                                                   ')
INSERT [dbo].[Tasit] ([TasitPlaka], [TasitAdi], [TasitSegment], [TasitModel]) VALUES (N'34 LK 416 ', N'Araba               ', N'C  ', N'Iveco C15                                                                                           ')
INSERT [dbo].[Tasit] ([TasitPlaka], [TasitAdi], [TasitSegment], [TasitModel]) VALUES (N'34 M 214  ', N'Araba               ', N'B  ', N'Kia Picanto                                                                                         ')
INSERT [dbo].[Tasit] ([TasitPlaka], [TasitAdi], [TasitSegment], [TasitModel]) VALUES (N'34 NC 895 ', N'Motor               ', N'A  ', N'YUKİ HAMMER                                                                                         ')
INSERT [dbo].[Tasit] ([TasitPlaka], [TasitAdi], [TasitSegment], [TasitModel]) VALUES (N'34 V 769  ', N'Araba               ', N'C  ', N'Hyundai i20                                                                                         ')
INSERT [dbo].[Tasit] ([TasitPlaka], [TasitAdi], [TasitSegment], [TasitModel]) VALUES (N'34 VA 1011', N'Araba               ', N'D  ', N'Ford Tourneo                                                                                        ')
GO
INSERT [dbo].[Tedarikci] ([TedarikciID], [TedarikciAdi], [TedarikciAdres]) VALUES (1, N'Reekas Nuts Company                               ', N'Kavak Yazisi,21, 14030, Merkez/ Bolu, Turkey                                                                                                                                                            ')
INSERT [dbo].[Tedarikci] ([TedarikciID], [TedarikciAdi], [TedarikciAdres]) VALUES (2, N'The Squirrel Brand Co                             ', N'Hoşköy,19, 25360, Şenkaya/ Erzurum, Turkey                                                                                                                                                              ')
INSERT [dbo].[Tedarikci] ([TedarikciID], [TedarikciAdi], [TedarikciAdres]) VALUES (3, N'Tadım Kuruyemiş                                   ', N'Yalinli,23, 63500, Akçakale/ Şanliurfa, Turkey                                                                                                                                                          ')
INSERT [dbo].[Tedarikci] ([TedarikciID], [TedarikciAdi], [TedarikciAdres]) VALUES (4, N'Peyman Kuruyemiş                                  ', N'Dahalli,16, 37210, Merkez/ Kastamonu, Turkey                                                                                                                                                            ')
INSERT [dbo].[Tedarikci] ([TedarikciID], [TedarikciAdi], [TedarikciAdres]) VALUES (5, N'Hacıbaba Kuruyemiş                                ', N'Bademli Köyü,28, 32502, Eğirdir/ Isparta, Turkey                                                                                                                                                        ')
INSERT [dbo].[Tedarikci] ([TedarikciID], [TedarikciAdi], [TedarikciAdres]) VALUES (6, NULL, NULL)
GO
INSERT [dbo].[Urun] ([UrunID], [UrunAdi], [UrunFiyat]) VALUES (120001, N'Yer Fıstığı                                       ', 456.9500)
INSERT [dbo].[Urun] ([UrunID], [UrunAdi], [UrunFiyat]) VALUES (120002, N'Antep Fıstığı                                     ', 335.9000)
INSERT [dbo].[Urun] ([UrunID], [UrunAdi], [UrunFiyat]) VALUES (120003, N'Fındık                                            ', 747.0500)
INSERT [dbo].[Urun] ([UrunID], [UrunAdi], [UrunFiyat]) VALUES (120004, N'Lokum                                             ', 306.0500)
INSERT [dbo].[Urun] ([UrunID], [UrunAdi], [UrunFiyat]) VALUES (120005, N'Tuzlu Çekirdek                                    ', 497.5000)
INSERT [dbo].[Urun] ([UrunID], [UrunAdi], [UrunFiyat]) VALUES (120006, N'Kavrulmuş Çekirdek                                ', 560.9500)
INSERT [dbo].[Urun] ([UrunID], [UrunAdi], [UrunFiyat]) VALUES (120007, N'Kaju Fıstığı                                      ', 116.8500)
INSERT [dbo].[Urun] ([UrunID], [UrunAdi], [UrunFiyat]) VALUES (120008, N'Badem                                             ', 49.5500)
INSERT [dbo].[Urun] ([UrunID], [UrunAdi], [UrunFiyat]) VALUES (120009, N'Vişne Kurusu                                      ', 345.9500)
INSERT [dbo].[Urun] ([UrunID], [UrunAdi], [UrunFiyat]) VALUES (120010, N'Kurutulmuş İncir                                  ', 200.9000)
INSERT [dbo].[Urun] ([UrunID], [UrunAdi], [UrunFiyat]) VALUES (120016, N'Cips                                              ', 10.0000)
GO
ALTER TABLE [dbo].[Araba]  WITH CHECK ADD  CONSTRAINT [FK_Araba_Tasit] FOREIGN KEY([ArabaPlaka])
REFERENCES [dbo].[Tasit] ([TasitPlaka])
GO
ALTER TABLE [dbo].[Araba] CHECK CONSTRAINT [FK_Araba_Tasit]
GO
ALTER TABLE [dbo].[Depo]  WITH CHECK ADD  CONSTRAINT [FK_Depo_Tedarikci] FOREIGN KEY([TedarikciID])
REFERENCES [dbo].[Tedarikci] ([TedarikciID])
GO
ALTER TABLE [dbo].[Depo] CHECK CONSTRAINT [FK_Depo_Tedarikci]
GO
ALTER TABLE [dbo].[Kasiyer]  WITH CHECK ADD  CONSTRAINT [FK_Kasiyer_Calisanlar] FOREIGN KEY([KasiyerID])
REFERENCES [dbo].[Calisanlar] ([CalisanlarID])
GO
ALTER TABLE [dbo].[Kasiyer] CHECK CONSTRAINT [FK_Kasiyer_Calisanlar]
GO
ALTER TABLE [dbo].[Kasiyer]  WITH CHECK ADD  CONSTRAINT [FK_Kasiyer_Musteri] FOREIGN KEY([MusteriID])
REFERENCES [dbo].[Musteri] ([MusteriID])
GO
ALTER TABLE [dbo].[Kasiyer] CHECK CONSTRAINT [FK_Kasiyer_Musteri]
GO
ALTER TABLE [dbo].[Kurye]  WITH CHECK ADD  CONSTRAINT [FK_Kurye_Calisanlar] FOREIGN KEY([KuryeID])
REFERENCES [dbo].[Calisanlar] ([CalisanlarID])
GO
ALTER TABLE [dbo].[Kurye] CHECK CONSTRAINT [FK_Kurye_Calisanlar]
GO
ALTER TABLE [dbo].[Kurye]  WITH CHECK ADD  CONSTRAINT [FK_Kurye_Motor] FOREIGN KEY([MotorPlaka])
REFERENCES [dbo].[Motor] ([MotorPlaka])
GO
ALTER TABLE [dbo].[Kurye] CHECK CONSTRAINT [FK_Kurye_Motor]
GO
ALTER TABLE [dbo].[Kurye]  WITH CHECK ADD  CONSTRAINT [FK_Kurye_Siparis] FOREIGN KEY([SiparisNo])
REFERENCES [dbo].[Siparis] ([SiparisNo])
GO
ALTER TABLE [dbo].[Kurye] CHECK CONSTRAINT [FK_Kurye_Siparis]
GO
ALTER TABLE [dbo].[Motor]  WITH CHECK ADD  CONSTRAINT [FK_Motor_Tasit] FOREIGN KEY([MotorPlaka])
REFERENCES [dbo].[Tasit] ([TasitPlaka])
GO
ALTER TABLE [dbo].[Motor] CHECK CONSTRAINT [FK_Motor_Tasit]
GO
ALTER TABLE [dbo].[Musteri]  WITH CHECK ADD  CONSTRAINT [FK_Musteri_Siparis] FOREIGN KEY([SiparisNo])
REFERENCES [dbo].[Siparis] ([SiparisNo])
GO
ALTER TABLE [dbo].[Musteri] CHECK CONSTRAINT [FK_Musteri_Siparis]
GO
ALTER TABLE [dbo].[Satis]  WITH NOCHECK ADD  CONSTRAINT [FK_Satis_Sube] FOREIGN KEY([SubeID])
REFERENCES [dbo].[Sube] ([SubeID])
GO
ALTER TABLE [dbo].[Satis] CHECK CONSTRAINT [FK_Satis_Sube]
GO
ALTER TABLE [dbo].[Siparis]  WITH CHECK ADD  CONSTRAINT [FK_Siparis_Satis] FOREIGN KEY([SiparisNo])
REFERENCES [dbo].[Satis] ([SatisID])
GO
ALTER TABLE [dbo].[Siparis] CHECK CONSTRAINT [FK_Siparis_Satis]
GO
ALTER TABLE [dbo].[Siparis]  WITH CHECK ADD  CONSTRAINT [FK_Siparis_Urun] FOREIGN KEY([UrunID])
REFERENCES [dbo].[Urun] ([UrunID])
GO
ALTER TABLE [dbo].[Siparis] CHECK CONSTRAINT [FK_Siparis_Urun]
GO
ALTER TABLE [dbo].[Sofor]  WITH CHECK ADD  CONSTRAINT [FK_Sofor_Araba] FOREIGN KEY([ArabaPlaka])
REFERENCES [dbo].[Araba] ([ArabaPlaka])
GO
ALTER TABLE [dbo].[Sofor] CHECK CONSTRAINT [FK_Sofor_Araba]
GO
ALTER TABLE [dbo].[Sofor]  WITH CHECK ADD  CONSTRAINT [FK_Sofor_Calisanlar] FOREIGN KEY([SoforID])
REFERENCES [dbo].[Calisanlar] ([CalisanlarID])
GO
ALTER TABLE [dbo].[Sofor] CHECK CONSTRAINT [FK_Sofor_Calisanlar]
GO
ALTER TABLE [dbo].[Sofor]  WITH CHECK ADD  CONSTRAINT [FK_Sofor_Depo] FOREIGN KEY([DepoID])
REFERENCES [dbo].[Depo] ([DepoID])
GO
ALTER TABLE [dbo].[Sofor] CHECK CONSTRAINT [FK_Sofor_Depo]
GO
ALTER TABLE [dbo].[Sofor]  WITH CHECK ADD  CONSTRAINT [FK_Sofor_Sube] FOREIGN KEY([SubeID])
REFERENCES [dbo].[Sube] ([SubeID])
GO
ALTER TABLE [dbo].[Sofor] CHECK CONSTRAINT [FK_Sofor_Sube]
GO
ALTER TABLE [dbo].[Stok]  WITH CHECK ADD  CONSTRAINT [FK_Stok_Depo] FOREIGN KEY([DepoID])
REFERENCES [dbo].[Depo] ([DepoID])
GO
ALTER TABLE [dbo].[Stok] CHECK CONSTRAINT [FK_Stok_Depo]
GO
ALTER TABLE [dbo].[Sube]  WITH CHECK ADD  CONSTRAINT [FK_Sube_Kasiyer] FOREIGN KEY([KasiyerID])
REFERENCES [dbo].[Kasiyer] ([KasiyerID])
GO
ALTER TABLE [dbo].[Sube] CHECK CONSTRAINT [FK_Sube_Kasiyer]
GO
ALTER TABLE [dbo].[Sube]  WITH CHECK ADD  CONSTRAINT [FK_Sube_Sofor] FOREIGN KEY([SoforID])
REFERENCES [dbo].[Sofor] ([SoforID])
GO
ALTER TABLE [dbo].[Sube] CHECK CONSTRAINT [FK_Sube_Sofor]
GO
ALTER TABLE [dbo].[Urun]  WITH CHECK ADD  CONSTRAINT [FK_Urun_Stok] FOREIGN KEY([UrunID])
REFERENCES [dbo].[Stok] ([StokKodu])
GO
ALTER TABLE [dbo].[Urun] CHECK CONSTRAINT [FK_Urun_Stok]
GO
USE [master]
GO
ALTER DATABASE [Kuruyemis] SET  READ_WRITE 
GO
