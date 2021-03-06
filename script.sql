USE [master]
GO
/****** Object:  Database [bdhls_test]    Script Date: 8/16/2020 11:58:30 AM ******/
CREATE DATABASE [bdhls_test]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'bdhls_test', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\bdhls_test.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'bdhls_test_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\bdhls_test_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [bdhls_test] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [bdhls_test].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [bdhls_test] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [bdhls_test] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [bdhls_test] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [bdhls_test] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [bdhls_test] SET ARITHABORT OFF 
GO
ALTER DATABASE [bdhls_test] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [bdhls_test] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [bdhls_test] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [bdhls_test] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [bdhls_test] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [bdhls_test] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [bdhls_test] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [bdhls_test] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [bdhls_test] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [bdhls_test] SET  DISABLE_BROKER 
GO
ALTER DATABASE [bdhls_test] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [bdhls_test] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [bdhls_test] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [bdhls_test] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [bdhls_test] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [bdhls_test] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [bdhls_test] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [bdhls_test] SET RECOVERY FULL 
GO
ALTER DATABASE [bdhls_test] SET  MULTI_USER 
GO
ALTER DATABASE [bdhls_test] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [bdhls_test] SET DB_CHAINING OFF 
GO
ALTER DATABASE [bdhls_test] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [bdhls_test] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [bdhls_test]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 8/16/2020 11:58:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](500) NULL,
	[Password] [nvarchar](500) NULL,
	[Email] [nvarchar](500) NULL,
	[DateCreated] [datetime] NULL CONSTRAINT [DF_Account_DateCreated]  DEFAULT (getdate()),
	[DateUpdated] [datetime] NULL,
	[UserCreated] [bigint] NULL,
	[UserUpdated] [bigint] NULL,
	[IsAdmin] [bit] NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Banner]    Script Date: 8/16/2020 11:58:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Banner](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[ImageUrl] [nvarchar](500) NULL,
	[IsShow] [bit] NULL,
	[DateCreated] [datetime] NULL,
	[DateUpdated] [datetime] NULL,
	[UserCreated] [bigint] NULL,
	[UserUpdated] [bigint] NULL,
 CONSTRAINT [PK_Banner] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Category]    Script Date: 8/16/2020 11:58:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[idCategory] [bigint] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](500) NULL,
	[DateCreated] [datetime] NULL,
	[DateUpdated] [datetime] NULL,
	[UserCreated] [bigint] NULL,
	[UserUpdated] [bigint] NULL,
 CONSTRAINT [PK_HLS_Category] PRIMARY KEY CLUSTERED 
