USE [master]
GO
/****** Object:  Database [AssignmentDB]    Script Date: 3/14/2017 6:07:51 PM ******/
CREATE DATABASE [AssignmentDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AssignmentDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS2014\MSSQL\DATA\AssignmentDB.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'AssignmentDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS2014\MSSQL\DATA\AssignmentDB_log.ldf' , SIZE = 816KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [AssignmentDB] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AssignmentDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AssignmentDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AssignmentDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AssignmentDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AssignmentDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AssignmentDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [AssignmentDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [AssignmentDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AssignmentDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AssignmentDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AssignmentDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AssignmentDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AssignmentDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AssignmentDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AssignmentDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AssignmentDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [AssignmentDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AssignmentDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AssignmentDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AssignmentDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AssignmentDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AssignmentDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AssignmentDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AssignmentDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [AssignmentDB] SET  MULTI_USER 
GO
ALTER DATABASE [AssignmentDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AssignmentDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AssignmentDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AssignmentDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [AssignmentDB] SET DELAYED_DURABILITY = DISABLED 
GO
USE [AssignmentDB]
GO
/****** Object:  Table [dbo].[AboutUs]    Script Date: 3/14/2017 6:07:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AboutUs](
	[AboutID] [nvarchar](10) NOT NULL,
	[FullName] [nvarchar](100) NOT NULL,
	[Address] [nvarchar](150) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[DateInsert] [date] NOT NULL,
	[Hotline] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_AboutUs] PRIMARY KEY CLUSTERED 
(
	[AboutID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Account]    Script Date: 3/14/2017 6:07:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[IdAccount] [nvarchar](10) NOT NULL,
	[Username] [nvarchar](20) NOT NULL,
	[Password] [nvarchar](30) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[DescriptionUser] [nvarchar](500) NULL,
	[FacebookURL] [nvarchar](500) NULL,
	[Address] [nvarchar](150) NULL,
 CONSTRAINT [PK_Account_1] PRIMARY KEY CLUSTERED 
(
	[IdAccount] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Bidy]    Script Date: 3/14/2017 6:07:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bidy](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdAccount] [nvarchar](10) NOT NULL,
	[IdProduct] [nvarchar](10) NOT NULL,
	[Price] [float] NOT NULL,
	[BidTime] [datetime] NOT NULL,
 CONSTRAINT [PK_Bidy] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Category]    Script Date: 3/14/2017 6:07:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryID] [nvarchar](10) NOT NULL,
	[CategoryName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Contact]    Script Date: 3/14/2017 6:07:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[DateSend] [datetime] NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Fullname] [nvarchar](50) NOT NULL,
	[ContentMessage] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[DateSend] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[InRole]    Script Date: 3/14/2017 6:07:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InRole](
	[IdAccount] [nvarchar](10) NOT NULL,
	[TypeID] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_InRole] PRIMARY KEY CLUSTERED 
(
	[IdAccount] ASC,
	[TypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 3/14/2017 6:07:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[IdProduct] [nvarchar](10) NOT NULL,
	[Name] [nvarchar](30) NOT NULL,
	[MinPrice] [float] NOT NULL,
	[BaseDescription] [nvarchar](max) NOT NULL,
	[TimeBegin] [datetime] NOT NULL,
	[TimeEnd] [datetime] NOT NULL,
	[MinPriceStep] [float] NOT NULL,
	[ImageURL] [nvarchar](max) NOT NULL,
	[Status] [int] NOT NULL,
	[FirstPrice] [float] NULL,
	[CategoryID] [nvarchar](10) NOT NULL,
	[TopPrice] [float] NULL,
	[BidyCount] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[IdProduct] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TradingGuide]    Script Date: 3/14/2017 6:07:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TradingGuide](
	[DescriptionBid] [nvarchar](max) NOT NULL,
	[Hotline] [nvarchar](20) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TypeRole]    Script Date: 3/14/2017 6:07:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeRole](
	[TypeID] [nvarchar](10) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TypeRole] PRIMARY KEY CLUSTERED 
(
	[TypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Account] ([IdAccount], [Username], [Password], [Email], [DescriptionUser], [FacebookURL], [Address]) VALUES (N'AC0001', N'doitsu2014', N'duc123', N'thd1152018@gmail.com', N'FA all of time', NULL, N'66 Huynh Tinh Cua')
SET IDENTITY_INSERT [dbo].[Bidy] ON 

INSERT [dbo].[Bidy] ([Id], [IdAccount], [IdProduct], [Price], [BidTime]) VALUES (1, N'AC0001', N'PRO007', 500, CAST(N'2017-08-03 00:00:00.000' AS DateTime))
INSERT [dbo].[Bidy] ([Id], [IdAccount], [IdProduct], [Price], [BidTime]) VALUES (4, N'AC0001', N'PRO008', 1000, CAST(N'2017-08-03 00:00:00.000' AS DateTime))
INSERT [dbo].[Bidy] ([Id], [IdAccount], [IdProduct], [Price], [BidTime]) VALUES (5, N'AC0001', N'PRO009', 1000, CAST(N'2017-08-03 00:00:00.000' AS DateTime))
INSERT [dbo].[Bidy] ([Id], [IdAccount], [IdProduct], [Price], [BidTime]) VALUES (6, N'AC0001', N'PRO007', 500, CAST(N'2017-08-03 00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Bidy] OFF
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (N'CATE01', N'Xe dua')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (N'CATE02', N'Xe co dien')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (N'CATE03', N'Xe tank')
INSERT [dbo].[Product] ([IdProduct], [Name], [MinPrice], [BaseDescription], [TimeBegin], [TimeEnd], [MinPriceStep], [ImageURL], [Status], [FirstPrice], [CategoryID], [TopPrice], [BidyCount]) VALUES (N'PRO001', N'2008 Lancer Evolution', 100, N'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.', CAST(N'2017-03-10 00:00:00.000' AS DateTime), CAST(N'2017-03-14 23:00:00.000' AS DateTime), 20, N'/Content/images/1%20(1).png', 0, 0, N'CATE01', 0, 0)
INSERT [dbo].[Product] ([IdProduct], [Name], [MinPrice], [BaseDescription], [TimeBegin], [TimeEnd], [MinPriceStep], [ImageURL], [Status], [FirstPrice], [CategoryID], [TopPrice], [BidyCount]) VALUES (N'PRO002', N'Bone Speeder', 100, N'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.', CAST(N'2017-03-10 00:00:00.000' AS DateTime), CAST(N'2017-03-14 21:00:00.000' AS DateTime), 20, N'/Content/images/1%20(2).png', 0, 0, N'CATE01', 0, 0)
INSERT [dbo].[Product] ([IdProduct], [Name], [MinPrice], [BaseDescription], [TimeBegin], [TimeEnd], [MinPriceStep], [ImageURL], [Status], [FirstPrice], [CategoryID], [TopPrice], [BidyCount]) VALUES (N'PRO003', N'Formula Flashback', 100, N'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.', CAST(N'2017-03-10 00:00:00.000' AS DateTime), CAST(N'2017-03-14 18:00:00.000' AS DateTime), 20, N'/Content/images/1%20(3).png', 0, 0, N'CATE01', 0, 0)
INSERT [dbo].[Product] ([IdProduct], [Name], [MinPrice], [BaseDescription], [TimeBegin], [TimeEnd], [MinPriceStep], [ImageURL], [Status], [FirstPrice], [CategoryID], [TopPrice], [BidyCount]) VALUES (N'PRO004', N'2016 Camaro SS', 120, N'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.', CAST(N'2017-03-18 00:00:00.000' AS DateTime), CAST(N'2017-03-20 00:00:00.000' AS DateTime), 20, N'/Content/images/2016CamaroSS/1.jpg', 0, 0, N'CATE01', 0, 0)
INSERT [dbo].[Product] ([IdProduct], [Name], [MinPrice], [BaseDescription], [TimeBegin], [TimeEnd], [MinPriceStep], [ImageURL], [Status], [FirstPrice], [CategoryID], [TopPrice], [BidyCount]) VALUES (N'PRO005', N'Batmobile', 80, N'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.', CAST(N'2017-03-16 00:00:00.000' AS DateTime), CAST(N'2017-03-20 00:00:00.000' AS DateTime), 20, N'/Content/images/Batmobile/1.jpg', 0, 0, N'CATE01', 0, 0)
INSERT [dbo].[Product] ([IdProduct], [Name], [MinPrice], [BaseDescription], [TimeBegin], [TimeEnd], [MinPriceStep], [ImageURL], [Status], [FirstPrice], [CategoryID], [TopPrice], [BidyCount]) VALUES (N'PRO006', N'Porsche 356 A Outlaw', 90, N'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.', CAST(N'2017-03-17 00:00:00.000' AS DateTime), CAST(N'2017-03-20 00:00:00.000' AS DateTime), 20, N'/Content/images/Porsche356AOutlaw/1.jpg', 0, 0, N'CATE01', 0, 0)
INSERT [dbo].[Product] ([IdProduct], [Name], [MinPrice], [BaseDescription], [TimeBegin], [TimeEnd], [MinPriceStep], [ImageURL], [Status], [FirstPrice], [CategoryID], [TopPrice], [BidyCount]) VALUES (N'PRO007', N'Nissan Skyline GT-R (R34)', 80, N'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.', CAST(N'2017-03-05 00:00:00.000' AS DateTime), CAST(N'2017-03-10 00:00:00.000' AS DateTime), 20, N'/Content/images/Porsche356AOutlaw/1.jpg', 0, 0, N'CATE01', 1000, 2)
INSERT [dbo].[Product] ([IdProduct], [Name], [MinPrice], [BaseDescription], [TimeBegin], [TimeEnd], [MinPriceStep], [ImageURL], [Status], [FirstPrice], [CategoryID], [TopPrice], [BidyCount]) VALUES (N'PRO008', N'Lamborghini Veneno', 80, N'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.', CAST(N'2017-03-05 00:00:00.000' AS DateTime), CAST(N'2017-03-10 00:00:00.000' AS DateTime), 20, N'/Content/images/LamborghiniVeneno/1.jpg', 0, 0, N'CATE01', 1000, 1)
INSERT [dbo].[Product] ([IdProduct], [Name], [MinPrice], [BaseDescription], [TimeBegin], [TimeEnd], [MinPriceStep], [ImageURL], [Status], [FirstPrice], [CategoryID], [TopPrice], [BidyCount]) VALUES (N'PRO009', N'1970 Dodge Charger RT', 80, N'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.', CAST(N'2017-03-05 00:00:00.000' AS DateTime), CAST(N'2017-03-10 00:00:00.000' AS DateTime), 20, N'/Content/images/1970DodgeChargerRT/1.jpg', 0, 0, N'CATE01', 1000, 1)
ALTER TABLE [dbo].[Bidy]  WITH CHECK ADD  CONSTRAINT [FK_Bidy_Account] FOREIGN KEY([IdAccount])
REFERENCES [dbo].[Account] ([IdAccount])
GO
ALTER TABLE [dbo].[Bidy] CHECK CONSTRAINT [FK_Bidy_Account]
GO
ALTER TABLE [dbo].[Bidy]  WITH CHECK ADD  CONSTRAINT [FK_Bidy_Product] FOREIGN KEY([IdProduct])
REFERENCES [dbo].[Product] ([IdProduct])
GO
ALTER TABLE [dbo].[Bidy] CHECK CONSTRAINT [FK_Bidy_Product]
GO
ALTER TABLE [dbo].[InRole]  WITH CHECK ADD  CONSTRAINT [FK_InRole_Account] FOREIGN KEY([IdAccount])
REFERENCES [dbo].[Account] ([IdAccount])
GO
ALTER TABLE [dbo].[InRole] CHECK CONSTRAINT [FK_InRole_Account]
GO
ALTER TABLE [dbo].[InRole]  WITH CHECK ADD  CONSTRAINT [FK_InRole_TypeRole] FOREIGN KEY([TypeID])
REFERENCES [dbo].[TypeRole] ([TypeID])
GO
ALTER TABLE [dbo].[InRole] CHECK CONSTRAINT [FK_InRole_TypeRole]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([CategoryID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
USE [master]
GO
ALTER DATABASE [AssignmentDB] SET  READ_WRITE 
GO
