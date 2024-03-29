USE [master]
GO
/****** Object:  Database [HomeGrocery]    Script Date: 18-12-2019 05:24:08 PM ******/
CREATE DATABASE [HomeGrocery]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HomeGrocery', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\HomeGrocery.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'HomeGrocery_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\HomeGrocery_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [HomeGrocery] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HomeGrocery].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HomeGrocery] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HomeGrocery] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HomeGrocery] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HomeGrocery] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HomeGrocery] SET ARITHABORT OFF 
GO
ALTER DATABASE [HomeGrocery] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [HomeGrocery] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HomeGrocery] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HomeGrocery] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HomeGrocery] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HomeGrocery] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HomeGrocery] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HomeGrocery] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HomeGrocery] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HomeGrocery] SET  DISABLE_BROKER 
GO
ALTER DATABASE [HomeGrocery] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HomeGrocery] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HomeGrocery] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HomeGrocery] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HomeGrocery] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HomeGrocery] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HomeGrocery] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HomeGrocery] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [HomeGrocery] SET  MULTI_USER 
GO
ALTER DATABASE [HomeGrocery] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HomeGrocery] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HomeGrocery] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HomeGrocery] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [HomeGrocery] SET DELAYED_DURABILITY = DISABLED 
GO
USE [HomeGrocery]
GO
/****** Object:  Table [dbo].[Grocery]    Script Date: 18-12-2019 05:24:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grocery](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[GroceryName] [nvarchar](100) NULL,
	[GroceryType] [nvarchar](50) NULL,
	[Price] [decimal](18, 0) NULL,
	[Quantity] [nvarchar](50) NULL,
	[Available] [nvarchar](50) NULL,
 CONSTRAINT [PK_Grocery] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Grocery] ON 

GO
INSERT [dbo].[Grocery] ([ID], [GroceryName], [GroceryType], [Price], [Quantity], [Available]) VALUES (2, N'Sugar', N'Open', CAST(60 AS Decimal(18, 0)), N'2 kg', N'no')
GO
SET IDENTITY_INSERT [dbo].[Grocery] OFF
GO
USE [master]
GO
ALTER DATABASE [HomeGrocery] SET  READ_WRITE 
GO