(
	[idCategory] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ConfigWeb]    Script Date: 8/16/2020 11:58:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConfigWeb](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[KeyConfig] [nvarchar](50) NULL,
	[Type] [nvarchar](50) NULL,
	[ValueConfig] [nvarchar](4000) NULL,
	[NameConfig] [nvarchar](500) NULL,
	[DateCreated] [datetime] NULL CONSTRAINT [DF_ConfigWeb_DateCreated]  DEFAULT (getdate()),
	[DateUpdated] [datetime] NULL,
	[UserCreated] [bigint] NULL,
	[UserUpdated] [bigint] NULL,
 CONSTRAINT [PK_ConfigWeb] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Contact]    Script Date: 8/16/2020 11:58:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NULL,
	[Email] [nvarchar](500) NULL,
	[Subject] [nvarchar](500) NULL,
	[ContentMsg] [nvarchar](2000) NULL,
	[DateContact] [datetime] NULL CONSTRAINT [DF_Contact_DateContact]  DEFAULT (getdate()),
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ImagesUpload]    Script Date: 8/16/2020 11:58:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImagesUpload](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[FileName] [nvarchar](500) NULL,
	[Url] [nvarchar](500) NULL,
	[DateCreated] [datetime] NULL CONSTRAINT [DF_ImagesUpload_DateCreated]  DEFAULT (getdate()),
	[DateUpdated] [datetime] NULL,
	[UserCreated] [int] NULL,
	[UserUpdated] [int] NULL,
 CONSTRAINT [PK_ImagesUpload] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[News]    Script Date: 8/16/2020 11:58:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[NewsTitle] [nvarchar](500) NULL,
	[ShortDescription] [nvarchar](500) NULL,
	[NewsContent] [ntext] NULL,
	[Thumb] [nvarchar](500) NULL,
	[DateCreated] [datetime] NULL CONSTRAINT [DF_News_DateCreated]  DEFAULT (getdate()),
	[DateUpdate] [datetime] NULL,
	[UserCreated] [bigint] NULL,
	[UserUpdate] [bigint] NULL,
	[IsShow] [bit] NULL,
	[idNewsCategory] [bigint] NULL,
 CONSTRAINT [PK_News] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NewsCategory]    Script Date: 8/16/2020 11:58:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NewsCategory](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[NewsCategoryName] [nvarchar](500) NULL,
	[DateCreated] [datetime] NULL CONSTRAINT [DF_NewsCategory_DateCreated]  DEFAULT (getdate()),
	[DateUpdated] [datetime] NULL,
	[UserCreated] [bigint] NULL,
	[UserUpdated] [bigint] NULL,
 CONSTRAINT [PK_NewsCategory] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Project]    Script Date: 8/16/2020 11:58:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Project](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[ProjectName] [nvarchar](500) NULL,
	[Address] [nvarchar](500) NULL,
	[Acreage] [nvarchar](500) NULL,
	[Price] [nvarchar](500) NULL,
	[Direction] [nvarchar](500) NULL,
	[Width] [nvarchar](500) NULL,
	[Height] [nvarchar](500) NULL,
	[Juridical] [nvarchar](500) NULL,
	[Thumbnail] [nvarchar](500) NULL,
	[Description] [ntext] NULL,
	[DateCreated] [datetime] NULL CONSTRAINT [DF_Project_DateCreated]  DEFAULT (getdate()),
	[DateUpdated] [datetime] NULL,
	[UserCreated] [bigint] NULL,
	[UserUpdated] [bigint] NULL,
	[IsShow] [bit] NULL CONSTRAINT [DF_Project_IsShow]  DEFAULT ((1)),
	[IsHighlights] [bit] NULL,
	[idType] [bigint] NULL,
	[idCategory] [bigint] NULL,
	[NumerOfBuilding] [nvarchar](50) NULL,
	[NumberOfFloors] [nvarchar](50) NULL,
	[Type] [nvarchar](200) NULL,
	[IsSaled] [bit] NULL,
 CONSTRAINT [PK_Project] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProjectImages]    Script Date: 8/16/2020 11:58:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProjectImages](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[idProject] [bigint] NULL,
	[ImageUrl] [nvarchar](500) NULL,
	[DateCreate] [datetime] NULL CONSTRAINT [DF_ProjectImages_DateCreate]  DEFAULT (getdate()),
 CONSTRAINT [PK_ProjectImages] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([id], [Username], [Password], [Email], [DateCreated], [DateUpdated], [UserCreated], [UserUpdated], [IsAdmin]) VALUES (2, N'admins', N'123456789', NULL, CAST(N'2020-07-02 09:01:32.920' AS DateTime), NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[Account] OFF
SET IDENTITY_INSERT [dbo].[Banner] ON 

INSERT [dbo].[Banner] ([id], [ImageUrl], [IsShow], [DateCreated], [DateUpdated], [UserCreated], [UserUpdated]) VALUES (5, N'/Content/Images/Banner/27-2015.jpg', 1, CAST(N'2020-08-15 23:39:27.187' AS DateTime), NULL, 1, NULL)
INSERT [dbo].[Banner] ([id], [ImageUrl], [IsShow], [DateCreated], [DateUpdated], [UserCreated], [UserUpdated]) VALUES (6, N'/Content/Images/Banner/du-an-dong-binh-duong.jpg', 1, CAST(N'2020-08-15 23:39:59.270' AS DateTime), NULL, 1, NULL)
INSERT [dbo].[Banner] ([id], [ImageUrl], [IsShow], [DateCreated], [DateUpdated], [UserCreated], [UserUpdated]) VALUES (7, N'/Content/Images/Banner/20200710111426-24b4.jpg', 1, CAST(N'2020-08-15 23:44:43.857' AS DateTime), NULL, 1, NULL)
SET IDENTITY_INSERT [dbo].[Banner] OFF
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([idCategory], [CategoryName], [DateCreated], [DateUpdated], [UserCreated], [UserUpdated]) VALUES (1, N'Nhà đất cần bán', CAST(N'2020-06-24 00:00:00.000' AS DateTime), NULL, 1, NULL)
INSERT [dbo].[Category] ([idCategory], [CategoryName], [DateCreated], [DateUpdated], [UserCreated], [UserUpdated]) VALUES (2, N'Nhà đất cho thuê', CAST(N'2020-06-24 00:00:00.000' AS DateTime), NULL, 1, NULL)
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[ConfigWeb] ON 

INSERT [dbo].[ConfigWeb] ([id], [KeyConfig], [Type], [ValueConfig], [NameConfig], [DateCreated], [DateUpdated], [UserCreated], [UserUpdated]) VALUES (1, N'SLG_ABOUT', N'HOME', N'Bất động sản Hoàng Liên Sơn sẽ hỗ trợ mọi nhu cầu của bạn', N'Slogon', CAST(N'2020-06-24 15:09:36.723' AS DateTime), CAST(N'2020-07-02 16:35:25.387' AS DateTime), NULL, NULL)
INSERT [dbo].[ConfigWeb] ([id], [KeyConfig], [Type], [ValueConfig], [NameConfig], [DateCreated], [DateUpdated], [UserCreated], [UserUpdated]) VALUES (2, N'CONTENT_ABOUT', N'HOME', N'<p><em><strong><span style="color:#8e44ad">Với nhiều năm kinh nghiệm trong lĩnh vực bất động sản c&ugrave;ng đội ngũ nh&acirc;n lực chuy&ecirc;n nghiệp, bất động sản Ho&agrave;ng Li&ecirc;n Sơn sẽ hỗ trợ mua b&aacute;n, tư vấn, t&igrave;m hiểu về bất động sản mọi l&uacute;c mọi nơi. H&atilde;y li&ecirc;n hệ ngay với ch&uacute;ng t&ocirc;i nếu bạn c&oacute; nhu cầu.</span></strong></em></p>
', N'Nội Dung Giới Thiệu', CAST(N'2020-06-24 15:09:36.723' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ConfigWeb] ([id], [KeyConfig], [Type], [ValueConfig], [NameConfig], [DateCreated], [DateUpdated], [UserCreated], [UserUpdated]) VALUES (3, N'CONTACT_INFO_PHONE', N'LAYOUT', N'0343324611', N'Điện thoại liên hệ', CAST(N'2020-06-25 14:34:17.200' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ConfigWeb] ([id], [KeyConfig], [Type], [ValueConfig], [NameConfig], [DateCreated], [DateUpdated], [UserCreated], [UserUpdated]) VALUES (4, N'CONTACT_INFO_MAIL', N'LAYOUT', N'bdsHoangLienSon@gmail.com', N'Email liên lệ', CAST(N'2020-06-25 14:35:29.023' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ConfigWeb] ([id], [KeyConfig], [Type], [ValueConfig], [NameConfig], [DateCreated], [DateUpdated], [UserCreated], [UserUpdated]) VALUES (5, N'CONTACT_TIMEWORK1', N'LAYOUT', N'7 9.00 am - 8.00 pm', N'Giờ làm việc 1 (Thứ 2 - Thứ 6)', CAST(N'2020-06-25 14:36:13.230' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ConfigWeb] ([id], [KeyConfig], [Type], [ValueConfig], [NameConfig], [DateCreated], [DateUpdated], [UserCreated], [UserUpdated]) VALUES (6, N'CONTACT_TIMEWORK2', N'LAYOUT', N'9.00 am - 12.00 pm', N'Giờ làm việc 2 (Chủ nhật)', CAST(N'2020-06-25 14:36:14.370' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ConfigWeb] ([id], [KeyConfig], [Type], [ValueConfig], [NameConfig], [DateCreated], [DateUpdated], [UserCreated], [UserUpdated]) VALUES (7, N'CONTACT_ADDRESS', N'LAYOUT', N'123 Phạm Văn Đồng, Thủ Đức, HCM', N'Địa chỉ', CAST(N'2020-06-25 14:37:10.213' AS DateTime), NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[ConfigWeb] OFF
SET IDENTITY_INSERT [dbo].[Contact] ON 

INSERT [dbo].[Contact] ([id], [Name], [Email], [Subject], [ContentMsg], [DateContact]) VALUES (3, N'Phạm Thị Thu Hà', N'pvdao.utc2@gmail.com', N'Daocoiutc2', N'Excvef', CAST(N'2020-07-01 13:31:09.270' AS DateTime))
INSERT [dbo].[Contact] ([id], [Name], [Email], [Subject], [ContentMsg], [DateContact]) VALUES (4, N'Trần Van Huy', N'0343324610', N'Pham Van Dao', N'123456', CAST(N'2020-07-01 13:46:46.127' AS DateTime))
INSERT [dbo].[Contact] ([id], [Name], [Email], [Subject], [ContentMsg], [DateContact]) VALUES (5, N'Trần Thah Hóa', N'03433246215', N'Hỏi Giá Đất 1', N'Giá đất nhiêu???', CAST(N'2020-07-03 09:30:37.377' AS DateTime))
INSERT [dbo].[Contact] ([id], [Name], [Email], [Subject], [ContentMsg], [DateContact]) VALUES (6, N'Lê Thu Hà', N'03433246215', N'Hỏi Giá Đất 2', N'eyrurtyrtgrgre', CAST(N'2020-07-03 09:30:54.467' AS DateTime))
INSERT [dbo].[Contact] ([id], [Name], [Email], [Subject], [ContentMsg], [DateContact]) VALUES (7, N'Trần Văn Tâm', N'03433246215', N'Hỏi Giá Đất 3', N'bfngngnc', CAST(N'2020-07-03 09:30:59.887' AS DateTime))
INSERT [dbo].[Contact] ([id], [Name], [Email], [Subject], [ContentMsg], [DateContact]) VALUES (8, N'Phạm Quốc Huy', N'03433246215', N'Hỏi Giá Đất 5', N'vcncvnvn', CAST(N'2020-07-03 09:31:04.467' AS DateTime))
INSERT [dbo].[Contact] ([id], [Name], [Email], [Subject], [ContentMsg], [DateContact]) VALUES (9, N'Lê Thanh Nghĩa', N'03433246215', N'fdbdbfd', N'bcbcv', CAST(N'2020-07-03 09:31:08.320' AS DateTime))
INSERT [dbo].[Contact] ([id], [Name], [Email], [Subject], [ContentMsg], [DateContact]) VALUES (17, N'Trần Kim Oanh', N'0343324610', N'Hãy cho anh', N'sdsdbsdb vsdvbsdv vsdvsdbsdb', CAST(N'2020-07-16 18:42:35.460' AS DateTime))
INSERT [dbo].[Contact] ([id], [Name], [Email], [Subject], [ContentMsg], [DateContact]) VALUES (18, N'', N'', N'', N'', CAST(N'2020-08-08 18:04:22.453' AS DateTime))
SET IDENTITY_INSERT [dbo].[Contact] OFF
SET IDENTITY_INSERT [dbo].[ImagesUpload] ON 

INSERT [dbo].[ImagesUpload] ([id], [FileName], [Url], [DateCreated], [DateUpdated], [UserCreated], [UserUpdated]) VALUES (43, N'637331710874746489_6733083_hinh-anh-dep-1_044126531.jpg', N'/Content/Images/ImagesUpload/637331710874746489_6733083_hinh-anh-dep-1_044126531.jpg', CAST(N'2020-08-16 10:38:07.617' AS DateTime), NULL, 1, NULL)
INSERT [dbo].[ImagesUpload] ([id], [FileName], [Url], [DateCreated], [DateUpdated], [UserCreated], [UserUpdated]) VALUES (44, N'637331710880373336_3467345_hinh-anh-dep-2_044126655.jpg', N'/Content/Images/ImagesUpload/637331710880373336_3467345_hinh-anh-dep-2_044126655.jpg', CAST(N'2020-08-16 10:38:08.180' AS DateTime), NULL, 1, NULL)
INSERT [dbo].[ImagesUpload] ([id], [FileName], [Url], [DateCreated], [DateUpdated], [UserCreated], [UserUpdated]) VALUES (45, N'637331710881942369_7889976_hinh-anh-dep-3_044126905.jpg', N'/Content/Images/ImagesUpload/637331710881942369_7889976_hinh-anh-dep-3_044126905.jpg', CAST(N'2020-08-16 10:38:08.417' AS DateTime), NULL, 1, NULL)
INSERT [dbo].[ImagesUpload] ([id], [FileName], [Url], [DateCreated], [DateUpdated], [UserCreated], [UserUpdated]) VALUES (46, N'637331710884261046_9042649_hinh-anh-dep-4_044127014.jpg', N'/Content/Images/ImagesUpload/637331710884261046_9042649_hinh-anh-dep-4_044127014.jpg', CAST(N'2020-08-16 10:38:08.560' AS DateTime), NULL, 1, NULL)
INSERT [dbo].[ImagesUpload] ([id], [FileName], [Url], [DateCreated], [DateUpdated], [UserCreated], [UserUpdated]) VALUES (47, N'637331710885750214_1233894_hinh-anh-dep-5_044127233.jpg', N'/Content/Images/ImagesUpload/637331710885750214_1233894_hinh-anh-dep-5_044127233.jpg', CAST(N'2020-08-16 10:38:08.927' AS DateTime), NULL, 1, NULL)
INSERT [dbo].[ImagesUpload] ([id], [FileName], [Url], [DateCreated], [DateUpdated], [UserCreated], [UserUpdated]) VALUES (48, N'637331710889528053_5848057_hinh-anh-dep-6_044127357.jpg', N'/Content/Images/ImagesUpload/637331710889528053_5848057_hinh-anh-dep-6_044127357.jpg', CAST(N'2020-08-16 10:38:09.110' AS DateTime), NULL, 1, NULL)
INSERT [dbo].[ImagesUpload] ([id], [FileName], [Url], [DateCreated], [DateUpdated], [UserCreated], [UserUpdated]) VALUES (49, N'637331710891187103_5879098_hinh-anh-dep-7_044127482.jpg', N'/Content/Images/ImagesUpload/637331710891187103_5879098_hinh-anh-dep-7_044127482.jpg', CAST(N'2020-08-16 10:38:09.280' AS DateTime), NULL, 1, NULL)
INSERT [dbo].[ImagesUpload] ([id], [FileName], [Url], [DateCreated], [DateUpdated], [UserCreated], [UserUpdated]) VALUES (50, N'637331710892966085_6229723_hinh-anh-dep-8_044127576.jpg', N'/Content/Images/ImagesUpload/637331710892966085_6229723_hinh-anh-dep-8_044127576.jpg', CAST(N'2020-08-16 10:38:09.483' AS DateTime), NULL, 1, NULL)
INSERT [dbo].[ImagesUpload] ([id], [FileName], [Url], [DateCreated], [DateUpdated], [UserCreated], [UserUpdated]) VALUES (51, N'637331710894984936_9622157_hinh-anh-dep-9_044127685.jpg', N'/Content/Images/ImagesUpload/637331710894984936_9622157_hinh-anh-dep-9_044127685.jpg', CAST(N'2020-08-16 10:38:09.657' AS DateTime), NULL, 1, NULL)
INSERT [dbo].[ImagesUpload] ([id], [FileName], [Url], [DateCreated], [DateUpdated], [UserCreated], [UserUpdated]) VALUES (52, N'637331710896963806_2811196_hinh-anh-dep-10_044127763.jpg', N'/Content/Images/ImagesUpload/637331710896963806_2811196_hinh-anh-dep-10_044127763.jpg', CAST(N'2020-08-16 10:38:09.813' AS DateTime), NULL, 1, NULL)
INSERT [dbo].[ImagesUpload] ([id], [FileName], [Url], [DateCreated], [DateUpdated], [UserCreated], [UserUpdated]) VALUES (53, N'637331710898243078_9064157_hinh-anh-dep-11_044127919.jpg', N'/Content/Images/ImagesUpload/637331710898243078_9064157_hinh-anh-dep-11_044127919.jpg', CAST(N'2020-08-16 10:38:10.013' AS DateTime), NULL, 1, NULL)
INSERT [dbo].[ImagesUpload] ([id], [FileName], [Url], [DateCreated], [DateUpdated], [UserCreated], [UserUpdated]) VALUES (54, N'637331710900252053_5316329_hinh-anh-dep-13_044128091.jpg', N'/Content/Images/ImagesUpload/637331710900252053_5316329_hinh-anh-dep-13_044128091.jpg', CAST(N'2020-08-16 10:38:10.220' AS DateTime), NULL, 1, NULL)
INSERT [dbo].[ImagesUpload] ([id], [FileName], [Url], [DateCreated], [DateUpdated], [UserCreated], [UserUpdated]) VALUES (55, N'637331710902320748_2611870_hinh-anh-dep-17_044128403.jpg', N'/Content/Images/ImagesUpload/637331710902320748_2611870_hinh-anh-dep-17_044128403.jpg', CAST(N'2020-08-16 10:38:10.390' AS DateTime), NULL, 1, NULL)
INSERT [dbo].[ImagesUpload] ([id], [FileName], [Url], [DateCreated], [DateUpdated], [UserCreated], [UserUpdated]) VALUES (56, N'637331710904039766_2531884_hinh-anh-dep-19_044128621.jpg', N'/Content/Images/ImagesUpload/637331710904039766_2531884_hinh-anh-dep-19_044128621.jpg', CAST(N'2020-08-16 10:38:10.550' AS DateTime), NULL, 1, NULL)
SET IDENTITY_INSERT [dbo].[ImagesUpload] OFF
SET IDENTITY_INSERT [dbo].[News] ON 

INSERT [dbo].[News] ([id], [NewsTitle], [ShortDescription], [NewsContent], [Thumb], [DateCreated], [DateUpdate], [UserCreated], [UserUpdate], [IsShow], [idNewsCategory]) VALUES (1, N'Thời điểm vàng sở hữu biệt thự liền kề The Mansions ParkCity Hanoi', N'Theo thông tin từ chủ đầu tư, đợt mở bán cuối cùng chỉ còn 18 căn biệt thự, nhà vườn liền kề 4 tầng cao cấp nhất phân khu phân khu The Mansions, được trang bị thang máy kính với nhiều cải tiến tinh tế, đẳng cấp.', N'<h3 class="centeredText"><span style="text-decoration: underline; color: #e34f26;">Click here</span> to edit this demo</h3>
<!-- This comment is visible only in the source editor -->
<p><img class="imageRight" style="width: 53px; height: 60px;" src="https://htmleditor.tools/img/html-editor-tools.png" alt="HTML editor tools" />This is a demo text where you can experiment with the <strong class="orangeText">HTML Editor&nbsp;</strong>features. See how the visual and source editors are instantly changing each other.</p>
<p>Test the cleaning options and the toolbars of the two editors.</p>
<p>&nbsp;</p>
<table style="height: 164px;" width="378">
<tbody>
<tr>
<td colspan="2"><strong>This is a table.</strong></td>
</tr>
<tr>
<td>HTML <span style="text-decoration: underline;">image</span>:</td>
<td style="text-align: center; width: 266px;"><img src="https://htmleditor.tools/img/smiley.png" alt="smiley" />&nbsp;<em>Hi, I am &Ouml;d&ouml;nke!</em></td>
</tr>
<tr>
<td>A text link:</td>
<td>&nbsp; &nbsp; <a href="https://htmlg.com/">Click here</a> for more features!&nbsp;</td>
</tr>
</tbody>
</table>
<p>Copy-paste any document in the WYSIWYG editor to <span class="orangeText">convert</span> it to HTML code.</p>', N'/Content/Images/ThumbProject/DatNen2.jpg', CAST(N'2020-06-28 00:00:00.000' AS DateTime), NULL, 1, NULL, 1, 1)
INSERT [dbo].[News] ([id], [NewsTitle], [ShortDescription], [NewsContent], [Thumb], [DateCreated], [DateUpdate], [UserCreated], [UserUpdate], [IsShow], [idNewsCategory]) VALUES (2, N'Andochine Phú Quốc - giải cơn khát biệt thự biển cao cấp ở Phú Quốc', N'Andochine là dự án biệt thự hiếm hoi tại đất vàng Bãi Trường - một quỹ đất xa xỉ với mô hình biệt thự.', NULL, N'/Content/Images/ThumbProject/DuAn4.jpg', CAST(N'2020-06-28 00:00:00.000' AS DateTime), NULL, 1, NULL, 1, 2)
INSERT [dbo].[News] ([id], [NewsTitle], [ShortDescription], [NewsContent], [Thumb], [DateCreated], [DateUpdate], [UserCreated], [UserUpdate], [IsShow], [idNewsCategory]) VALUES (3, N'Chất lượng không khí ở Ecopark tương đương với New Zealand', N'Ecopark cho biết, theo kết quả đo lường chất lượng không khí của ứng dụng PamAir, chất lượng không khí ở khu đô thị Ecopark tương đương với với New Zealand - một trong những nơi có không khí trong lành hàng đầu thế giới.', NULL, N'/Content/Images/ThumbProject/DuAn8.jpg', CAST(N'2020-06-28 00:00:00.000' AS DateTime), NULL, 1, NULL, 1, 1)
INSERT [dbo].[News] ([id], [NewsTitle], [ShortDescription], [NewsContent], [Thumb], [DateCreated], [DateUpdate], [UserCreated], [UserUpdate], [IsShow], [idNewsCategory]) VALUES (4, N'Giữa Thủ đô, tổ hợp gần 5.000 tỷ chờ hợp thức sai phạm cho dân về ở', N'Dù đang trong quá trình xin điều chỉnh phương án kiến trúc và khắc phục vi phạm xây dựng nhưng tại dự án Hinode City (201 Minh Khai) hàng trăm căn hộ có cư dân về ở, bất chấp an toàn và quy định pháp luật.', NULL, N'/Content/Images/ThumbProject/DuAn4.jpg', CAST(N'2020-06-28 00:00:00.000' AS DateTime), NULL, 1, NULL, 1, 2)
INSERT [dbo].[News] ([id], [NewsTitle], [ShortDescription], [NewsContent], [Thumb], [DateCreated], [DateUpdate], [UserCreated], [UserUpdate], [IsShow], [idNewsCategory]) VALUES (5, N'BĐS quận 2 tăng tốc, đón đầu đà tăng trưởng', N'Theo các chuyên gia, khu vực “hạt nhân” quận 2 sẽ dẫn đầu làn sóng tăng trưởng BĐS mới của “thành phố phía Đông”.', NULL, N'/Content/Images/ThumbProject/DuAn9.jpg', CAST(N'2020-06-28 00:00:00.000' AS DateTime), NULL, 1, NULL, 1, 3)
INSERT [dbo].[News] ([id], [NewsTitle], [ShortDescription], [NewsContent], [Thumb], [DateCreated], [DateUpdate], [UserCreated], [UserUpdate], [IsShow], [idNewsCategory]) VALUES (6, N'Tư vấn thiết kế cải tạo căn hộ chung cư diện tích 79m² với tổng chi phí 140 triệu đồng', N'Gia đình gia chủ gồm 3 người và muốn kiến trúc sư tư vấn thiết kế phòng khách và bếp gian liên thông với nhau để tạo không gian thoáng đãng, rộng rãi, trẻ trung.', NULL, N'/Content/Images/ThumbProject/DatNen2.jpg', CAST(N'2020-06-28 00:00:00.000' AS DateTime), NULL, 1, NULL, 1, 2)
INSERT [dbo].[News] ([id], [NewsTitle], [ShortDescription], [NewsContent], [Thumb], [DateCreated], [DateUpdate], [UserCreated], [UserUpdate], [IsShow], [idNewsCategory]) VALUES (7, N'
Bộ Xây dựng đề xuất cho người nước ngoài mua bất động sản du lịch', N'Bộ Xây dựng đề xuất sửa đổi, bổ sung Luật nhà ở, Luật kinh doanh bất động sản (BĐS) 2014 theo hướng cho phép tổ chức, cá nhân nước ngoài được mua BĐS du lịch.', NULL, N'/Content/Images/ThumbProject/DuAn4.jpg', CAST(N'2020-06-28 00:00:00.000' AS DateTime), NULL, 1, NULL, 1, 3)
INSERT [dbo].[News] ([id], [NewsTitle], [ShortDescription], [NewsContent], [Thumb], [DateCreated], [DateUpdate], [UserCreated], [UserUpdate], [IsShow], [idNewsCategory]) VALUES (8, N'Những lý do để đầu tư shop thương mại dịch vụ', N'Trên thế giới, shop thương mại dịch vụ là một khái niệm phổ biến đối với giới đầu tư. Ở Hong Kong hay Singapore, các BĐS này có thời hạn sở hữu dao động từ 50 hoặc 70 năm nhưng giới đầu tư vẫn săn đón.', NULL, N'/Content/Images/ThumbProject/DatNen2.jpg', CAST(N'2020-06-28 00:00:00.000' AS DateTime), NULL, 1, NULL, 1, 2)
INSERT [dbo].[News] ([id], [NewsTitle], [ShortDescription], [NewsContent], [Thumb], [DateCreated], [DateUpdate], [UserCreated], [UserUpdate], [IsShow], [idNewsCategory]) VALUES (9, N'Tổ hợp đa tiện ích phong cách Singapore ở Thái Nguyên', N'Ngày 19/6/2020 Tecco Elite City - dự án tổ hợp đa tiện ích phong cách Singapore ra mắt thị trường BĐS Thái Nguyên, hứa hẹn mang lại phong cách sống đẳng cấp hoàn toàn mớ', NULL, N'/Content/Images/ThumbProject/DatNen2.jpg', CAST(N'2020-06-28 00:00:00.000' AS DateTime), NULL, 1, NULL, 1, 1)
INSERT [dbo].[News] ([id], [NewsTitle], [ShortDescription], [NewsContent], [Thumb], [DateCreated], [DateUpdate], [UserCreated], [UserUpdate], [IsShow], [idNewsCategory]) VALUES (10, N'Hơn 3.000 tỷ đồng làm 3 sân golf tại Bắc Giang, Hòa Bình', N'3 dự án sân golf gồm sân golf nghỉ dưỡng Bắc Giang 740 tỷ đồng, sân golf  Việt Yên 1.214 tỷ đồng và sân golf  Phúc Tiến (Hòa Bình) có tổng mức đầu tư 1.137 tỷ đồng.', NULL, N'/Content/Images/ThumbProject/DatNen2.jpg', CAST(N'2020-06-28 00:00:00.000' AS DateTime), NULL, 1, NULL, 1, 2)
INSERT [dbo].[News] ([id], [NewsTitle], [ShortDescription], [NewsContent], [Thumb], [DateCreated], [DateUpdate], [UserCreated], [UserUpdate], [IsShow], [idNewsCategory]) VALUES (11, N'Cặp vợ chồng trẻ tạo bất ngờ khi sửa nhà phố xập xệ tối tăm thành không gian hiện đại, tiện nghi', N'Chỉ trong vòng vài tháng, cặp vợ chồng người Thái đã lên kế hoạch sửa chữa lại căn nhà phố cũ vốn tồi tàn, dột nát thành không gian đẹp hiện đại với từng góc nhỏ tiện nghi ai ngắm cũng mê mẩn.', NULL, N'/Content/Images/ThumbProject/DuAn5.jpg', CAST(N'2020-06-28 00:00:00.000' AS DateTime), NULL, 1, NULL, 1, 2)
INSERT [dbo].[News] ([id], [NewsTitle], [ShortDescription], [NewsContent], [Thumb], [DateCreated], [DateUpdate], [UserCreated], [UserUpdate], [IsShow], [idNewsCategory]) VALUES (12, N'Decor phòng lung linh nhờ các món đồ xinh xắn vừa rẻ vừa đẹp', N'Những ý tưởng siêu tiết kiệm nhưng mang đến hiệu quả bất ngờ cho nhà bạn.', NULL, N'/Content/Images/ThumbProject/DuAn6.jpg', CAST(N'2020-06-28 00:00:00.000' AS DateTime), NULL, 1, NULL, 1, 3)
INSERT [dbo].[News] ([id], [NewsTitle], [ShortDescription], [NewsContent], [Thumb], [DateCreated], [DateUpdate], [UserCreated], [UserUpdate], [IsShow], [idNewsCategory]) VALUES (13, N'TP.HCM chỉ đạo thanh tra làm rõ sai phạm tại dự án Khu dân cư Tân Hải Minh', N'Từ đơn tố cáo của các hộ dân và sau loạt bài phản ánh của VietNamNet, UBND TP.HCM đã chỉ đạo Thanh tra Thành phố chủ trì, phối hợp cùng các cơ quan liên quan kiểm tra dấu hiệu sai phạm tại dự án Khu dân cư Tân Hải Minh. ', NULL, N'/Content/Images/ThumbProject/DuAn4.jpg', CAST(N'2020-06-28 00:00:00.000' AS DateTime), NULL, 1, NULL, 1, 1)
INSERT [dbo].[News] ([id], [NewsTitle], [ShortDescription], [NewsContent], [Thumb], [DateCreated], [DateUpdate], [UserCreated], [UserUpdate], [IsShow], [idNewsCategory]) VALUES (14, N'Chuyện lạ: Quận cho điều chỉnh quy hoạch theo bản đồ giả của chủ đầu tư', N'Chủ đầu tư Tân Hải Minh cung cấp bản đồ quy hoạch giả để lấy đất công viên làm trụ sở Ban điều hành khu phố. Điều lạ, dù có các phòng chuyên môn tham mưu nhưng UBND quận Thủ Đức vẫn không phát hiện vụ việc gian dối này? ', NULL, N'/Content/Images/ThumbProject/DatNen2.jpg', CAST(N'2020-06-28 00:00:00.000' AS DateTime), NULL, 1, NULL, 1, 2)
INSERT [dbo].[News] ([id], [NewsTitle], [ShortDescription], [NewsContent], [Thumb], [DateCreated], [DateUpdate], [UserCreated], [UserUpdate], [IsShow], [idNewsCategory]) VALUES (22, N'Bất động sản huyện Cần Giờ (TP.HCM): Nghe hơi, làm giá mowis', N'au khi thông tin cầu Cần Giờ nối Nhà Bè với huyện Cần Giờ (TP.HCM) dự kiến xây dựng vào quý I', N'<p><span style="color:#2ecc71"><em><strong>Nhiều dự &aacute;n vẫn bất động</strong></em></span></p>

<p>Huyện Cần Giờ được v&iacute; như &ldquo;n&agrave;ng c&ocirc;ng ch&uacute;a ngủ trong rừng&rdquo; v&igrave; tiềm năng c&ograve;n lớn. Hơn 10 năm qua, đ&oacute;n đầu xu hướng ph&aacute;t triển, h&agrave;ng ng&agrave;n tỷ đồng của c&aacute;c đại gia địa ốc đ&atilde; được đổ v&agrave;o, mở ra vận hội mới cho v&ugrave;ng đất n&agrave;y. Mặc d&ugrave; vậy, đến nay kh&ocirc;ng &iacute;t dự &aacute;n &ldquo;tỷ đ&ocirc;&rdquo; vẫn đang nằm bất động, cỏ mọc um t&ugrave;m.</p>

<p>Một trong những dự &aacute;n nhận được nhiều quan t&acirc;m của giới&nbsp;đầu tư&nbsp;địa ốc l&agrave; Dự &aacute;n La Maison De Cần Giờ, do C&ocirc;ng ty Phước Lộc l&agrave;m chủ đầu tư, đến nay vẫn trong t&igrave;nh trạng vắng vẻ. D&ugrave; được quảng c&aacute;o ho&agrave;nh tr&aacute;ng nhưng phần lớn diện t&iacute;ch đang bỏ hoang suốt nhiều năm qua.</p>

<p>Mặc d&ugrave; Cần Giờ đ&atilde; trải qua kh&ocirc;ng &iacute;t lần sốt đất, rồi lại đ&oacute;ng băng, nhưng sau khi xuất hiện những th&ocirc;ng tin t&iacute;ch cực về quy hoạch, x&acirc;y dựng hạ tầng, thị trường&nbsp;bất động sản&nbsp;huyện đảo n&agrave;y lại tiếp tục dậy s&oacute;ng. Li&ecirc;n tục thời gian qua, tr&ecirc;n c&aacute;c diễn đ&agrave;n nh&agrave; đất v&agrave; mạng x&atilde; hội lan truyền tin đất ở Cần Giờ đang sốt trở lại.</p>

<p>Tuy nhi&ecirc;n, ghi nhận của ph&oacute;ng vi&ecirc;n B&aacute;o Đầu tư, sốt n&oacute;ng chỉ l&agrave; những th&ocirc;ng tin đồn thổi, nhiều văn ph&ograve;ng m&ocirc;i giới nh&agrave; đất vẫn kh&ocirc;ng một b&oacute;ng người ra v&agrave;o, thậm ch&iacute; c&oacute; nơi cửa đ&oacute;ng then c&agrave;i. B&ecirc;n trong c&aacute;c qu&aacute;n c&agrave; ph&ecirc; ven đường cũng chỉ xuất hiện một v&agrave;i nh&oacute;m c&ograve; đất ngồi tụ tập.</p>

<p>D&ugrave; kh&ocirc;ng diễn ra t&igrave;nh cảnh mua b&aacute;n tấp nập, nhưng so với thời điểm cuối năm 2019, ở những khu vực đ&ocirc; thị h&oacute;a cao như x&atilde; B&igrave;nh Kh&aacute;nh, Cần Thạnh, An Thới Đ&ocirc;ng, Long H&ograve;a&hellip; gi&aacute; đất tăng b&igrave;nh qu&acirc;n 5 - 10%. Cụ thể, tại x&atilde; B&igrave;nh Kh&aacute;nh, đất thổ cư xung quanh UBND x&atilde; gi&aacute; trung b&igrave;nh 17 - 25 triệu đồng/m2; đất thổ vườn, đất nu&ocirc;i trồng thủy sản gi&aacute; 4 - 6 triệu đồng/m2.</p>

<p>Khu vực thị trấn Cần Thạnh, dọc trục đường Duy&ecirc;n Hải đi theo hướng về UBND huyện Cần Giờ, gi&aacute; đất vườn trung b&igrave;nh 25 - 30 triệu đồng/m2. Trong khi đ&oacute;, hướng về x&atilde; Long H&ograve;a, đất vườn c&oacute; gi&aacute; 8 - 10 triệu đồng/m2, đất vườn thổ gi&aacute; 15 triệu đồng/m2. Ấp H&ograve;a Hiệp gi&aacute; đất hiện cũng tăng vọt l&ecirc;n mức 25 - 26 triệu đồng/m2.</p>

<p><strong>Nh&agrave; đầu tư cần thận trọng</strong></p>

<p>Tiềm năng ph&aacute;t triển của thị trường bất động sản Cần Giờ l&agrave; c&oacute;, khi một số dự &aacute;n khu du lịch nghỉ dưỡng, khu vui chơi giải tr&iacute;, nh&agrave; ở thương mại... đang được c&aacute;c nh&agrave; đầu tư l&ecirc;n kế hoạch x&acirc;y dựng.</p>

<p>Thời gian qua, thị trường bất động sản Cần Giờ cũng đ&oacute;n nhận th&ocirc;ng tin t&iacute;ch cực về quy hoạch, x&acirc;y dựng hạ tầng. Chẳng hạn, Dự &aacute;n bến ph&agrave; Cần Giờ - Vũng T&agrave;u được triển khai v&agrave; dự kiến đi v&agrave;o khai th&aacute;c trong dịp Quốc kh&aacute;nh 2/9, kỳ vọng sẽ kết nối 2 khu vực, r&uacute;t ngắn thời gian di chuyển giữa Cần Giờ v&agrave; Vũng T&agrave;u xuống chỉ c&ograve;n khoảng 30 ph&uacute;t cho cự ly 15 km đường biển. Hay th&ocirc;ng tin cầu Cần Giờ nối huyện Nh&agrave; B&egrave; dự kiến x&acirc;y dựng v&agrave;o qu&yacute; I/2022, tạo th&ecirc;m lực đẩy cho thị trường địa ốc ph&aacute;t triển.</p>

<p>Song, tr&ecirc;n thực tế, c&aacute;c&nbsp;doanh nghiệp&nbsp;đổ về đ&acirc;y kh&ocirc;ng nhiều v&igrave; quỹ đất hạn chế v&agrave; hạ tầng chưa ph&aacute;t triển. Chủ yếu l&agrave; c&aacute;c doanh nghiệp lớn c&oacute; quỹ đất sạch v&agrave; nh&agrave; đầu tư c&aacute; nh&acirc;n &acirc;m thầm gom đất để đ&oacute;n đầu xu hướng.</p>

<p style="text-align:center"><img alt="" src="/UploadImangeCkfinder/images/can-gio-1593991329341.jpg" style="height:480px; width:640px" /></p>

<p>&Ocirc;ng Trần Hiền Phương, Tổng gi&aacute;m đốc Seaholdings cho rằng, thực chất những th&ocirc;ng tin t&iacute;ch cực về tiến độ x&acirc;y cầu hay khởi động những si&ecirc;u dự &aacute;n chỉ c&oacute; t&aacute;c động nhất thời, tạo hiệu ứng t&acirc;m l&yacute; cho nh&agrave; đầu tư c&aacute; nh&acirc;n.</p>

<p>&ldquo;Quỹ đất nội th&agrave;nh đ&atilde; khan hiếm, tất yếu nh&agrave; đầu tư sẽ tỏa về v&ugrave;ng ven. Tuy nhiều nh&agrave; đầu tư đổ về Cần Giờ, nhưng số hợp đồng chuyển nhượng với c&aacute;c hộ d&acirc;n th&agrave;nh c&ocirc;ng kh&aacute; thấp do kh&ocirc;ng thống nhất gi&aacute;, hồ sơ ph&aacute;p l&yacute; kh&ocirc;ng r&otilde; r&agrave;ng, d&iacute;nh quy hoạch. Lợi dụng hiệu ứng đ&aacute;m đ&ocirc;ng, một số c&ocirc;ng ty m&ocirc;i giới đ&atilde; thổi gi&aacute; l&ecirc;n cao, nếu kh&ocirc;ng t&igrave;m hiểu kỹ sẽ l&atilde;nh tr&aacute;i đắng, đặc biệt với nh&agrave; đầu tư sử dụng vốn vay&rdquo;, &ocirc;ng Phương cảnh b&aacute;o.</p>

<p>L&atilde;nh đạo một doanh nghiệp lớn tại TP.HCM đang sở hữu h&agrave;ng chục h&eacute;c-ta đất ở Cần Giờ cũng cho biết, hơn 2 năm nay, doanh nghiệp &ocirc;ng vẫn chưa thể ho&agrave;n th&agrave;nh được hồ sơ để thực hiện khu phức hợp nghỉ dưỡng tại đ&acirc;y v&igrave; c&ograve;n nhiều vướng mắc trong thủ tục h&agrave;nh ch&iacute;nh.</p>

<p>&ldquo;H&agrave;ng chục tỷ đồng đ&atilde; được bỏ ra, nhưng đến nay dự &aacute;n vẫn chưa thể triển khai được&rdquo;, l&atilde;nh đạo doanh nghiệp n&agrave;y cho biết.</p>

<p>Ph&acirc;n t&iacute;ch về những thuận lợi v&agrave; rủi ro khi đầu tư v&agrave;o thị trường bất động sản Cần Giờ, &ocirc;ng L&ecirc; Ho&agrave;ng Ch&acirc;u, Chủ tịch Hiệp hội Bất động sản TP.HCM (HoREA) cho rằng, Cần Giờ c&oacute; điểm hấp dẫn nhất l&agrave; si&ecirc;u dự &aacute;n du lịch - nghỉ dưỡng lấn biển. Ăn theo dự &aacute;n n&agrave;y, n&ecirc;n những khu vực l&acirc;n cận chắc chắn sẽ tăng gi&aacute;. Đặc biệt, Dự &aacute;n cầu Cần Giờ đ&atilde; k&iacute;ch mặt bằng gi&aacute; đất của huyện đảo n&agrave;y l&ecirc;n v&agrave; thu h&uacute;t c&aacute;c nh&agrave; đầu tư địa ốc đến đ&acirc;y l&agrave; điều tất nhi&ecirc;n. Nhưng do diện t&iacute;ch của Cần Giờ bị giới hạn bởi Khu dự trữ sinh quyển, được UNESCO khuyến c&aacute;o kh&ocirc;ng n&ecirc;n ph&aacute; hủy, n&ecirc;n khi đầu tư v&agrave;o đ&acirc;y phải x&aacute;c định được mục ti&ecirc;u đầu tư d&agrave;i hạn.</p>

<p>&ldquo;T&ocirc;i đ&atilde; khuyến c&aacute;o c&aacute;c nh&agrave; đầu tư phải hết sức cẩn trọng trước sự đồn thổi của đầu nậu v&agrave; c&ograve; đất. B&ecirc;n cạnh đ&oacute;, đầu tư phải ph&ugrave; hợp với quy hoạch, c&acirc;n nhắc kỹ nguồn vốn. Nếu đầu tư bằng vốn đi vay, nh&agrave; đầu tư phải xem x&eacute;t lại&rdquo;, &ocirc;ng Ch&acirc;u n&oacute;i.</p>
', N'/Content/Images/ThumbNews/can-gio-1593991329341.jpg', CAST(N'2020-07-06 09:55:47.367' AS DateTime), CAST(N'2020-08-08 16:08:38.150' AS DateTime), 1, NULL, 1, 3)
SET IDENTITY_INSERT [dbo].[News] OFF
SET IDENTITY_INSERT [dbo].[NewsCategory] ON 

INSERT [dbo].[NewsCategory] ([id], [NewsCategoryName], [DateCreated], [DateUpdated], [UserCreated], [UserUpdated]) VALUES (1, N'Dự Án', CAST(N'2020-06-27 09:47:25.690' AS DateTime), NULL, 1, NULL)
INSERT [dbo].[NewsCategory] ([id], [NewsCategoryName], [DateCreated], [DateUpdated], [UserCreated], [UserUpdated]) VALUES (2, N'Thị Trường', CAST(N'2020-06-27 09:47:41.137' AS DateTime), NULL, 1, NULL)
INSERT [dbo].[NewsCategory] ([id], [NewsCategoryName], [DateCreated], [DateUpdated], [UserCreated], [UserUpdated]) VALUES (3, N'Bất Động Sản', CAST(N'2020-06-27 09:47:57.450' AS DateTime), NULL, 1, NULL)
INSERT [dbo].[NewsCategory] ([id], [NewsCategoryName], [DateCreated], [DateUpdated], [UserCreated], [UserUpdated]) VALUES (5, N'Thể loại 2', CAST(N'2020-07-10 17:44:09.990' AS DateTime), NULL, 1, NULL)
INSERT [dbo].[NewsCategory] ([id], [NewsCategoryName], [DateCreated], [DateUpdated], [UserCreated], [UserUpdated]) VALUES (6, N'Thể loại3', CAST(N'2020-07-10 17:45:08.820' AS DateTime), NULL, 1, NULL)
INSERT [dbo].[NewsCategory] ([id], [NewsCategoryName], [DateCreated], [DateUpdated], [UserCreated], [UserUpdated]) VALUES (7, N'Thể loại3 1', CAST(N'2020-07-10 17:45:28.097' AS DateTime), NULL, 1, NULL)
INSERT [dbo].[NewsCategory] ([id], [NewsCategoryName], [DateCreated], [DateUpdated], [UserCreated], [UserUpdated]) VALUES (8, N'Thể loại 3', CAST(N'2020-07-14 18:23:18.663' AS DateTime), NULL, 1, NULL)
SET IDENTITY_INSERT [dbo].[NewsCategory] OFF
SET IDENTITY_INSERT [dbo].[Project] ON 

INSERT [dbo].[Project] ([id], [ProjectName], [Address], [Acreage], [Price], [Direction], [Width], [Height], [Juridical], [Thumbnail], [Description], [DateCreated], [DateUpdated], [UserCreated], [UserUpdated], [IsShow], [IsHighlights], [idType], [idCategory], [NumerOfBuilding], [NumberOfFloors], [Type], [IsSaled]) VALUES (16, N'Mặt bằng mở văn phòng, gia sư', N'Trung tâm hành chính Dĩ An', N'30 m2', N'10 triệu/tháng', N'', NULL, NULL, N'', N'/Content/Images/ThumbProject/HLS01.jpg', N'<p>Cho thu&ecirc; mặt bằng để mở văn ph&ograve;ng, lớp gia sư hay dạy năng khiếu rất ph&ugrave; hợp<br />
Ngay đầu đường <span style="color:#16a085">L trung t&acirc;m h&agrave;nh ch&iacute;nh Dĩ An, 1lầu 1 trệt</span><br />
Gi&aacute; 10triệu/th&aacute;ng( c&oacute; thương lượng)<br />
Lh <strong>0968101090</strong> Li&ecirc;n</p>
', CAST(N'2020-08-02 22:48:15.003' AS DateTime), NULL, 1, NULL, 1, 0, 2, 3, N'', N'', N'Nhà cho thuê', 1)
INSERT [dbo].[Project] ([id], [ProjectName], [Address], [Acreage], [Price], [Direction], [Width], [Height], [Juridical], [Thumbnail], [Description], [DateCreated], [DateUpdated], [UserCreated], [UserUpdated], [IsShow], [IsHighlights], [idType], [idCategory], [NumerOfBuilding], [NumberOfFloors], [Type], [IsSaled]) VALUES (17, N'Căn Nhà Mặt Tiền Đường Phan Đăng Lưu', N'KP Thống Nhất, P. Dĩ An, Bình Dương', N'95 m2', N'3.3 Tỷ', N'', NULL, NULL, N'Sổ đỏ', N'/Content/Images/ThumbProject/HLS02.jpg', N'<p>CẦN B&Aacute;N CĂN NH&Agrave; MẶT TIỀN ĐƯỜNG PHAN ĐĂNG LƯU.KP .THỐNG NHẤT .P DĨ AN .<br />
D&Acirc;N CƯ SẦM UẤT BU&Ocirc;N B&Aacute;N TỐT VỊ TR&Iacute; ĐẮC ĐỊA.<br />
DT 95m2. GI&Aacute; C&Ocirc;NG KHAI 3 TỶ 3<br />
0932.179.286</p>

<p>H&igrave;nh ảnh</p>

<p><img alt="" src="/UploadImangeCkfinder/images/103126939_2630249767187875_2416001071430931073_n.jpg" style="height:960px; width:720px" /></p>

<p><img alt="" src="/UploadImangeCkfinder/images/103527685_2630249833854535_4697903086800817046_n.jpg" style="height:960px; width:746px" /></p>

<p><img alt="" src="/UploadImangeCkfinder/images/104108068_2630249937187858_4595713379257236113_n.jpg" style="height:960px; width:720px" /></p>
', CAST(N'2020-08-02 23:05:53.627' AS DateTime), NULL, 1, NULL, 1, 1, 2, 2, N'', N'', N'Nhà ở', 1)
INSERT [dbo].[Project] ([id], [ProjectName], [Address], [Acreage], [Price], [Direction], [Width], [Height], [Juridical], [Thumbnail], [Description], [DateCreated], [DateUpdated], [UserCreated], [UserUpdated], [IsShow], [IsHighlights], [idType], [idCategory], [NumerOfBuilding], [NumberOfFloors], [Type], [IsSaled]) VALUES (18, N'Bán nhà ngã tư Chiêu Liêu', N'Cách ngã tư Chiêu Liêu 300m', N'100 m2', N'1.1 tỷ', N'', NULL, NULL, N'Sổ đỏ', N'/Content/Images/ThumbProject/101687730_180817653390625_7124924698614312733_n.jpg', N'<p>Cần b&aacute;n căn nh&agrave; 1tret .1 lầu.3p ngủ.1p kh&aacute;ch.1p bếp.1p kh&aacute;ch .s&acirc;n xe m&aacute;y rộng r&atilde;i .c&aacute;ch ng&atilde; tư chi&ecirc;u Li&ecirc;u 300m.gi&aacute; 1ty1** triệu .lh0909661848(hung)<br />
Lh0969969787(hung)</p>

<p><img alt="" src="/UploadImangeCkfinder/images/101830532_180817700057287_1135166092950493270_n.jpg" style="height:960px; width:720px" /></p>

<p>&nbsp;</p>

<p><img alt="" src="/UploadImangeCkfinder/images/101914873_180817726723951_7920772070172938287_n.jpg" style="height:960px; width:720px" /></p>
', CAST(N'2020-08-02 23:16:26.437' AS DateTime), NULL, 1, NULL, 1, 1, 1, 2, N'', N'', N'', 1)
INSERT [dbo].[Project] ([id], [ProjectName], [Address], [Acreage], [Price], [Direction], [Width], [Height], [Juridical], [Thumbnail], [Description], [DateCreated], [DateUpdated], [UserCreated], [UserUpdated], [IsShow], [IsHighlights], [idType], [idCategory], [NumerOfBuilding], [NumberOfFloors], [Type], [IsSaled]) VALUES (19, N'Bán dãy trọ 4 phòng, 1 ki ốt, 300tr', N'Lý Thường Kiệt, Dĩ An, Bình Dương', N'200 m2', N'Liên hệ 0985201089 ', N'', NULL, NULL, N'Sổ đỏ', N'/Content/Images/ThumbProject/101198771_574671626776876_6128991423145443328_n.jpg', N'<p><strong>Cần b&aacute;n gấp d&atilde;y trọ ,gồm 4p v&agrave; 1kiot ch&iacute;nh chủ lh.0985201089&nbsp;</strong></p>

<p><img alt="" src="/UploadImangeCkfinder/images/102702055_574671686776870_4012279338920574976_n.jpg" style="height:720px; width:960px" /></p>

<p><img alt="" src="/UploadImangeCkfinder/images/101144036_574671726776866_5466942808835227648_n.jpg" style="height:720px; width:960px" /></p>

<p>&nbsp;</p>
', CAST(N'2020-08-02 23:25:38.943' AS DateTime), CAST(N'2020-08-08 15:44:41.200' AS DateTime), 1, NULL, 1, 1, 2, 1, N'', N'', N'', 1)
INSERT [dbo].[Project] ([id], [ProjectName], [Address], [Acreage], [Price], [Direction], [Width], [Height], [Juridical], [Thumbnail], [Description], [DateCreated], [DateUpdated], [UserCreated], [UserUpdated], [IsShow], [IsHighlights], [idType], [idCategory], [NumerOfBuilding], [NumberOfFloors], [Type], [IsSaled]) VALUES (20, N'BÁN ĐÁT ĐBD - DĨ AN OK OK', N'Dĩ An', N'500', N'3 - 6 tỷ', N' TAT NAM', NULL, NULL, N'Sổ hồng', N'/Content/Images/ThumbProject/received_858439767945892.jpeg', N'<p>Hay hay</p>

<p><img alt="" src="/UploadImangeCkfinder/images/hello-kitty-strawberry-sweet-sticker-shk00092.jpg" style="height:20%; width:20%" /></p>

<p>OK OK</p>

<p><strong>OK OK</strong></p>

<p>&nbsp;</p>

<p><strong>O OM Ọ&nbsp; kdgdg gdgd dgd</strong></p>
', CAST(N'2020-08-08 15:25:51.447' AS DateTime), CAST(N'2020-08-08 15:37:44.443' AS DateTime), 1, NULL, 1, 0, 1, 1, N'', N'', N'', NULL)
INSERT [dbo].[Project] ([id], [ProjectName], [Address], [Acreage], [Price], [Direction], [Width], [Height], [Juridical], [Thumbnail], [Description], [DateCreated], [DateUpdated], [UserCreated], [UserUpdated], [IsShow], [IsHighlights], [idType], [idCategory], [NumerOfBuilding], [NumberOfFloors], [Type], [IsSaled]) VALUES (21, N'Khu đô thị Đông Bình Dương', N'trục đường chính Nguyễn Thị Minh Khai, phường Tân Bình, thành phố Dĩ An, tỉnh Bình Dương', N'126 hecta - 6433 nền', N'800.triệu đồng đến 2.tỷ / một lô', N'', NULL, NULL, N'', N'/Content/Images/ThumbProject/94268f60cbe637b86ef7.jpg', N'<p><span style="color:#e74c3c"><strong>DỰ &Aacute;N KHU Đ&Ocirc; THỊ Đ&Ocirc;NG B&Igrave;NH DƯƠNG.<br />
XIN TH&Ocirc;NG B&Aacute;O TỚI QU&Iacute; KH&Aacute;CH H&Agrave;NG &amp; NH&Agrave; ĐẦU TƯ&nbsp;</strong></span><br />
<em>Hiện nay dự &aacute;n đang gấp r&uacute;t ho&agrave;n th&agrave;nh cơ sở hạ tầng để kịp tiến độ .&nbsp;<br />
-dự kiến đến ng&agrave;y 15-7-2020 b&agrave;n giao nền đất cho qu&iacute; kh&aacute;ch&nbsp;<br />
- XIN TH&Ocirc;NG B&Aacute;O HIỆN NAY CHỦ ĐẦU TƯ Đ&Atilde; CHO ĐĂNG K&Yacute; X&Acirc;Y NH&Agrave; Ở TẤT CẢ GIAI ĐOẠI 1 &amp; 2&nbsp;<br />
- NẾU QU&Iacute; KH&Aacute;CH C&Oacute; NHU CẦU X&Acirc;Y NH&Agrave; Ở VUI L&Ograve;NG ĐĂNG K&Yacute;&nbsp;<br />
Li&ecirc;n hệ Ms Li&ecirc;n :<span style="color:#e74c3c"> 0968 101090</span><br />
Hiện tại đ&atilde; c&oacute; nh&agrave; mẫu v&agrave; nh&agrave; ban quản l&yacute; dự &aacute;n</em><br />
<em>NHỮNG C&Acirc;Y CỌC ĐẦU TI&Ecirc;N Đ&Atilde; ĐƯỢC &Eacute;P ĐỂ L&Agrave;M NH&Agrave; BAN QUẢN L&Yacute;</em></p>

<p><span style="color:#c0392b"><em>1-Dự &aacute;n c&oacute; quy m&ocirc; lớn nhất th&agrave;nh phố Dĩ An với diện t&iacute;ch l&ecirc;n tới 126 hecta ~ 6433 nền. Quy m&ocirc; d&acirc;n số ước t&iacute;nh 25 500 người</em></span></p>

<p><span style="color:#c0392b"><em>2. Vị tr&iacute; đắc địa<br />
- Tọa lạc mặt tiền trục đường ch&iacute;nh Nguyễn Thị Minh Khai, phường T&acirc;n B&igrave;nh, th&agrave;nh phố Dĩ An, với đầy đủ tiện nghi</em></span></p>

<p><span style="color:#c0392b"><em>3. Đa dạng diện t&iacute;ch nền: 65m2, 80m2, 100m2, 130m2 (khu biệt thự), phục vụ nhiều mục đ&iacute;ch&nbsp;<br />
4. Gi&aacute; giao động từ 800.triệu đồng đến 2.tỷ / một l&ocirc;</em></span></p>

<p><em>Đừng bỏ lỡ cơ hội sở hữu bất động sản ở dự &aacute;n lớn v&agrave; tiện nghi nhất Th&agrave;nh Phố Dĩ An khi mức gi&aacute; c&ograve;n đang cực kỳ hấp dẫn&nbsp;<br />
<span style="color:#e74c3c">📞Li&ecirc;n hệ Ms Li&ecirc;n : 0968 101090<br />
&nbsp;Or 0909 007 089</span></em><br />
&nbsp;</p>

<p>tham khảo link sau:&nbsp;<a href="https://www.youtube.com/watch?v=-NHbrCkwl2I&amp;feature=emb_title">https://www.youtube.com/watch?v=-NHbrCkwl2I&amp;feature=emb_title</a></p>

<p>&nbsp;</p>
', CAST(N'2020-08-11 11:25:39.470' AS DateTime), NULL, 1, NULL, 1, 1, 1, 1, N'', N'', N'', NULL)
INSERT [dbo].[Project] ([id], [ProjectName], [Address], [Acreage], [Price], [Direction], [Width], [Height], [Juridical], [Thumbnail], [Description], [DateCreated], [DateUpdated], [UserCreated], [UserUpdated], [IsShow], [IsHighlights], [idType], [idCategory], [NumerOfBuilding], [NumberOfFloors], [Type], [IsSaled]) VALUES (22, N'Dự án Tuấn Điền Phát 1, giá sập sàn', N'Tân Vĩnh Hiệp. Tân Uyên, Bình Dương', N'', N'830 triệu - 1 tỷ 2 ', N'', NULL, NULL, N'sổ đỏ cầm tay', N'/Content/Images/ThumbProject/4f87b9e40162fd3ca473.jpg', N'<p>&nbsp;</p>

<p style="text-align:center"><span style="font-size:22px"><strong><span style="background-color:#1abc9c">Dự &aacute;n Tuấn Điền Ph&aacute;t 1</span></strong></span></p>

<p><img alt="" src="https://f12.photo.talk.zdn.vn/3239413662151038757/3e7244cffb4907175e58.jpg" style="height:1281px; width:961px" /><br />
<img alt="" src="https://f4.photo.talk.zdn.vn/664027848783944188/c242cf5570d38c8dd5c2.jpg" style="height:540px; width:720px" /><img alt="" src="https://f5.photo.talk.zdn.vn/7934970355311803024/da2cc76879ee85b0dcff.jpg" style="height:720px; width:960px" /></p>

<p><img alt="" src="https://f7.photo.talk.zdn.vn/1599915902165407086/5c5c362a87ac7bf222bd.jpg" style="height:960px; width:720px" /></p>

<p><span style="font-size:16px"><strong><span style="color:#e74c3c">LH :</span></strong></span></p>

<p><span style="font-size:16px"><strong><span style="color:#e74c3c">0968101090 ( Mrs. Li&ecirc;n )<br />
0909007089</span></strong></span></p>
', CAST(N'2020-08-11 11:43:55.720' AS DateTime), CAST(N'2020-08-11 12:01:48.307' AS DateTime), 1, NULL, 1, 0, 1, 1, N'', N'', N'', NULL)
INSERT [dbo].[Project] ([id], [ProjectName], [Address], [Acreage], [Price], [Direction], [Width], [Height], [Juridical], [Thumbnail], [Description], [DateCreated], [DateUpdated], [UserCreated], [UserUpdated], [IsShow], [IsHighlights], [idType], [idCategory], [NumerOfBuilding], [NumberOfFloors], [Type], [IsSaled]) VALUES (23, N'[Cập nhật] dự án Đông Bình Dương 8/11/2020', N'trục đường chính Nguyễn Thị Minh Khai, phường Tân Bình, thành phố Dĩ An, tỉnh Bình Dương', N'126 HECTA - 6433 NỀN', N'800.TRIỆU ĐỒNG ĐẾN 2.TỶ / MỘT LÔ', N'', NULL, NULL, N'', N'/Content/Images/ThumbProject/94268f60cbe637b86ef7 (1).jpg', N'<p><em><strong>Một v&agrave;i h&igrave;nh ảnh cập nhật của dự &aacute;n Đ&ocirc;ng B&igrave;nh Dương ( 8/11/2020 )&nbsp;<br />
Kh&aacute;ch h&agrave;ng đ&atilde; nhận b&agrave;n giao đất của Dự &Aacute;n Đ&ocirc;ng B&igrave;nh Dương</strong></em></p>

<p><img alt="" src="https://f4.photo.talk.zdn.vn/2558199568015183853/16aa9daf2829d4778d38.jpg" style="height:622px; width:1280px" /><img alt="" src="https://f10.photo.talk.zdn.vn/9063321025898522935/b066f4024184bddae495.jpg" style="height:960px; width:1280px" /><img alt="" src="https://f7.photo.talk.zdn.vn/3944219809837971663/021cd95d6cdb9085c9ca.jpg" style="height:720px; width:960px" /><img alt="" src="https://f17-zpc.zdn.vn/2327753791024484279/c5c4c8867d00815ed811.jpg" style="height:720px; width:960px" /><img alt="" src="https://f4.photo.talk.zdn.vn/8378967983618297923/ff2d0d68b8ee44b01dff.jpg" style="height:720px; width:960px" /></p>

<p><span style="color:#e74c3c"><em>📞Li&ecirc;n hệ Ms Li&ecirc;n : 0968 101090<br />
&nbsp;Or 0909 007 089</em></span></p>
', CAST(N'2020-08-11 11:50:03.513' AS DateTime), NULL, 1, NULL, 1, 1, 1, 1, N'', N'', N'', NULL)
INSERT [dbo].[Project] ([id], [ProjectName], [Address], [Acreage], [Price], [Direction], [Width], [Height], [Juridical], [Thumbnail], [Description], [DateCreated], [DateUpdated], [UserCreated], [UserUpdated], [IsShow], [IsHighlights], [idType], [idCategory], [NumerOfBuilding], [NumberOfFloors], [Type], [IsSaled]) VALUES (24, N'Dự án Tuấn Điền Phát 2', N'Tân Vĩnh Hiệp. Tân Uyên, Bình Dương', N'', N'690 triệu - 900 triệu', N'', NULL, NULL, N'Sổ đỏ cầm tay', N'/Content/Images/ThumbProject/179aeb527ad4868adfc5.jpg', N'<p><span style="color:#e74c3c"><strong>LH :</strong></span></p>

<p><span style="color:#e74c3c"><strong>0968101090 ( Mrs. Li&ecirc;n )<br />
0909007089</strong></span></p>
', CAST(N'2020-08-11 12:01:04.963' AS DateTime), NULL, 1, NULL, 1, 0, 1, 1, N'', N'', N'', NULL)
INSERT [dbo].[Project] ([id], [ProjectName], [Address], [Acreage], [Price], [Direction], [Width], [Height], [Juridical], [Thumbnail], [Description], [DateCreated], [DateUpdated], [UserCreated], [UserUpdated], [IsShow], [IsHighlights], [idType], [idCategory], [NumerOfBuilding], [NumberOfFloors], [Type], [IsSaled]) VALUES (25, N'Bạn nhà ở địa chỉ khu phố Đông Chiêu, phương Tân Đông Hiệp, thị xã Dĩ An, tình Bình Dương', N'khu phố Đông Chiêu, phương Tân Đông Hiệp, thị xã Dĩ An, tình Bình Dương', N'69,8 mét vuông', N'2 tỷ 750 triệu ( thương lượng )', N'', NULL, NULL, N'Có sổ riêng', N'/Content/Images/ThumbProject/9bc413074995b5cbec84.jpg', N'<p><img alt="" src="https://f8.photo.talk.zdn.vn/4744011039925771920/f65506965c04a05af915.jpg" style="height:1280px; width:960px" /></p>

<p><img alt="" src="https://f10.photo.talk.zdn.vn/4993696777663420523/11a3de6084f278ac21e3.jpg" style="height:1280px; width:960px" /><img alt="" src="https://f4.photo.talk.zdn.vn/8879434635191545490/eb2186e2dc70202e7961.jpg" style="height:1280px; width:960px" /><img alt="" src="https://f16.photo.talk.zdn.vn/4441425866484782061/ee406e833411c84f9100.jpg" style="height:1280px; width:960px" /><img alt="" src="https://f10.photo.talk.zdn.vn/6617536828567983633/8e161dd54747bb19e256.jpg" style="height:960px; width:720px" /><img alt="" src="https://f5.photo.talk.zdn.vn/1507420515477384160/d41c01df5b4da713fe5c.jpg" style="height:960px; width:720px" /></p>

<p><span style="font-size:48px"><span style="color:#e74c3c"><strong>LH:</strong></span></span></p>

<p><span style="font-size:48px"><span style="color:#e74c3c"><strong>0968101090 ( Mrs. Li&ecirc;n )<br />
0909007089</strong></span></span></p>
', CAST(N'2020-08-15 14:59:10.670' AS DateTime), NULL, 1, NULL, 1, 0, 2, 2, N'', N'', N'', NULL)
INSERT [dbo].[Project] ([id], [ProjectName], [Address], [Acreage], [Price], [Direction], [Width], [Height], [Juridical], [Thumbnail], [Description], [DateCreated], [DateUpdated], [UserCreated], [UserUpdated], [IsShow], [IsHighlights], [idType], [idCategory], [NumerOfBuilding], [NumberOfFloors], [Type], [IsSaled]) VALUES (26, N'( Bán Nhà ) Địa chỉ KP Đông Chiêu, TX. Dĩ An, Tỉnh Bình Dương', N'KP Đông Chiêu, TX. Dĩ An, Tỉnh Bình Dương', N'60m vuông', N'2 tỷ 1xx triệu', N'', NULL, NULL, N'Sổ hồng', N'/Content/Images/ThumbProject/1c02d61f968d6ad3339c.jpg', N'<p><img alt="" src="https://f9.photo.talk.zdn.vn/4660753037292002259/3e708351c3c33f9d66d2.jpg" style="height:1280px; width:720px" /></p>

<p><img alt="" src="https://f3.photo.talk.zdn.vn/2365937226641710356/1c02d61f968d6ad3339c.jpg" style="height:1280px; width:720px" /><img alt="" src="https://f7.photo.talk.zdn.vn/182756141696892269/eac8dad69a44661a3f55.jpg" style="height:1280px; width:720px" /></p>

<p><img alt="" src="https://f14.photo.talk.zdn.vn/3754918400813018354/78dda9c6e954150a4c45.jpg" style="height:1280px; width:720px" /></p>

<p><span style="color:#e74c3c"><span style="font-size:26px"><strong>LH:</strong></span></span></p>

<p><span style="color:#e74c3c"><span style="font-size:26px"><strong>0968101090 ( Mrs. Li&ecirc;n )<br />
0909007089</strong></span></span></p>
', CAST(N'2020-08-15 15:05:04.077' AS DateTime), NULL, 1, NULL, 1, 0, 2, 1, N'', N'', N'', NULL)
INSERT [dbo].[Project] ([id], [ProjectName], [Address], [Acreage], [Price], [Direction], [Width], [Height], [Juridical], [Thumbnail], [Description], [DateCreated], [DateUpdated], [UserCreated], [UserUpdated], [IsShow], [IsHighlights], [idType], [idCategory], [NumerOfBuilding], [NumberOfFloors], [Type], [IsSaled]) VALUES (27, N'[ bán nhà ] Nhà 2 mặt tiền 1lầu + 1trệt 62m', N'Cách Nguyễn Thị Khắp 100m', N'', N'', N'', NULL, NULL, N'', N'/Content/Images/ThumbProject/117601997_2977441502482933_3825680002431765106_n.jpg', N'<p><img alt="" src="https://scontent.fsgn8-1.fna.fbcdn.net/v/t1.0-9/116683669_2977441445816272_6462020097625903417_n.jpg?_nc_cat=110&amp;_nc_sid=110474&amp;_nc_ohc=a3CKJzS9tF0AX_-2QvF&amp;_nc_ht=scontent.fsgn8-1.fna&amp;oh=5d4c03869ebef752c7c3df48565fc0cb&amp;oe=5F5BE876" style="height:960px; width:720px" /><img alt="" src="https://scontent.fsgn3-1.fna.fbcdn.net/v/t1.0-9/117597400_2977441522482931_5181357106986949233_n.jpg?_nc_cat=104&amp;_nc_sid=110474&amp;_nc_ohc=BVE0JgIGJRkAX_A34Ep&amp;_nc_ht=scontent.fsgn3-1.fna&amp;oh=aa074a651b66b25f085696311f1ed928&amp;oe=5F5C415C" style="height:960px; width:720px" /><img alt="" src="https://scontent.fsgn3-1.fna.fbcdn.net/v/t1.0-9/117601997_2977441502482933_3825680002431765106_n.jpg?_nc_cat=107&amp;_nc_sid=110474&amp;_nc_ohc=_laB6XC9HdUAX_VJAPS&amp;_nc_ht=scontent.fsgn3-1.fna&amp;oh=6190b5bf24f542a1fb1b23fa3c02fce2&amp;oe=5F5D4CDF" style="height:960px; width:720px" /><img alt="" src="https://scontent.fsgn3-1.fna.fbcdn.net/v/t1.0-9/117295046_2977441585816258_8624929675745734339_n.jpg?_nc_cat=106&amp;_nc_sid=110474&amp;_nc_ohc=cnNZ4gfujt4AX9QzTwa&amp;_nc_ht=scontent.fsgn3-1.fna&amp;oh=7b5e06beddc83c34e6793f3285c95d29&amp;oe=5F5BCC90" style="height:960px; width:720px" /></p>

<p><span style="font-size:22px"><span style="color:#e74c3c">LH:</span></span></p>

<p><span style="font-size:22px"><span style="color:#e74c3c">0968 101090 (&nbsp;gặp chủ )</span></span></p>
', CAST(N'2020-08-15 15:10:59.420' AS DateTime), CAST(N'2020-08-15 15:29:03.297' AS DateTime), 1, NULL, 1, 0, 1, 2, N'', N'', N'', NULL)
INSERT [dbo].[Project] ([id], [ProjectName], [Address], [Acreage], [Price], [Direction], [Width], [Height], [Juridical], [Thumbnail], [Description], [DateCreated], [DateUpdated], [UserCreated], [UserUpdated], [IsShow], [IsHighlights], [idType], [idCategory], [NumerOfBuilding], [NumberOfFloors], [Type], [IsSaled]) VALUES (28, N'[ Bán Nhà ] ngay sau chợ bình an', N'Trung Thắng , tx. Dĩ An (ngay sau chợ bình an)', N'64m vuông', N'', N'', NULL, NULL, N'Sổ Đỏ', N'/Content/Images/ThumbProject/117879717_943488149397145_1223256839460033810_n (1).jpg', N'<p><img alt="" src="https://scontent.fsgn4-1.fna.fbcdn.net/v/t1.0-9/117879717_943488149397145_1223256839460033810_n.jpg?_nc_cat=103&amp;_nc_sid=110474&amp;_nc_ohc=ssenVK4wJ7sAX-flRne&amp;_nc_ht=scontent.fsgn4-1.fna&amp;oh=868e8b4554f1a5bc6a5a97ad44313def&amp;oe=5F5EE59B" style="height:960px; width:542px" /><img alt="" src="https://scontent.fsgn8-1.fna.fbcdn.net/v/t1.0-9/117594524_943488196063807_2060193966460091112_n.jpg?_nc_cat=108&amp;_nc_sid=110474&amp;_nc_ohc=YGxb5YNQNsAAX8ks-rW&amp;_nc_ht=scontent.fsgn8-1.fna&amp;oh=d4ee33d6c4cc14f2a843bdc90cd14673&amp;oe=5F5D2E3B" style="height:918px; width:750px" /><img alt="" src="https://scontent.fsgn8-1.fna.fbcdn.net/v/t1.0-9/117387001_943488172730476_3807420994961165994_n.jpg?_nc_cat=110&amp;_nc_sid=110474&amp;_nc_ohc=rY3Qs28ZzeoAX9Ob9GV&amp;_nc_ht=scontent.fsgn8-1.fna&amp;oh=dfd56f2bf3e885d2816eb996ffed7483&amp;oe=5F5DDEFB" style="height:960px; width:720px" /></p>

<p><span style="color:#e74c3c"><span style="font-size:20px">Lh📞&nbsp;0962389400(Tuấn)</span></span></p>
', CAST(N'2020-08-15 15:14:32.530' AS DateTime), CAST(N'2020-08-15 15:28:54.873' AS DateTime), 1, NULL, 1, 0, 1, 2, N'', N'', N'', NULL)
INSERT [dbo].[Project] ([id], [ProjectName], [Address], [Acreage], [Price], [Direction], [Width], [Height], [Juridical], [Thumbnail], [Description], [DateCreated], [DateUpdated], [UserCreated], [UserUpdated], [IsShow], [IsHighlights], [idType], [idCategory], [NumerOfBuilding], [NumberOfFloors], [Type], [IsSaled]) VALUES (29, N'Bán 1 lô Dự án Tuấn Điền Phát', N'Tân Vĩnh Hiệp. Tân Uyên, Bình Dương', N'64,5m2', N'', N'', NULL, NULL, N'Sổ đỏ', N'/Content/Images/ThumbProject/116436600_936916616720965_687864780768532509_o.jpg', N'<p><img alt="" src="https://scontent.fsgn4-1.fna.fbcdn.net/v/t1.0-9/s960x960/116436600_936916616720965_687864780768532509_o.jpg?_nc_cat=101&amp;_nc_sid=110474&amp;_nc_ohc=0ETaXXqr1EUAX8eXOcb&amp;_nc_ht=scontent.fsgn4-1.fna&amp;_nc_tp=7&amp;oh=ec64cd3ccf30355682e350480573a180&amp;oe=5F5E206A" style="height:960px; width:432px" /></p>

<p><span style="color:#e74c3c"><span style="font-size:20px">Li&ecirc;n hệ 0962389400(Tuấn)</span></span></p>
', CAST(N'2020-08-15 15:16:56.560' AS DateTime), CAST(N'2020-08-15 15:28:47.310' AS DateTime), 1, NULL, 1, 0, 1, 2, N'', N'', N'', NULL)
INSERT [dbo].[Project] ([id], [ProjectName], [Address], [Acreage], [Price], [Direction], [Width], [Height], [Juridical], [Thumbnail], [Description], [DateCreated], [DateUpdated], [UserCreated], [UserUpdated], [IsShow], [IsHighlights], [idType], [idCategory], [NumerOfBuilding], [NumberOfFloors], [Type], [IsSaled]) VALUES (30, N'Bán đất nền Tân Long, Tân Đông Hiệp , Dĩ An, Bình Dương', N'Tân Long, Tân Đông Hiệp , Dĩ An, Bình Dương', N'5,5m*56', N'', N'', NULL, NULL, N'Sổ đỏ', N'/Content/Images/ThumbProject/109981838_2959080040985746_3345886285709281807_n.jpg', N'<p><img alt="" src="https://scontent.fsgn4-1.fna.fbcdn.net/v/t1.0-9/109981838_2959080040985746_3345886285709281807_n.jpg?_nc_cat=105&amp;_nc_sid=110474&amp;_nc_ohc=T5GkOJg_eXUAX_OLWoy&amp;_nc_ht=scontent.fsgn4-1.fna&amp;oh=b23598930472f2037d2893e14b44c3f2&amp;oe=5F5BAF63" style="height:960px; width:720px" /><img alt="" src="https://scontent.fsgn8-1.fna.fbcdn.net/v/t1.0-9/113710140_2959080027652414_3789419513284089629_n.jpg?_nc_cat=102&amp;_nc_sid=110474&amp;_nc_ohc=6kPrs8cZU3MAX_5-F9g&amp;_nc_ht=scontent.fsgn8-1.fna&amp;oh=fb1a3ff6961300975335555107c07f6e&amp;oe=5F5D2559" style="height:960px; width:720px" /></p>

<p><span style="font-size:48px"><span style="color:#e74c3c">LH 0968101090 Li&ecirc;n</span></span></p>
', CAST(N'2020-08-15 15:20:37.670' AS DateTime), CAST(N'2020-08-15 15:28:39.157' AS DateTime), 1, NULL, 1, 0, 1, 2, N'', N'', N'', NULL)
INSERT [dbo].[Project] ([id], [ProjectName], [Address], [Acreage], [Price], [Direction], [Width], [Height], [Juridical], [Thumbnail], [Description], [DateCreated], [DateUpdated], [UserCreated], [UserUpdated], [IsShow], [IsHighlights], [idType], [idCategory], [NumerOfBuilding], [NumberOfFloors], [Type], [IsSaled]) VALUES (31, N'Bán lô đất hai mặt tiền đường lý thường kiệt .thành phố dĩ an.bình dương', N'lý thường kiệt .thành phố dĩ an.bình dương', N'10 × 26', N'Giá công khai 90 triệu /m2 thương lượng', N'', NULL, NULL, N'Sổ đỏ', N'/Content/Images/ThumbProject/109566731_2657117454501106_5568575408937576412_o.jpg', N'<p><span style="font-size:20px">Khu vực đắc địa bu&ocirc;n b&aacute;n sầm uất nhất dĩ an.<br />
Gi&aacute; c&ocirc;ng khai 90 triệu /m2. C&ograve;n thương lượng</span></p>

<p><span style="font-size:20px"><img alt="" src="https://scontent.fsgn3-1.fna.fbcdn.net/v/t1.0-9/s960x960/107734642_2657117417834443_4489719485169320903_o.jpg?_nc_cat=107&amp;_nc_sid=110474&amp;_nc_ohc=Wyw_cWDg78UAX_H6yBO&amp;_nc_ht=scontent.fsgn3-1.fna&amp;_nc_tp=7&amp;oh=b7014794e08af3993aedcac172c6aab6&amp;oe=5F5B4BE2" style="height:960px; width:442px" /></span></p>

<p><span style="font-size:20px"><img alt="" src="https://scontent.fsgn4-1.fna.fbcdn.net/v/t1.0-9/s960x960/109566731_2657117454501106_5568575408937576412_o.jpg?_nc_cat=105&amp;_nc_sid=110474&amp;_nc_ohc=rhqmhEkWIU0AX_9xGa-&amp;_nc_ht=scontent.fsgn4-1.fna&amp;_nc_tp=7&amp;oh=2341e289fb9023fd703cca313339d486&amp;oe=5F5BC1A2" style="height:960px; width:443px" /></span><br />
<span style="color:#e74c3c"><span style="font-size:24px">LH : 0932.179.286</span></span></p>
', CAST(N'2020-08-15 15:24:13.857' AS DateTime), CAST(N'2020-08-15 15:28:14.560' AS DateTime), 1, NULL, 1, 0, 1, 2, N'', N'', N'', NULL)
INSERT [dbo].[Project] ([id], [ProjectName], [Address], [Acreage], [Price], [Direction], [Width], [Height], [Juridical], [Thumbnail], [Description], [DateCreated], [DateUpdated], [UserCreated], [UserUpdated], [IsShow], [IsHighlights], [idType], [idCategory], [NumerOfBuilding], [NumberOfFloors], [Type], [IsSaled]) VALUES (32, N'Bán đất nền 65m2 ở Tân Bình, Dĩ An', N'P. Tân Bình, thành phố Dĩ an.Cách Nguyễn Thị Minh Khai 200m', N'65m thổ cư', N'giá đầu tư 1 tỷ 7xx', N'', NULL, NULL, N'Sổ đỏ', N'/Content/Images/ThumbProject/109538251_2953972761496474_7498752328230601136_n.jpg', N'<p><img alt="" src="https://scontent.fsgn4-1.fna.fbcdn.net/v/t1.0-9/109538251_2953972761496474_7498752328230601136_n.jpg?_nc_cat=100&amp;_nc_sid=110474&amp;_nc_ohc=fcxJpl1u3sQAX8cNpJO&amp;_nc_ht=scontent.fsgn4-1.fna&amp;oh=c7000b250eb25fec48fd3d81cedac650&amp;oe=5F5C77E9" style="height:716px; width:960px" /></p>

<p><img alt="" src="https://scontent.fsgn8-1.fna.fbcdn.net/v/t1.0-9/109830523_2953972784829805_7720653439043013111_n.jpg?_nc_cat=108&amp;_nc_sid=110474&amp;_nc_ohc=PmaX8Qsi56YAX-Kfc4p&amp;_nc_ht=scontent.fsgn8-1.fna&amp;oh=a28b231047636791d268f8d055a33cb8&amp;oe=5F5C80D0" style="height:960px; width:720px" /></p>

<p><span style="color:#e74c3c"><span style="font-size:20px">LH: 0968.10.10.90</span></span></p>

<p><span style="color:#e74c3c"><span style="font-size:20px">&nbsp;0909.007.089 (Li&ecirc;n)</span></span></p>
', CAST(N'2020-08-15 15:28:03.357' AS DateTime), CAST(N'2020-08-15 15:29:44.780' AS DateTime), 1, NULL, 1, 0, 1, 2, N'', N'', N'', NULL)
INSERT [dbo].[Project] ([id], [ProjectName], [Address], [Acreage], [Price], [Direction], [Width], [Height], [Juridical], [Thumbnail], [Description], [DateCreated], [DateUpdated], [UserCreated], [UserUpdated], [IsShow], [IsHighlights], [idType], [idCategory], [NumerOfBuilding], [NumberOfFloors], [Type], [IsSaled]) VALUES (33, N'Bán đất Tân Bình , Dĩ An , Bình Dương', N'Tân Bình , Dĩ An , Bình Dương', N'98,9m2', N'', N'', NULL, NULL, N'Sổ đỏ', N'/Content/Images/ThumbProject/105944364_2939599372933813_4263897288738065182_n.jpg', N'<p><img alt="" src="https://scontent.fsgn4-1.fna.fbcdn.net/v/t1.0-9/105019239_2939599382933812_5875474859866973964_n.jpg?_nc_cat=100&amp;_nc_sid=110474&amp;_nc_ohc=uYZ5UrSyUY0AX9jQvgL&amp;_nc_ht=scontent.fsgn4-1.fna&amp;oh=79ac2d91dcce8d92ddf2ba0f2634fc90&amp;oe=5F5D502C" style="height:960px; width:720px" /><img alt="" src="https://scontent.fsgn8-1.fna.fbcdn.net/v/t1.0-9/105944364_2939599372933813_4263897288738065182_n.jpg?_nc_cat=109&amp;_nc_sid=110474&amp;_nc_ohc=zSBYiNSNxLwAX_gr2cd&amp;_nc_ht=scontent.fsgn8-1.fna&amp;oh=af492c38ac645c76d01410bed112ac75&amp;oe=5F5F0218" style="height:960px; width:720px" /></p>

<p><span style="font-size:24px"><span style="color:#e74c3c">Lh 0968101090</span></span></p>
', CAST(N'2020-08-15 15:57:56.827' AS DateTime), NULL, 1, NULL, 1, 0, 1, 2, N'', N'', N'', NULL)
INSERT [dbo].[Project] ([id], [ProjectName], [Address], [Acreage], [Price], [Direction], [Width], [Height], [Juridical], [Thumbnail], [Description], [DateCreated], [DateUpdated], [UserCreated], [UserUpdated], [IsShow], [IsHighlights], [idType], [idCategory], [NumerOfBuilding], [NumberOfFloors], [Type], [IsSaled]) VALUES (34, N'Bán đất đường Vũ Việt , Tân Bình Dĩ An', N'Bán đất đường Vũ Việt , Tân Bình Dĩ An', N'547,1m2', N'13 triệu/ 1m có thương lượng', N'', NULL, NULL, N'Sổ đỏ', N'/Content/Images/ThumbProject/bdfa04fb6963953dcc72.jpg', N'<p><img alt="" src="https://f4.photo.talk.zdn.vn/6613309953955137807/bb8ef3b49e2c62723b3d.jpg" style="height:960px; width:1280px" /></p>
', CAST(N'2020-08-15 16:03:33.217' AS DateTime), NULL, 1, NULL, 1, 0, 1, 2, N'', N'', N'', NULL)
INSERT [dbo].[Project] ([id], [ProjectName], [Address], [Acreage], [Price], [Direction], [Width], [Height], [Juridical], [Thumbnail], [Description], [DateCreated], [DateUpdated], [UserCreated], [UserUpdated], [IsShow], [IsHighlights], [idType], [idCategory], [NumerOfBuilding], [NumberOfFloors], [Type], [IsSaled]) VALUES (35, N'Bán 4 nhà trọ địa chỉ kp thống nhất 1', N'kp thống nhất 1', N'', N'1 tỷ 7', N'', NULL, NULL, N'sổ đỏ ', N'/Content/Images/ThumbProject/43f1b963d6fb2aa573ea.jpg', N'<p><img alt="" src="https://f17-zpc.zdn.vn/2945526360569379921/01b8435d2cc5d09b89d4.jpg" style="height:1280px; width:960px" /><img alt="" src="https://f11.photo.talk.zdn.vn/3714691367339371848/40a1b344dcdc208279cd.jpg" style="height:1280px; width:960px" /><img alt="" src="https://f12.photo.talk.zdn.vn/6225766714345864611/693237d7584fa411fd5e.jpg" style="height:1280px; width:960px" /><img alt="" src="https://f8.photo.talk.zdn.vn/3936875609053728667/ceaa664f09d7f589acc6.jpg" style="height:1280px; width:960px" /><img alt="" src="https://f5.photo.talk.zdn.vn/5959138579357454623/ca086eed0175fd2ba464.jpg" style="height:1280px; width:960px" /><img alt="" src="https://f3.photo.talk.zdn.vn/8495192933251013062/299c8f79e0e11cbf45f0.jpg" style="height:1280px; width:960px" /><img alt="" src="https://f11.photo.talk.zdn.vn/7996143504635183502/3304aee1c1793d276468.jpg" style="height:1280px; width:960px" /><img alt="" src="https://f7.photo.talk.zdn.vn/1354838466656183279/216a1d8e72168e48d707.jpg" style="height:1280px; width:960px" /></p>

<p><span style="font-size:48px"><span style="color:#e74c3c">LH: 0968.10.10.90</span></span></p>

<p><span style="font-size:48px"><span style="color:#e74c3c">&nbsp;0909.007.089 (Li&ecirc;n)</span></span></p>

<p>&nbsp;</p>

<p><strong><span style="color:#e74c3c"><span style="font-size:48px">Li&ecirc;n hệ sớm</span></span></strong></p>

<p>&nbsp;</p>
', CAST(N'2020-08-15 16:08:43.357' AS DateTime), CAST(N'2020-08-16 11:46:25.060' AS DateTime), 1, NULL, 1, 0, 1, 1, N'', N'', N'', NULL)
SET IDENTITY_INSERT [dbo].[Project] OFF
SET IDENTITY_INSERT [dbo].[ProjectImages] ON 

INSERT [dbo].[ProjectImages] ([id], [idProject], [ImageUrl], [DateCreate]) VALUES (3, 19, N'/Content/Images/ProjectImage/Avatar-Daopv.jpg', CAST(N'2020-08-08 17:28:25.413' AS DateTime))
INSERT [dbo].[ProjectImages] ([id], [idProject], [ImageUrl], [DateCreate]) VALUES (5, 19, N'/Content/Images/ProjectImage/Banner.jpg', CAST(N'2020-08-08 17:47:58.813' AS DateTime))
INSERT [dbo].[ProjectImages] ([id], [idProject], [ImageUrl], [DateCreate]) VALUES (6, 19, N'/Content/Images/ProjectImage/ocb.jpg', CAST(N'2020-08-08 17:48:29.210' AS DateTime))
INSERT [dbo].[ProjectImages] ([id], [idProject], [ImageUrl], [DateCreate]) VALUES (7, 20, N'/Content/Images/ProjectImage/9ecd2566f8f705a95ce6-1593830374591874099600-crop-15938303826941919397094.jpg', CAST(N'2020-08-08 18:28:45.647' AS DateTime))
INSERT [dbo].[ProjectImages] ([id], [idProject], [ImageUrl], [DateCreate]) VALUES (8, 20, N'/Content/Images/ProjectImage/maxresdefault.jpg', CAST(N'2020-08-08 18:28:58.963' AS DateTime))
SET IDENTITY_INSERT [dbo].[ProjectImages] OFF
USE [master]
GO
ALTER DATABASE [bdhls_test] SET  READ_WRITE 
GO
