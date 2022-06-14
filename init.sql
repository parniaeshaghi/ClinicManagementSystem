USE [master]
GO

/****** ساخت دیتابیس مدیریت مطب ******/
CREATE DATABASE [ClinicManagementSystem] CONTAINMENT = NONE ON PRIMARY (
	NAME = N'ClinicManagementSystem'
	,FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ClinicManagementSystem.mdf'
	,SIZE = 8192 KB
	,MAXSIZE = UNLIMITED
	,FILEGROWTH = 65536 KB
	) LOG ON (
	NAME = N'ClinicManagementSystem_log'
	,FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ClinicManagementSystem_log.ldf'
	,SIZE = 8192 KB
	,MAXSIZE = 2048 GB
	,FILEGROWTH = 65536 KB
	)
	WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO

ALTER DATABASE [ClinicManagementSystem]

SET COMPATIBILITY_LEVEL = 140
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
BEGIN
	EXEC [ClinicManagementSystem].[dbo].[sp_fulltext_database] @action = 'enable'
END
GO

ALTER DATABASE [ClinicManagementSystem]

SET ANSI_NULL_DEFAULT OFF
GO

ALTER DATABASE [ClinicManagementSystem]

SET ANSI_NULLS OFF
GO

ALTER DATABASE [ClinicManagementSystem]

SET ANSI_PADDING OFF
GO

ALTER DATABASE [ClinicManagementSystem]

SET ANSI_WARNINGS OFF
GO

ALTER DATABASE [ClinicManagementSystem]

SET ARITHABORT OFF
GO

ALTER DATABASE [ClinicManagementSystem]

SET AUTO_CLOSE OFF
GO

ALTER DATABASE [ClinicManagementSystem]

SET AUTO_SHRINK OFF
GO

ALTER DATABASE [ClinicManagementSystem]

SET AUTO_UPDATE_STATISTICS ON
GO

ALTER DATABASE [ClinicManagementSystem]

SET CURSOR_CLOSE_ON_COMMIT OFF
GO

ALTER DATABASE [ClinicManagementSystem]

SET CURSOR_DEFAULT GLOBAL
GO

ALTER DATABASE [ClinicManagementSystem]

SET CONCAT_NULL_YIELDS_NULL OFF
GO

ALTER DATABASE [ClinicManagementSystem]

SET NUMERIC_ROUNDABORT OFF
GO

ALTER DATABASE [ClinicManagementSystem]

SET QUOTED_IDENTIFIER OFF
GO

ALTER DATABASE [ClinicManagementSystem]

SET RECURSIVE_TRIGGERS OFF
GO

ALTER DATABASE [ClinicManagementSystem]

SET DISABLE_BROKER
GO

ALTER DATABASE [ClinicManagementSystem]

SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO

ALTER DATABASE [ClinicManagementSystem]

SET DATE_CORRELATION_OPTIMIZATION OFF
GO

ALTER DATABASE [ClinicManagementSystem]

SET TRUSTWORTHY OFF
GO

ALTER DATABASE [ClinicManagementSystem]

SET ALLOW_SNAPSHOT_ISOLATION OFF
GO

ALTER DATABASE [ClinicManagementSystem]

SET PARAMETERIZATION SIMPLE
GO

ALTER DATABASE [ClinicManagementSystem]

SET READ_COMMITTED_SNAPSHOT OFF
GO

ALTER DATABASE [ClinicManagementSystem]

SET HONOR_BROKER_PRIORITY OFF
GO

ALTER DATABASE [ClinicManagementSystem]

SET RECOVERY FULL
GO

ALTER DATABASE [ClinicManagementSystem]

SET MULTI_USER
GO

ALTER DATABASE [ClinicManagementSystem]

SET PAGE_VERIFY CHECKSUM
GO

ALTER DATABASE [ClinicManagementSystem]

SET DB_CHAINING OFF
GO

ALTER DATABASE [ClinicManagementSystem]

SET FILESTREAM(NON_TRANSACTED_ACCESS = OFF)
GO

ALTER DATABASE [ClinicManagementSystem]

SET TARGET_RECOVERY_TIME = 60 SECONDS
GO

ALTER DATABASE [ClinicManagementSystem]

SET DELAYED_DURABILITY = DISABLED
GO

