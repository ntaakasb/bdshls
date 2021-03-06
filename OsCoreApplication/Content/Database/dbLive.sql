USE [master]
GO
/****** Object:  Database [HoangLienSonDB]    Script Date: 8/8/2020 6:14:34 PM ******/
CREATE DATABASE [HoangLienSonDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HoangLienSonDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\HoangLienSonDB.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'HoangLienSonDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\HoangLienSonDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [HoangLienSonDB] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HoangLienSonDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HoangLienSonDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HoangLienSonDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HoangLienSonDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HoangLienSonDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HoangLienSonDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [HoangLienSonDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [HoangLienSonDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HoangLienSonDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HoangLienSonDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HoangLienSonDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HoangLienSonDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HoangLienSonDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HoangLienSonDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HoangLienSonDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HoangLienSonDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [HoangLienSonDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HoangLienSonDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HoangLienSonDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HoangLienSonDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HoangLienSonDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HoangLienSonDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HoangLienSonDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HoangLienSonDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [HoangLienSonDB] SET  MULTI_USER 
GO
ALTER DATABASE [HoangLienSonDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HoangLienSonDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HoangLienSonDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HoangLienSonDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [HoangLienSonDB] SET DELAYED_DURABILITY = DISABLED 
GO
USE [HoangLienSonDB]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 8/8/2020 6:14:34 PM ******/
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
/****** Object:  Table [dbo].[Banner]    Script Date: 8/8/2020 6:14:34 PM ******/
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
/****** Object:  Table [dbo].[Category]    Script Date: 8/8/2020 6:14:34 PM ******/
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
/****** Object:  Table [dbo].[ConfigWeb]    Script Date: 8/8/2020 6:14:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConfigWeb](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[KeyConfig] [nvarchar](50) NULL,
	[Type] [nvarchar](50) NULL,
	[ValueConfig] [nvarchar](500) NULL,
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
/****** Object:  Table [dbo].[Contact]    Script Date: 8/8/2020 6:14:34 PM ******/
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
/****** Object:  Table [dbo].[News]    Script Date: 8/8/2020 6:14:34 PM ******/
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
/****** Object:  Table [dbo].[NewsCategory]    Script Date: 8/8/2020 6:14:34 PM ******/
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
/****** Object:  Table [dbo].[Project]    Script Date: 8/8/2020 6:14:34 PM ******/
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
/****** Object:  Table [dbo].[ProjectImages]    Script Date: 8/8/2020 6:14:34 PM ******/
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

INSERT [dbo].[Banner] ([id], [ImageUrl], [IsShow], [DateCreated], [DateUpdated], [UserCreated], [UserUpdated]) VALUES (2, N'/Content/Images/Banner/Banner2.jpg', 1, CAST(N'2020-06-24 00:00:00.000' AS DateTime), NULL, 1, NULL)
INSERT [dbo].[Banner] ([id], [ImageUrl], [IsShow], [DateCreated], [DateUpdated], [UserCreated], [UserUpdated]) VALUES (3, N'/Content/Images/Banner/Banner1.jpg', 1, CAST(N'2020-06-24 00:00:00.000' AS DateTime), NULL, 1, NULL)
INSERT [dbo].[Banner] ([id], [ImageUrl], [IsShow], [DateCreated], [DateUpdated], [UserCreated], [UserUpdated]) VALUES (4, N'/Content/Images/Banner/Banner2.jpg', 1, CAST(N'2020-06-24 00:00:00.000' AS DateTime), NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Banner] OFF
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([idCategory], [CategoryName], [DateCreated], [DateUpdated], [UserCreated], [UserUpdated]) VALUES (1, N'Nhà đất cần bán', CAST(N'2020-06-24 00:00:00.000' AS DateTime), NULL, 1, NULL)
INSERT [dbo].[Category] ([idCategory], [CategoryName], [DateCreated], [DateUpdated], [UserCreated], [UserUpdated]) VALUES (2, N'Nhà đất cho thuê', CAST(N'2020-06-24 00:00:00.000' AS DateTime), NULL, 1, NULL)
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[ConfigWeb] ON 

INSERT [dbo].[ConfigWeb] ([id], [KeyConfig], [Type], [ValueConfig], [NameConfig], [DateCreated], [DateUpdated], [UserCreated], [UserUpdated]) VALUES (1, N'SLG_ABOUT', N'HOME', N'Bất động sản Hoàng Liên Sơn sẽ hỗ trợ mọi nhu cầu của bạn', N'Slogon', CAST(N'2020-06-24 15:09:36.723' AS DateTime), CAST(N'2020-07-02 16:35:25.387' AS DateTime), NULL, NULL)
INSERT [dbo].[ConfigWeb] ([id], [KeyConfig], [Type], [ValueConfig], [NameConfig], [DateCreated], [DateUpdated], [UserCreated], [UserUpdated]) VALUES (2, N'CONTENT_ABOUT', N'HOME', N'Với nhiều năm kinh nghiệm trong lĩnh vực bất động sản cùng đội ngũ nhân lực chuyên nghiệp, bất động sản Hoàng Liên Sơn sẽ hỗ trợ mua bán, tư vấn, tìm hiểu về bất động sản mọi lúc mọi nơi. Hãy liên hệ ngay với chúng tôi nếu bạn có nhu cầu.', N'Nội Dung Giới Thiệu', CAST(N'2020-06-24 15:09:36.723' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ConfigWeb] ([id], [KeyConfig], [Type], [ValueConfig], [NameConfig], [DateCreated], [DateUpdated], [UserCreated], [UserUpdated]) VALUES (3, N'CONTACT_INFO_PHONE', N'LAYOUT', N'0343324610', N'Điện thoại liên hệ', CAST(N'2020-06-25 14:34:17.200' AS DateTime), NULL, NULL, NULL)
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
SET IDENTITY_INSERT [dbo].[Project] OFF
SET IDENTITY_INSERT [dbo].[ProjectImages] ON 

INSERT [dbo].[ProjectImages] ([id], [idProject], [ImageUrl], [DateCreate]) VALUES (3, 19, N'/Content/Images/ProjectImage/Avatar-Daopv.jpg', CAST(N'2020-08-08 17:28:25.413' AS DateTime))
INSERT [dbo].[ProjectImages] ([id], [idProject], [ImageUrl], [DateCreate]) VALUES (5, 19, N'/Content/Images/ProjectImage/Banner.jpg', CAST(N'2020-08-08 17:47:58.813' AS DateTime))
INSERT [dbo].[ProjectImages] ([id], [idProject], [ImageUrl], [DateCreate]) VALUES (6, 19, N'/Content/Images/ProjectImage/ocb.jpg', CAST(N'2020-08-08 17:48:29.210' AS DateTime))
SET IDENTITY_INSERT [dbo].[ProjectImages] OFF
USE [master]
GO
ALTER DATABASE [HoangLienSonDB] SET  READ_WRITE 
GO
