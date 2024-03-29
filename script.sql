USE [master]
GO
/****** Object:  Database [Wardrobe]    Script Date: 10/21/2016 11:03:31 AM ******/
CREATE DATABASE [Wardrobe]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Wardrobe', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Wardrobe.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Wardrobe_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Wardrobe_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Wardrobe] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Wardrobe].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Wardrobe] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Wardrobe] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Wardrobe] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Wardrobe] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Wardrobe] SET ARITHABORT OFF 
GO
ALTER DATABASE [Wardrobe] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Wardrobe] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Wardrobe] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Wardrobe] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Wardrobe] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Wardrobe] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Wardrobe] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Wardrobe] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Wardrobe] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Wardrobe] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Wardrobe] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Wardrobe] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Wardrobe] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Wardrobe] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Wardrobe] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Wardrobe] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Wardrobe] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Wardrobe] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Wardrobe] SET  MULTI_USER 
GO
ALTER DATABASE [Wardrobe] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Wardrobe] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Wardrobe] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Wardrobe] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Wardrobe] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Wardrobe]
GO
/****** Object:  Table [dbo].[Accessories]    Script Date: 10/21/2016 11:03:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accessories](
	[AccessoryID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Photo] [nvarchar](50) NULL,
	[Type] [nchar](10) NOT NULL,
	[Style] [nchar](10) NOT NULL,
	[PrimaryColor] [nchar](20) NOT NULL,
	[SecondaryColor] [nchar](20) NULL,
	[Pattern] [nchar](20) NULL,
	[Season] [nchar](10) NULL,
	[Occasion] [nchar](10) NULL,
 CONSTRAINT [PK_Accessories] PRIMARY KEY CLUSTERED 
(
	[AccessoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Bottoms]    Script Date: 10/21/2016 11:03:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bottoms](
	[BottomID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Photo] [nvarchar](50) NULL,
	[Type] [nchar](10) NOT NULL,
	[Style] [nchar](20) NULL,
	[Length] [nchar](10) NULL,
	[PrimaryColor] [nchar](20) NOT NULL,
	[SecondaryColor] [nchar](20) NULL,
	[Pattern] [nchar](20) NULL,
	[Season] [nchar](10) NULL,
	[Occasion] [nchar](10) NULL,
 CONSTRAINT [PK_Bottoms] PRIMARY KEY CLUSTERED 
(
	[BottomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Outfits]    Script Date: 10/21/2016 11:03:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Outfits](
	[OutfitID] [int] IDENTITY(1,1) NOT NULL,
	[TopID] [int] NOT NULL,
	[BottomID] [int] NOT NULL,
	[ShoeID] [int] NOT NULL,
	[AccessoryID] [int] NULL,
	[Description] [nvarchar](50) NULL,
	[Occassion] [nchar](10) NULL,
 CONSTRAINT [PK_Outfits] PRIMARY KEY CLUSTERED 
(
	[OutfitID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Shoes]    Script Date: 10/21/2016 11:03:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shoes](
	[ShoeID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Photo] [nvarchar](50) NULL,
	[Type] [nchar](10) NOT NULL,
	[Style] [nchar](20) NULL,
	[PrimaryColor] [nchar](20) NOT NULL,
	[SecondaryColor] [nchar](20) NULL,
	[Season] [nchar](10) NULL,
	[Occasion] [nchar](10) NULL,
 CONSTRAINT [PK_Shoes] PRIMARY KEY CLUSTERED 
(
	[ShoeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tops]    Script Date: 10/21/2016 11:03:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tops](
	[TopID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Photo] [nvarchar](50) NULL,
	[Type] [nchar](10) NOT NULL,
	[Sleave] [nchar](10) NULL,
	[Neckline] [nchar](10) NULL,
	[PrimaryColor] [nchar](20) NOT NULL,
	[SecondaryColor] [nchar](20) NULL,
	[Pattern] [nchar](20) NULL,
	[Season] [nchar](10) NULL,
	[Occasion] [nchar](10) NULL,
 CONSTRAINT [PK_Tops] PRIMARY KEY CLUSTERED 
(
	[TopID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Bottoms] ON 

INSERT [dbo].[Bottoms] ([BottomID], [Name], [Photo], [Type], [Style], [Length], [PrimaryColor], [SecondaryColor], [Pattern], [Season], [Occasion]) VALUES (1, N'jeans', N'~/Content/images/jeans.jpg', N'Bottom    ', NULL, NULL, N'indigo              ', NULL, NULL, NULL, N'casual    ')
INSERT [dbo].[Bottoms] ([BottomID], [Name], [Photo], [Type], [Style], [Length], [PrimaryColor], [SecondaryColor], [Pattern], [Season], [Occasion]) VALUES (2, N'chinos', N'~/Content/images/chinos.jpg', N'Bottom    ', NULL, NULL, N'khaki               ', NULL, NULL, NULL, N'dress     ')
INSERT [dbo].[Bottoms] ([BottomID], [Name], [Photo], [Type], [Style], [Length], [PrimaryColor], [SecondaryColor], [Pattern], [Season], [Occasion]) VALUES (3, N'kilt', N'~/Content/images/kilt.jpg', N'Bottom    ', NULL, N'below knee', N'black               ', N'red                 ', N'tartan              ', NULL, N'formal    ')
INSERT [dbo].[Bottoms] ([BottomID], [Name], [Photo], [Type], [Style], [Length], [PrimaryColor], [SecondaryColor], [Pattern], [Season], [Occasion]) VALUES (4, N'shorts', N'~/Content/images/shorts.jpg', N'Bottom    ', N'bermuda             ', N'above knee', N'dark blue           ', NULL, N'solid               ', NULL, N'casual    ')
SET IDENTITY_INSERT [dbo].[Bottoms] OFF
SET IDENTITY_INSERT [dbo].[Outfits] ON 

INSERT [dbo].[Outfits] ([OutfitID], [TopID], [BottomID], [ShoeID], [AccessoryID], [Description], [Occassion]) VALUES (1, 4, 1, 3, NULL, N'blue outfit', NULL)
INSERT [dbo].[Outfits] ([OutfitID], [TopID], [BottomID], [ShoeID], [AccessoryID], [Description], [Occassion]) VALUES (2, 6, 4, 2, NULL, N'lightweight', N'summer    ')
SET IDENTITY_INSERT [dbo].[Outfits] OFF
SET IDENTITY_INSERT [dbo].[Shoes] ON 

INSERT [dbo].[Shoes] ([ShoeID], [Name], [Photo], [Type], [Style], [PrimaryColor], [SecondaryColor], [Season], [Occasion]) VALUES (1, N'Loafers', N'~/Content/images/loafers.jpg', N'Shoe      ', NULL, N'brown               ', NULL, NULL, N'dress     ')
INSERT [dbo].[Shoes] ([ShoeID], [Name], [Photo], [Type], [Style], [PrimaryColor], [SecondaryColor], [Season], [Occasion]) VALUES (2, N'sandals', N'~/Content/images/sandals.jpg', N'Shoe      ', NULL, N'black               ', NULL, N'summer    ', N'casual    ')
INSERT [dbo].[Shoes] ([ShoeID], [Name], [Photo], [Type], [Style], [PrimaryColor], [SecondaryColor], [Season], [Occasion]) VALUES (3, N'mocs', N'~/Content/images/mocs.jpg', N'Shoe      ', NULL, N'brown               ', NULL, N'summer    ', N'casual    ')
INSERT [dbo].[Shoes] ([ShoeID], [Name], [Photo], [Type], [Style], [PrimaryColor], [SecondaryColor], [Season], [Occasion]) VALUES (4, N'snow boot', N'~/Content/images/boot.jpg', N'Shoe      ', N'above ankle         ', N'tan                 ', NULL, N'winter    ', N'casual    ')
SET IDENTITY_INSERT [dbo].[Shoes] OFF
SET IDENTITY_INSERT [dbo].[Tops] ON 

INSERT [dbo].[Tops] ([TopID], [Name], [Photo], [Type], [Sleave], [Neckline], [PrimaryColor], [SecondaryColor], [Pattern], [Season], [Occasion]) VALUES (2, N'tshirt', N'~/Content/images/t-shirt.jpg', N'Top       ', N'short     ', N'crew      ', N'red                 ', NULL, N'solid               ', NULL, N'casual    ')
INSERT [dbo].[Tops] ([TopID], [Name], [Photo], [Type], [Sleave], [Neckline], [PrimaryColor], [SecondaryColor], [Pattern], [Season], [Occasion]) VALUES (3, N'Plaid flannel shirt', N'~/Content/images/flannel.jpg', N'Top       ', N'long      ', N'button-up ', N'green               ', NULL, N'plaid               ', N'winter    ', N'casual    ')
INSERT [dbo].[Tops] ([TopID], [Name], [Photo], [Type], [Sleave], [Neckline], [PrimaryColor], [SecondaryColor], [Pattern], [Season], [Occasion]) VALUES (4, N'long sleeve T-shirt', N'~/Content/images/t-shirt-long.jpg', N'Top       ', N'long      ', N'crew      ', N'blue                ', NULL, N'solid               ', NULL, N'casual    ')
INSERT [dbo].[Tops] ([TopID], [Name], [Photo], [Type], [Sleave], [Neckline], [PrimaryColor], [SecondaryColor], [Pattern], [Season], [Occasion]) VALUES (5, N'polo windowpane', N'~/Content/images/polo-windowpane.jpg', N'Top       ', N'short     ', NULL, N'red                 ', NULL, N'windowpane          ', N'summer    ', N'casual    ')
INSERT [dbo].[Tops] ([TopID], [Name], [Photo], [Type], [Sleave], [Neckline], [PrimaryColor], [SecondaryColor], [Pattern], [Season], [Occasion]) VALUES (6, N'madras', N'~/Content/images/madras.jpg', N'Top       ', N'short     ', N'button-up ', N'blue                ', N'red                 ', N'plaid               ', N'summer    ', N'casual    ')
SET IDENTITY_INSERT [dbo].[Tops] OFF
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Accessories] FOREIGN KEY([AccessoryID])
REFERENCES [dbo].[Accessories] ([AccessoryID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Accessories]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Bottoms] FOREIGN KEY([BottomID])
REFERENCES [dbo].[Bottoms] ([BottomID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Bottoms]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Shoes] FOREIGN KEY([ShoeID])
REFERENCES [dbo].[Shoes] ([ShoeID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Shoes]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Tops] FOREIGN KEY([TopID])
REFERENCES [dbo].[Tops] ([TopID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Tops]
GO
USE [master]
GO
ALTER DATABASE [Wardrobe] SET  READ_WRITE 
GO