EXEC sys.sp_db_vardecimal_storage_format N'ClinicManagementSystem'
	,N'ON'
GO

ALTER DATABASE [ClinicManagementSystem]

SET QUERY_STORE = OFF
GO

USE [ClinicManagementSystem]
GO

/****** ساخت جدول اکانت‌ها ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Account_Tbl] (
	[Id] [int] NOT NULL
	,[Id_Doctor] [int] NULL
	,[AccountType] [nvarchar](50) NULL
	,[AccountBegin] [datetime] NULL
	,[Time] [nvarchar](50) NULL
	,CONSTRAINT [PK_Account_Tbl] PRIMARY KEY CLUSTERED ([Id] ASC) WITH (
		PAD_INDEX = OFF
		,STATISTICS_NORECOMPUTE = OFF
		,IGNORE_DUP_KEY = OFF
		,ALLOW_ROW_LOCKS = ON
		,ALLOW_PAGE_LOCKS = ON
		,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF
		) ON [PRIMARY]
	) ON [PRIMARY]
GO

/****** ساخت جدول بیمه ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Insurance_tbl] (
	[Id] [int] IDENTITY(1, 1) NOT NULL
	,[InsuranceName] [nvarchar](max) NULL
	,[percent] [nchar](10) NULL
	,[InsuranceType] [nvarchar](max) NULL
	,[InsuranceImage] [image] NULL
	,CONSTRAINT [PK_Insurance_tbl] PRIMARY KEY CLUSTERED ([Id] ASC) WITH (
		PAD_INDEX = OFF
		,STATISTICS_NORECOMPUTE = OFF
		,IGNORE_DUP_KEY = OFF
		,ALLOW_ROW_LOCKS = ON
		,ALLOW_PAGE_LOCKS = ON
		,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF
		) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

/****** ساخت جدول چت ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Chat_tbl] (
	[Id] [int] NOT NULL
	,[User_Id] [int] NULL
	,[Doctor_Id] [int] NULL
	,[Text] [nvarchar](max) NULL
	,[Customfile] [varbinary](max) NULL
	,[DateTime] [datetime] NULL
	,CONSTRAINT [PK_Chat_tbl] PRIMARY KEY CLUSTERED ([Id] ASC) WITH (
		PAD_INDEX = OFF
		,STATISTICS_NORECOMPUTE = OFF
		,IGNORE_DUP_KEY = OFF
		,ALLOW_ROW_LOCKS = ON
		,ALLOW_PAGE_LOCKS = ON
		,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF
		) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

/****** ساخت جدول کانتکت‌ها ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Contacts_tbl] (
	[Id] [int] IDENTITY(1, 1) NOT NULL
	,[UserId] [int] NULL
	,[Name] [nvarchar](max) NULL
	,[Phone1] [nvarchar](50) NULL
	,[Phone2] [nvarchar](50) NULL
	,[Email] [nvarchar](max) NULL
	,[Description] [nvarchar](max) NULL
	,CONSTRAINT [PK_Contacts_tbl] PRIMARY KEY CLUSTERED ([Id] ASC) WITH (
		PAD_INDEX = OFF
		,STATISTICS_NORECOMPUTE = OFF
		,IGNORE_DUP_KEY = OFF
		,ALLOW_ROW_LOCKS = ON
		,ALLOW_PAGE_LOCKS = ON
		,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF
		) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

/****** ساخت جدول دکترها ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Doctor_tbl] (
	[Id] [int] IDENTITY(1, 1) NOT NULL
	,[Personal_Id] [int] NULL
	,[Level] [nvarchar](max) NULL
	,[Speciality] [nvarchar](max) NULL
	,[Clinic_Phone] [nvarchar](20) NULL
	,[Clinic_Address] [nvarchar](max) NULL
	,[Medical_Association_Number] [nvarchar](50) NULL
	,CONSTRAINT [PK_Doctor_tbl] PRIMARY KEY CLUSTERED ([Id] ASC) WITH (
		PAD_INDEX = OFF
		,STATISTICS_NORECOMPUTE = OFF
		,IGNORE_DUP_KEY = OFF
		,ALLOW_ROW_LOCKS = ON
		,ALLOW_PAGE_LOCKS = ON
		,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF
		) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

/****** ساخت جدول سرویس‌های ارائه شده ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Service_tbl] (
	[Id] [int] IDENTITY(1, 1) NOT NULL
	,[Patient_Id] [int] NULL
	,[Doctor_Id] [int] NULL
	,[ServiceType] [nvarchar](100) NULL
	,[Paid_money] [nvarchar](100) NULL
	,[Compelete_payment] [bit] NULL
	,[Canceled] [bit] NULL
	,[Record_date] [datetime] NULL
	,[Service_date] [datetime] NULL
	,CONSTRAINT [PK_Service_tbl] PRIMARY KEY CLUSTERED ([Id] ASC) WITH (
		PAD_INDEX = OFF
		,STATISTICS_NORECOMPUTE = OFF
		,IGNORE_DUP_KEY = OFF
		,ALLOW_ROW_LOCKS = ON
		,ALLOW_PAGE_LOCKS = ON
		,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF
		) ON [PRIMARY]
	) ON [PRIMARY]
GO

/****** ساخت جدول یادداشت‌ها ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Note_tbl] (
	[Id] [int] IDENTITY(1, 1) NOT NULL
	,[UserId] [int] NULL
	,[Text] [nvarchar](max) NULL
	,[date] [datetime] NULL
	,[Subject] [nvarchar](max) NULL
	,CONSTRAINT [PK_Note_tbl] PRIMARY KEY CLUSTERED ([Id] ASC) WITH (
		PAD_INDEX = OFF
		,STATISTICS_NORECOMPUTE = OFF
		,IGNORE_DUP_KEY = OFF
		,ALLOW_ROW_LOCKS = ON
		,ALLOW_PAGE_LOCKS = ON
		,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF
		) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

/****** ساخت جدول مریض‌ها ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Patient_tbl] (
	[Id] [int] IDENTITY(1, 1) NOT NULL
	,[PersonalData_Id] [int] NOT NULL
	,[InsuranceId] [int] NOT NULL
	,[Insurance_Booklet_Number] [nvarchar](50) NOT NULL
	,[Doctor_Id] [int] NOT NULL
	,[Date_Time] [timestamp] NULL
	,[Reason] [nvarchar](max) NULL
	,[Description] [nvarchar](max) NULL
	,[ProblemList] [nvarchar](max) NULL
	,[Condition] [nvarchar](max) NULL
	,[PatientComplaints] [nvarchar](max) NULL
	,[Medicine] [nvarchar](max) NULL
	,[Diagnosis] [nvarchar](max) NULL
	,[Lenght(cm)] [int] NULL
	,[Weight] [int] NULL
	,[CustomField1] [varbinary](max) NULL
	,[CustomField2] [varbinary](max) NULL
	,[CustomField3] [varbinary](max) NULL
	,[CustomField4] [varbinary](max) NULL
	,[CustomField5] [varbinary](max) NULL
	,[CustomField6] [varbinary](max) NULL
	,[UserId_Record_Konande] [int] NULL
	,[IsBlocked] [bit] NULL
	,CONSTRAINT [PK_Patient_tbl] PRIMARY KEY CLUSTERED ([Id] ASC) WITH (
		PAD_INDEX = OFF
		,STATISTICS_NORECOMPUTE = OFF
		,IGNORE_DUP_KEY = OFF
		,ALLOW_ROW_LOCKS = ON
		,ALLOW_PAGE_LOCKS = ON
		,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF
		) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

/****** ساخت جدول اطلاعات شخصی ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Personal_data_tbl] (
	[Id] [int] IDENTITY(1, 1) NOT NULL
	,[Name] [nvarchar](50) NULL
	,[FamilyName] [nvarchar](max) NULL
	,[National_Id] [nvarchar](50) NULL
	,[Gender] [bit] NULL
	,[PhoneNumber1] [nvarchar](50) NULL
	,[PhoneNumber2] [nvarchar](50) NULL
	,[MobileNumber] [nvarchar](50) NULL
	,[CustomField] [varbinary](max) NULL
	,[Email] [nvarchar](max) NULL
	,CONSTRAINT [PK_Personal_data_tbl] PRIMARY KEY CLUSTERED ([Id] ASC) WITH (
		PAD_INDEX = OFF
		,STATISTICS_NORECOMPUTE = OFF
		,IGNORE_DUP_KEY = OFF
		,ALLOW_ROW_LOCKS = ON
		,ALLOW_PAGE_LOCKS = ON
		,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF
		) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

/****** ساخت جدول صندوق بیمه ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[FundInsurance_tbl] (
	[Id] [int] NULL
	,[InsuranceId] [int] NULL
	,[FundName] [nvarchar](max) NULL
	,[FundCode] [nvarchar](50) NULL
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

/****** ساخت جدول پیام‌رسانی ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[SendSMS_tbl] (
	[Id] [int] IDENTITY(1, 1) NOT NULL
	,[User_Id] [int] NULL
	,[MobileNum] [nvarchar](50) NULL
	,[Text] [nvarchar](max) NULL
	,[date_time] [datetime] NULL
	,CONSTRAINT [PK_SendSMS_tbl] PRIMARY KEY CLUSTERED ([Id] ASC) WITH (
		PAD_INDEX = OFF
		,STATISTICS_NORECOMPUTE = OFF
		,IGNORE_DUP_KEY = OFF
		,ALLOW_ROW_LOCKS = ON
		,ALLOW_PAGE_LOCKS = ON
		,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF
		) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

/****** ساخت جدول یوزرها ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[User_tbl] (
	[Id] [int] IDENTITY(1, 1) NOT NULL
	,[Personal_Id] [int] NULL
	,[Doctor_Id] [int] NULL
	,[Salary] [nvarchar](50) NULL
	,[AccessType] [int] NULL
	,[Recommender] [nvarchar](max) NULL
	,[EducationalDegree] [nvarchar](max) NULL
	,[Resume] [nvarchar](max) NULL
	,CONSTRAINT [PK_User_tbl] PRIMARY KEY CLUSTERED ([Id] ASC) WITH (
		PAD_INDEX = OFF
		,STATISTICS_NORECOMPUTE = OFF
		,IGNORE_DUP_KEY = OFF
		,ALLOW_ROW_LOCKS = ON
		,ALLOW_PAGE_LOCKS = ON
		,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF
		) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[Account_Tbl]
	WITH CHECK ADD CONSTRAINT [FK_Account_Tbl_Doctor_tbl] FOREIGN KEY ([Id_Doctor]) REFERENCES [dbo].[Doctor_tbl]([Id])
GO

ALTER TABLE [dbo].[Account_Tbl] CHECK CONSTRAINT [FK_Account_Tbl_Doctor_tbl]
GO

ALTER TABLE [dbo].[Chat_tbl]
	WITH CHECK ADD CONSTRAINT [FK_Chat_tbl_Doctor_tbl] FOREIGN KEY ([Doctor_Id]) REFERENCES [dbo].[Doctor_tbl]([Id])
GO

ALTER TABLE [dbo].[Chat_tbl] CHECK CONSTRAINT [FK_Chat_tbl_Doctor_tbl]
GO

ALTER TABLE [dbo].[Chat_tbl]
	WITH CHECK ADD CONSTRAINT [FK_Chat_tbl_User_tbl] FOREIGN KEY ([User_Id]) REFERENCES [dbo].[User_tbl]([Id])
GO

ALTER TABLE [dbo].[Chat_tbl] CHECK CONSTRAINT [FK_Chat_tbl_User_tbl]
GO

ALTER TABLE [dbo].[Contacts_tbl]
	WITH CHECK ADD CONSTRAINT [FK_Contacts_tbl_User_tbl] FOREIGN KEY ([UserId]) REFERENCES [dbo].[User_tbl]([Id])
GO

ALTER TABLE [dbo].[Contacts_tbl] CHECK CONSTRAINT [FK_Contacts_tbl_User_tbl]
GO

ALTER TABLE [dbo].[Doctor_tbl]
	WITH CHECK ADD CONSTRAINT [FK_Doctor_tbl_Personal_data_tbl] FOREIGN KEY ([Personal_Id]) REFERENCES [dbo].[Personal_data_tbl]([Id])
GO

ALTER TABLE [dbo].[Doctor_tbl] CHECK CONSTRAINT [FK_Doctor_tbl_Personal_data_tbl]
GO

ALTER TABLE [dbo].[Service_tbl]
	WITH CHECK ADD CONSTRAINT [FK_Service_tbl_Doctor_tbl] FOREIGN KEY ([Doctor_Id]) REFERENCES [dbo].[Doctor_tbl]([Id])
GO

ALTER TABLE [dbo].[Service_tbl] CHECK CONSTRAINT [FK_Service_tbl_Doctor_tbl]
GO

ALTER TABLE [dbo].[Service_tbl]
	WITH CHECK ADD CONSTRAINT [FK_Service_tbl_Patient_tbl] FOREIGN KEY ([Patient_Id]) REFERENCES [dbo].[Patient_tbl]([Id])
GO

ALTER TABLE [dbo].[Service_tbl] CHECK CONSTRAINT [FK_Service_tbl_Patient_tbl]
GO

ALTER TABLE [dbo].[Note_tbl]
	WITH CHECK ADD CONSTRAINT [FK_Note_tbl_User_tbl] FOREIGN KEY ([UserId]) REFERENCES [dbo].[User_tbl]([Id])
GO

ALTER TABLE [dbo].[Note_tbl] CHECK CONSTRAINT [FK_Note_tbl_User_tbl]
GO

ALTER TABLE [dbo].[Patient_tbl]
	WITH CHECK ADD CONSTRAINT [FK_Patient_tbl_Insurance_tbl] FOREIGN KEY ([InsuranceId]) REFERENCES [dbo].[Insurance_tbl]([Id])
GO

ALTER TABLE [dbo].[Patient_tbl] CHECK CONSTRAINT [FK_Patient_tbl_Insurance_tbl]
GO

ALTER TABLE [dbo].[Patient_tbl]
	WITH CHECK ADD CONSTRAINT [FK_Patient_tbl_Doctor_tbl] FOREIGN KEY ([Doctor_Id]) REFERENCES [dbo].[Doctor_tbl]([Id])
GO

ALTER TABLE [dbo].[Patient_tbl] CHECK CONSTRAINT [FK_Patient_tbl_Doctor_tbl]
GO

ALTER TABLE [dbo].[Patient_tbl]
	WITH CHECK ADD CONSTRAINT [FK_Patient_tbl_Personal_data_tbl] FOREIGN KEY ([PersonalData_Id]) REFERENCES [dbo].[Personal_data_tbl]([Id])
GO

ALTER TABLE [dbo].[Patient_tbl] CHECK CONSTRAINT [FK_Patient_tbl_Personal_data_tbl]
GO

ALTER TABLE [dbo].[FundInsurance_tbl]
	WITH CHECK ADD CONSTRAINT [FK_FundInsurance_tbl_Insurance_tbl] FOREIGN KEY ([InsuranceId]) REFERENCES [dbo].[Insurance_tbl]([Id])
GO

ALTER TABLE [dbo].[FundInsurance_tbl] CHECK CONSTRAINT [FK_FundInsurance_tbl_Insurance_tbl]
GO

ALTER TABLE [dbo].[SendSMS_tbl]
	WITH CHECK ADD CONSTRAINT [FK_SendSMS_tbl_User_tbl] FOREIGN KEY ([User_Id]) REFERENCES [dbo].[User_tbl]([Id])
GO

ALTER TABLE [dbo].[SendSMS_tbl] CHECK CONSTRAINT [FK_SendSMS_tbl_User_tbl]
GO

ALTER TABLE [dbo].[User_tbl]
	WITH CHECK ADD CONSTRAINT [FK_User_tbl_Doctor_tbl] FOREIGN KEY ([Doctor_Id]) REFERENCES [dbo].[Doctor_tbl]([Id])
GO

ALTER TABLE [dbo].[User_tbl] CHECK CONSTRAINT [FK_User_tbl_Doctor_tbl]
GO

ALTER TABLE [dbo].[User_tbl]
	WITH CHECK ADD CONSTRAINT [FK_User_tbl_Personal_data_tbl] FOREIGN KEY ([Personal_Id]) REFERENCES [dbo].[Personal_data_tbl]([Id])
GO

ALTER TABLE [dbo].[User_tbl] CHECK CONSTRAINT [FK_User_tbl_Personal_data_tbl]
GO

USE [master]
GO

ALTER DATABASE [ClinicManagementSystem]

SET READ_WRITE
GO

