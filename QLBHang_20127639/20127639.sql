USE [master]
GO
/****** Object:  Database [QLBH]    Script Date: 21/02/2023 10:19:45 CH ******/
CREATE DATABASE [QLBH]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLBH', FILENAME = N'D:\SQl\QLBH.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QLBH_log', FILENAME = N'D:\SQl\QLBH_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [QLBH] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLBH].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLBH] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLBH] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLBH] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLBH] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLBH] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLBH] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLBH] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLBH] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLBH] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLBH] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLBH] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLBH] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLBH] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLBH] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLBH] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLBH] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLBH] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLBH] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLBH] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLBH] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLBH] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLBH] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLBH] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLBH] SET  MULTI_USER 
GO
ALTER DATABASE [QLBH] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLBH] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLBH] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLBH] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLBH] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QLBH] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [QLBH] SET QUERY_STORE = OFF
GO
USE [QLBH]
GO
/****** Object:  Table [dbo].[CT_HOA_DON]    Script Date: 21/02/2023 10:19:46 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_HOA_DON](
	[MAHD] [nchar](10) NOT NULL,
	[MASP] [nchar](10) NOT NULL,
	[SOLUONG] [int] NULL,
	[DONGIA] [money] NULL,
 CONSTRAINT [PK_CT_HOA_DON] PRIMARY KEY CLUSTERED 
(
	[MAHD] ASC,
	[MASP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOA_DON]    Script Date: 21/02/2023 10:19:46 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOA_DON](
	[MAHD] [nchar](10) NOT NULL,
	[NGAYLAP] [date] NULL,
	[MAKH] [nvarchar](10) NULL,
 CONSTRAINT [PK_HOA_DON] PRIMARY KEY CLUSTERED 
(
	[MAHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHACH_HANG]    Script Date: 21/02/2023 10:19:46 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACH_HANG](
	[MAKH] [nvarchar](10) NOT NULL,
	[HOTEN] [nvarchar](50) NULL,
	[GIOITINH] [nchar](10) NULL,
	[DTHOAI] [nchar](10) NULL,
	[DIACHI] [nvarchar](50) NULL,
 CONSTRAINT [PK_KHACH_HANG] PRIMARY KEY CLUSTERED 
(
	[MAKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SAN_PHAM]    Script Date: 21/02/2023 10:19:46 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SAN_PHAM](
	[MASP] [nchar](10) NOT NULL,
	[TENSP] [nvarchar](50) NOT NULL,
	[NGAYSX] [date] NOT NULL,
	[DONGIA] [money] NOT NULL,
 CONSTRAINT [PK_SAN_PHAM] PRIMARY KEY CLUSTERED 
(
	[MASP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CT_HOA_DON] ([MAHD], [MASP], [SOLUONG], [DONGIA]) VALUES (N'01        ', N'BOOK1     ', 2, 50000.0000)
INSERT [dbo].[CT_HOA_DON] ([MAHD], [MASP], [SOLUONG], [DONGIA]) VALUES (N'02        ', N'BOOK1     ', 1, 50000.0000)
INSERT [dbo].[CT_HOA_DON] ([MAHD], [MASP], [SOLUONG], [DONGIA]) VALUES (N'03        ', N'BOOK4     ', 4, 50000.0000)
INSERT [dbo].[CT_HOA_DON] ([MAHD], [MASP], [SOLUONG], [DONGIA]) VALUES (N'04        ', N'BOOK3     ', 3, 40000.0000)
INSERT [dbo].[CT_HOA_DON] ([MAHD], [MASP], [SOLUONG], [DONGIA]) VALUES (N'05        ', N'BOOK2     ', 2, 60000.0000)
GO
INSERT [dbo].[HOA_DON] ([MAHD], [NGAYLAP], [MAKH]) VALUES (N'01        ', CAST(N'2022-01-21' AS Date), N'KH01      ')
INSERT [dbo].[HOA_DON] ([MAHD], [NGAYLAP], [MAKH]) VALUES (N'02        ', CAST(N'2022-02-03' AS Date), N'KH02      ')
INSERT [dbo].[HOA_DON] ([MAHD], [NGAYLAP], [MAKH]) VALUES (N'03        ', CAST(N'2023-01-01' AS Date), N'KH03      ')
INSERT [dbo].[HOA_DON] ([MAHD], [NGAYLAP], [MAKH]) VALUES (N'04        ', CAST(N'2022-02-01' AS Date), N'KH04      ')
INSERT [dbo].[HOA_DON] ([MAHD], [NGAYLAP], [MAKH]) VALUES (N'05        ', NULL, NULL)
GO
INSERT [dbo].[KHACH_HANG] ([MAKH], [HOTEN], [GIOITINH], [DTHOAI], [DIACHI]) VALUES (N'KH01', N'NGUYEN VAN A', N'NAM       ', N'11111111  ', N'111 STREET')
INSERT [dbo].[KHACH_HANG] ([MAKH], [HOTEN], [GIOITINH], [DTHOAI], [DIACHI]) VALUES (N'KH02', N'NGUYEN VAN B', N'NAM       ', N'22222222  ', N'222 STREET')
INSERT [dbo].[KHACH_HANG] ([MAKH], [HOTEN], [GIOITINH], [DTHOAI], [DIACHI]) VALUES (N'KH03', N'NGUYEN VAN C', N'NAM       ', N'33333333  ', N'333 STREET')
INSERT [dbo].[KHACH_HANG] ([MAKH], [HOTEN], [GIOITINH], [DTHOAI], [DIACHI]) VALUES (N'KH04', N'NGUYEN VAN D', N'NAM       ', N'44444444  ', N'444 STREET')
INSERT [dbo].[KHACH_HANG] ([MAKH], [HOTEN], [GIOITINH], [DTHOAI], [DIACHI]) VALUES (N'KH05', N'NGUYEN VAN E', N'NAM       ', N'55555555  ', N'555 STREET')
GO
INSERT [dbo].[SAN_PHAM] ([MASP], [TENSP], [NGAYSX], [DONGIA]) VALUES (N'BOOK1     ', N'KTLT', CAST(N'2000-01-20' AS Date), 50000.0000)
INSERT [dbo].[SAN_PHAM] ([MASP], [TENSP], [NGAYSX], [DONGIA]) VALUES (N'BOOK2     ', N'CTDL', CAST(N'2000-03-02' AS Date), 60000.0000)
INSERT [dbo].[SAN_PHAM] ([MASP], [TENSP], [NGAYSX], [DONGIA]) VALUES (N'BOOK3     ', N'NMLT', CAST(N'2000-01-02' AS Date), 40000.0000)
INSERT [dbo].[SAN_PHAM] ([MASP], [TENSP], [NGAYSX], [DONGIA]) VALUES (N'BOOK4     ', N'OOP', CAST(N'2000-05-05' AS Date), 50000.0000)
INSERT [dbo].[SAN_PHAM] ([MASP], [TENSP], [NGAYSX], [DONGIA]) VALUES (N'BOOK5     ', N'MMT', CAST(N'2000-04-06' AS Date), 60000.0000)
GO
ALTER TABLE [dbo].[CT_HOA_DON]  WITH CHECK ADD  CONSTRAINT [FK_CT_HOA_DON_HOA_DON] FOREIGN KEY([MAHD])
REFERENCES [dbo].[HOA_DON] ([MAHD])
GO
ALTER TABLE [dbo].[CT_HOA_DON] CHECK CONSTRAINT [FK_CT_HOA_DON_HOA_DON]
GO
ALTER TABLE [dbo].[CT_HOA_DON]  WITH CHECK ADD  CONSTRAINT [FK_CT_HOA_DON_SAN_PHAM] FOREIGN KEY([MASP])
REFERENCES [dbo].[SAN_PHAM] ([MASP])
GO
ALTER TABLE [dbo].[CT_HOA_DON] CHECK CONSTRAINT [FK_CT_HOA_DON_SAN_PHAM]
GO
ALTER TABLE [dbo].[HOA_DON]  WITH CHECK ADD  CONSTRAINT [FK_HOA_DON_KHACH_HANG] FOREIGN KEY([MAKH])
REFERENCES [dbo].[KHACH_HANG] ([MAKH])
GO
ALTER TABLE [dbo].[HOA_DON] CHECK CONSTRAINT [FK_HOA_DON_KHACH_HANG]
GO
USE [master]
GO
ALTER DATABASE [QLBH] SET  READ_WRITE 
GO
