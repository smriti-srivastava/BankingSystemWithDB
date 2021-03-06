USE [master]
GO
/****** Object:  Database [BankSystem]    Script Date: 7/29/2018 8:07:21 PM ******/
CREATE DATABASE [BankSystem]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BankSystem', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\BankSystem.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
 LOG ON 
( NAME = N'BankSystem_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\BankSystem_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [BankSystem] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BankSystem].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BankSystem] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BankSystem] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BankSystem] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BankSystem] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BankSystem] SET ARITHABORT OFF 
GO
ALTER DATABASE [BankSystem] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BankSystem] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [BankSystem] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BankSystem] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BankSystem] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BankSystem] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BankSystem] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BankSystem] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BankSystem] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BankSystem] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BankSystem] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BankSystem] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BankSystem] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BankSystem] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BankSystem] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BankSystem] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BankSystem] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BankSystem] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BankSystem] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BankSystem] SET  MULTI_USER 
GO
ALTER DATABASE [BankSystem] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BankSystem] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BankSystem] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BankSystem] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [BankSystem]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 7/29/2018 8:07:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Account](
	[AccountNumber] [int] NULL,
	[AccountType] [varchar](10) NULL,
	[AvailableBalance] [float] NULL,
	[CustomerName] [varchar](50) NULL,
	[PhoneNumber] [varchar](20) NULL,
	[EmailID] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
USE [master]
GO
ALTER DATABASE [BankSystem] SET  READ_WRITE 
GO
