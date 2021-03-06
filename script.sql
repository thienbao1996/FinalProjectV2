USE [master]
GO
/****** Object:  Database [finaldb]    Script Date: 9/7/2019 9:58:05 PM ******/
CREATE DATABASE [finaldb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'finaldb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQL2017\MSSQL\DATA\finaldb.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'finaldb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQL2017\MSSQL\DATA\finaldb_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [finaldb] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [finaldb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [finaldb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [finaldb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [finaldb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [finaldb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [finaldb] SET ARITHABORT OFF 
GO
ALTER DATABASE [finaldb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [finaldb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [finaldb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [finaldb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [finaldb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [finaldb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [finaldb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [finaldb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [finaldb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [finaldb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [finaldb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [finaldb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [finaldb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [finaldb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [finaldb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [finaldb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [finaldb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [finaldb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [finaldb] SET  MULTI_USER 
GO
ALTER DATABASE [finaldb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [finaldb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [finaldb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [finaldb] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [finaldb] SET DELAYED_DURABILITY = DISABLED 
GO
USE [finaldb]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 9/7/2019 9:58:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[pass] [varchar](255) NULL,
	[role] [int] NULL,
	[username] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 9/7/2019 9:58:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[id] [int] NOT NULL,
	[address] [varchar](255) NULL,
	[limit] [float] NULL,
	[name] [varchar](255) NULL,
	[note] [varchar](255) NULL,
	[status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inventory]    Script Date: 9/7/2019 9:58:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventory](
	[id] [int] NOT NULL,
	[amount] [float] NULL,
	[createdate] [datetime] NULL,
	[note] [varchar](255) NULL,
	[product_id] [int] NULL,
	[unit] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 9/7/2019 9:58:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[quantity] [int] NULL,
	[orders_id] [int] NULL,
	[product_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 9/7/2019 9:58:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[createdate] [datetime] NULL,
	[discount] [float] NULL,
	[tax] [float] NULL,
	[total] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 9/7/2019 9:58:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[discount] [float] NULL,
	[name] [varchar](255) NULL,
	[price] [float] NULL,
	[unit] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReturnBill]    Script Date: 9/7/2019 9:58:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReturnBill](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[createdate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReturnBillDetail]    Script Date: 9/7/2019 9:58:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReturnBillDetail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[productId] [int] NULL,
	[productName] [varchar](255) NULL,
	[quantity] [int] NULL,
	[returnBill_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transactions]    Script Date: 9/7/2019 9:58:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transactions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[createdate] [datetime] NULL,
	[employee_id] [int] NULL,
	[total] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Accounts] ON 

INSERT [dbo].[Accounts] ([id], [pass], [role], [username]) VALUES (1, N'123', 2, N'admin')
INSERT [dbo].[Accounts] ([id], [pass], [role], [username]) VALUES (2, N'123', 1, N'bao')
SET IDENTITY_INSERT [dbo].[Accounts] OFF
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FKAA2F011F5A96F666] FOREIGN KEY([product_id])
REFERENCES [dbo].[Products] ([id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FKAA2F011F5A96F666]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FKAA2F011FDAB85FF1] FOREIGN KEY([orders_id])
REFERENCES [dbo].[Orders] ([id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FKAA2F011FDAB85FF1]
GO
ALTER TABLE [dbo].[ReturnBillDetail]  WITH CHECK ADD  CONSTRAINT [FKDEFB68A8BABD5751] FOREIGN KEY([returnBill_id])
REFERENCES [dbo].[ReturnBill] ([id])
GO
ALTER TABLE [dbo].[ReturnBillDetail] CHECK CONSTRAINT [FKDEFB68A8BABD5751]
GO
USE [master]
GO
ALTER DATABASE [finaldb] SET  READ_WRITE 
GO
