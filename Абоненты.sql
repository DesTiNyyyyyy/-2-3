USE [master]
GO
/****** Object:  Database [is319_vseslavinskiy]    Script Date: 21.12.2021 11:20:54 ******/
CREATE DATABASE [is319_vseslavinskiy]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'is319_vseslavinskiy', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\is319_vseslavinskiy.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'is319_vseslavinskiy_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\is319_vseslavinskiy_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [is319_vseslavinskiy] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [is319_vseslavinskiy].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [is319_vseslavinskiy] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [is319_vseslavinskiy] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [is319_vseslavinskiy] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [is319_vseslavinskiy] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [is319_vseslavinskiy] SET ARITHABORT OFF 
GO
ALTER DATABASE [is319_vseslavinskiy] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [is319_vseslavinskiy] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [is319_vseslavinskiy] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [is319_vseslavinskiy] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [is319_vseslavinskiy] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [is319_vseslavinskiy] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [is319_vseslavinskiy] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [is319_vseslavinskiy] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [is319_vseslavinskiy] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [is319_vseslavinskiy] SET  DISABLE_BROKER 
GO
ALTER DATABASE [is319_vseslavinskiy] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [is319_vseslavinskiy] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [is319_vseslavinskiy] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [is319_vseslavinskiy] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [is319_vseslavinskiy] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [is319_vseslavinskiy] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [is319_vseslavinskiy] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [is319_vseslavinskiy] SET RECOVERY FULL 
GO
ALTER DATABASE [is319_vseslavinskiy] SET  MULTI_USER 
GO
ALTER DATABASE [is319_vseslavinskiy] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [is319_vseslavinskiy] SET DB_CHAINING OFF 
GO
ALTER DATABASE [is319_vseslavinskiy] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [is319_vseslavinskiy] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [is319_vseslavinskiy] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'is319_vseslavinskiy', N'ON'
GO
ALTER DATABASE [is319_vseslavinskiy] SET QUERY_STORE = OFF
GO
USE [is319_vseslavinskiy]
GO
/****** Object:  Table [dbo].[Абонент]    Script Date: 21.12.2021 11:20:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Абонент](
	[номер] [int] NOT NULL,
	[ФИО] [varchar](50) NOT NULL,
	[Адрес] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Абонент] PRIMARY KEY CLUSTERED 
(
	[номер] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[города]    Script Date: 21.12.2021 11:20:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[города](
	[код] [int] NOT NULL,
	[название_города] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_города] PRIMARY KEY CLUSTERED 
(
	[код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[разговоры]    Script Date: 21.12.2021 11:20:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[разговоры](
	[номер] [int] NOT NULL,
	[дата_разговора] [date] NOT NULL,
	[время] [int] NOT NULL,
	[код_города] [int] NOT NULL,
	[тариф] [int] NOT NULL,
	[оплата] [varchar](50) NOT NULL,
 CONSTRAINT [PK_разговоры] PRIMARY KEY CLUSTERED 
(
	[номер] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[телефон]    Script Date: 21.12.2021 11:20:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[телефон](
	[Номер_телефона] [nvarchar](50) NOT NULL,
	[номер_абонента] [int] NULL,
	[номер_договора] [nvarchar](5) NULL,
	[Дата_установки] [date] NULL,
 CONSTRAINT [PK_телефон] PRIMARY KEY CLUSTERED 
(
	[Номер_телефона] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[разговоры]  WITH CHECK ADD  CONSTRAINT [FK_разговоры_города] FOREIGN KEY([код_города])
REFERENCES [dbo].[города] ([код])
GO
ALTER TABLE [dbo].[разговоры] CHECK CONSTRAINT [FK_разговоры_города]
GO
ALTER TABLE [dbo].[телефон]  WITH CHECK ADD  CONSTRAINT [FK_телефон_Абонент] FOREIGN KEY([номер_абонента])
REFERENCES [dbo].[Абонент] ([номер])
GO
ALTER TABLE [dbo].[телефон] CHECK CONSTRAINT [FK_телефон_Абонент]
GO
USE [master]
GO
ALTER DATABASE [is319_vseslavinskiy] SET  READ_WRITE 
GO
