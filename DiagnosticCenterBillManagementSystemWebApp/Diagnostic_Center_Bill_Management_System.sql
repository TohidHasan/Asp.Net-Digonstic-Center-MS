USE [master]
GO
/****** Object:  Database [Diagnostic_Center_Bill_Management_System]    Script Date: 2/19/2017 7:34:52 PM ******/
CREATE DATABASE [Diagnostic_Center_Bill_Management_System]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Diagnostic_Center_Bill_Management_System', FILENAME = N'D:\mydotnetprograms\DiagnosticCenterBillManagementSystemWebApp\Diagnostic_Center_Bill_Management_System.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Diagnostic_Center_Bill_Management_System_log', FILENAME = N'd:\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Diagnostic_Center_Bill_Management_System_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Diagnostic_Center_Bill_Management_System] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Diagnostic_Center_Bill_Management_System].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Diagnostic_Center_Bill_Management_System] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Diagnostic_Center_Bill_Management_System] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Diagnostic_Center_Bill_Management_System] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Diagnostic_Center_Bill_Management_System] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Diagnostic_Center_Bill_Management_System] SET ARITHABORT OFF 
GO
ALTER DATABASE [Diagnostic_Center_Bill_Management_System] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Diagnostic_Center_Bill_Management_System] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Diagnostic_Center_Bill_Management_System] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Diagnostic_Center_Bill_Management_System] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Diagnostic_Center_Bill_Management_System] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Diagnostic_Center_Bill_Management_System] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Diagnostic_Center_Bill_Management_System] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Diagnostic_Center_Bill_Management_System] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Diagnostic_Center_Bill_Management_System] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Diagnostic_Center_Bill_Management_System] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Diagnostic_Center_Bill_Management_System] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Diagnostic_Center_Bill_Management_System] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Diagnostic_Center_Bill_Management_System] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Diagnostic_Center_Bill_Management_System] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Diagnostic_Center_Bill_Management_System] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Diagnostic_Center_Bill_Management_System] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Diagnostic_Center_Bill_Management_System] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Diagnostic_Center_Bill_Management_System] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Diagnostic_Center_Bill_Management_System] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Diagnostic_Center_Bill_Management_System] SET  MULTI_USER 
GO
ALTER DATABASE [Diagnostic_Center_Bill_Management_System] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Diagnostic_Center_Bill_Management_System] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Diagnostic_Center_Bill_Management_System] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Diagnostic_Center_Bill_Management_System] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Diagnostic_Center_Bill_Management_System]
GO
/****** Object:  Table [dbo].[test_setup]    Script Date: 2/19/2017 7:34:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[test_setup](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[testName] [varchar](max) NOT NULL,
	[fee] [float] NOT NULL,
	[typeName] [int] NOT NULL,
 CONSTRAINT [PK_test_setup] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[test_type]    Script Date: 2/19/2017 7:34:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[test_type](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_test_type] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[testAndPatientData]    Script Date: 2/19/2017 7:34:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[testAndPatientData](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[testId] [int] NOT NULL,
	[patientId] [int] NOT NULL,
	[invoiceDate] [date] NOT NULL,
 CONSTRAINT [PK_testAndPatientData] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[testRequestEntry]    Script Date: 2/19/2017 7:34:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[testRequestEntry](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nameOfPatient] [varchar](50) NOT NULL,
	[dateOfBirth] [date] NOT NULL,
	[mobileNo] [varchar](14) NOT NULL,
	[totalFee] [float] NOT NULL,
	[billNo] [varchar](200) NOT NULL,
	[paymentStatus] [varchar](50) NOT NULL,
	[invoiceDate] [date] NOT NULL,
 CONSTRAINT [PK_testRequestEntry] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[testAndType]    Script Date: 2/19/2017 7:34:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[testAndType]
AS
SELECT testName, fee, name FROM test_setup
INNER JOIN test_type 
ON test_setup.typeName=test_type.id;
GO
/****** Object:  View [dbo].[totalTestAndTypeWithCount]    Script Date: 2/19/2017 7:34:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[totalTestAndTypeWithCount]
AS
SELECT        dbo.test_setup.testName, dbo.test_setup.fee, dbo.testAndPatientData.testId, dbo.testAndPatientData.invoiceDate, dbo.test_type.name AS typeName
FROM            dbo.test_setup FULL OUTER JOIN
                         dbo.testAndPatientData ON dbo.testAndPatientData.testId = dbo.test_setup.id FULL JOIN
                         dbo.test_type ON dbo.test_setup.typeName = dbo.test_type.id
GO
SET IDENTITY_INSERT [dbo].[test_setup] ON 

INSERT [dbo].[test_setup] ([id], [testName], [fee], [typeName]) VALUES (1, N'Complete Blood count (Total Count-Differential Count-ESR, Hb %)', 400, 1)
INSERT [dbo].[test_setup] ([id], [testName], [fee], [typeName]) VALUES (2, N'RBS', 150, 1)
INSERT [dbo].[test_setup] ([id], [testName], [fee], [typeName]) VALUES (4, N'Lipid Profile', 120, 1)
INSERT [dbo].[test_setup] ([id], [testName], [fee], [typeName]) VALUES (7, N'S. Creatinine', 350, 1)
INSERT [dbo].[test_setup] ([id], [testName], [fee], [typeName]) VALUES (9, N'Hand X-ray', 200, 16)
INSERT [dbo].[test_setup] ([id], [testName], [fee], [typeName]) VALUES (10, N'Feet X-ray', 300, 16)
INSERT [dbo].[test_setup] ([id], [testName], [fee], [typeName]) VALUES (11, N'Pregnancy profile', 550, 13)
INSERT [dbo].[test_setup] ([id], [testName], [fee], [typeName]) VALUES (13, N'LS Spine', 1100, 16)
SET IDENTITY_INSERT [dbo].[test_setup] OFF
SET IDENTITY_INSERT [dbo].[test_type] ON 

INSERT [dbo].[test_type] ([id], [name]) VALUES (1, N'Blood')
INSERT [dbo].[test_type] ([id], [name]) VALUES (2, N'Urine')
INSERT [dbo].[test_type] ([id], [name]) VALUES (3, N'Echo')
INSERT [dbo].[test_type] ([id], [name]) VALUES (4, N'LS Spine')
INSERT [dbo].[test_type] ([id], [name]) VALUES (13, N'USG')
INSERT [dbo].[test_type] ([id], [name]) VALUES (16, N'X-Ray')
SET IDENTITY_INSERT [dbo].[test_type] OFF
SET IDENTITY_INSERT [dbo].[testAndPatientData] ON 

INSERT [dbo].[testAndPatientData] ([id], [testId], [patientId], [invoiceDate]) VALUES (24, 1, 1, CAST(0x753C0B00 AS Date))
INSERT [dbo].[testAndPatientData] ([id], [testId], [patientId], [invoiceDate]) VALUES (25, 4, 1, CAST(0x753C0B00 AS Date))
INSERT [dbo].[testAndPatientData] ([id], [testId], [patientId], [invoiceDate]) VALUES (26, 1, 2, CAST(0x763C0B00 AS Date))
INSERT [dbo].[testAndPatientData] ([id], [testId], [patientId], [invoiceDate]) VALUES (27, 2, 2, CAST(0x763C0B00 AS Date))
INSERT [dbo].[testAndPatientData] ([id], [testId], [patientId], [invoiceDate]) VALUES (29, 4, 2, CAST(0x763C0B00 AS Date))
INSERT [dbo].[testAndPatientData] ([id], [testId], [patientId], [invoiceDate]) VALUES (37, 1, 6, CAST(0x763C0B00 AS Date))
INSERT [dbo].[testAndPatientData] ([id], [testId], [patientId], [invoiceDate]) VALUES (39, 2, 6, CAST(0x763C0B00 AS Date))
INSERT [dbo].[testAndPatientData] ([id], [testId], [patientId], [invoiceDate]) VALUES (40, 1, 7, CAST(0x763C0B00 AS Date))
INSERT [dbo].[testAndPatientData] ([id], [testId], [patientId], [invoiceDate]) VALUES (42, 4, 7, CAST(0x763C0B00 AS Date))
INSERT [dbo].[testAndPatientData] ([id], [testId], [patientId], [invoiceDate]) VALUES (43, 2, 7, CAST(0x763C0B00 AS Date))
INSERT [dbo].[testAndPatientData] ([id], [testId], [patientId], [invoiceDate]) VALUES (44, 4, 8, CAST(0x763C0B00 AS Date))
INSERT [dbo].[testAndPatientData] ([id], [testId], [patientId], [invoiceDate]) VALUES (45, 4, 8, CAST(0x763C0B00 AS Date))
INSERT [dbo].[testAndPatientData] ([id], [testId], [patientId], [invoiceDate]) VALUES (46, 4, 8, CAST(0x763C0B00 AS Date))
INSERT [dbo].[testAndPatientData] ([id], [testId], [patientId], [invoiceDate]) VALUES (47, 1, 9, CAST(0x763C0B00 AS Date))
INSERT [dbo].[testAndPatientData] ([id], [testId], [patientId], [invoiceDate]) VALUES (48, 4, 9, CAST(0x763C0B00 AS Date))
INSERT [dbo].[testAndPatientData] ([id], [testId], [patientId], [invoiceDate]) VALUES (49, 2, 9, CAST(0x763C0B00 AS Date))
INSERT [dbo].[testAndPatientData] ([id], [testId], [patientId], [invoiceDate]) VALUES (50, 7, 10, CAST(0x763C0B00 AS Date))
INSERT [dbo].[testAndPatientData] ([id], [testId], [patientId], [invoiceDate]) VALUES (51, 4, 10, CAST(0x763C0B00 AS Date))
INSERT [dbo].[testAndPatientData] ([id], [testId], [patientId], [invoiceDate]) VALUES (52, 1, 11, CAST(0x763C0B00 AS Date))
INSERT [dbo].[testAndPatientData] ([id], [testId], [patientId], [invoiceDate]) VALUES (53, 4, 11, CAST(0x763C0B00 AS Date))
INSERT [dbo].[testAndPatientData] ([id], [testId], [patientId], [invoiceDate]) VALUES (54, 7, 11, CAST(0x763C0B00 AS Date))
INSERT [dbo].[testAndPatientData] ([id], [testId], [patientId], [invoiceDate]) VALUES (56, 1, 12, CAST(0x773C0B00 AS Date))
INSERT [dbo].[testAndPatientData] ([id], [testId], [patientId], [invoiceDate]) VALUES (58, 4, 12, CAST(0x773C0B00 AS Date))
INSERT [dbo].[testAndPatientData] ([id], [testId], [patientId], [invoiceDate]) VALUES (59, 1, 12, CAST(0x773C0B00 AS Date))
INSERT [dbo].[testAndPatientData] ([id], [testId], [patientId], [invoiceDate]) VALUES (60, 1, 13, CAST(0x773C0B00 AS Date))
INSERT [dbo].[testAndPatientData] ([id], [testId], [patientId], [invoiceDate]) VALUES (62, 4, 13, CAST(0x773C0B00 AS Date))
INSERT [dbo].[testAndPatientData] ([id], [testId], [patientId], [invoiceDate]) VALUES (64, 4, 14, CAST(0x783C0B00 AS Date))
INSERT [dbo].[testAndPatientData] ([id], [testId], [patientId], [invoiceDate]) VALUES (65, 7, 14, CAST(0x783C0B00 AS Date))
INSERT [dbo].[testAndPatientData] ([id], [testId], [patientId], [invoiceDate]) VALUES (66, 1, 14, CAST(0x783C0B00 AS Date))
INSERT [dbo].[testAndPatientData] ([id], [testId], [patientId], [invoiceDate]) VALUES (67, 4, 15, CAST(0x783C0B00 AS Date))
INSERT [dbo].[testAndPatientData] ([id], [testId], [patientId], [invoiceDate]) VALUES (68, 2, 15, CAST(0x783C0B00 AS Date))
INSERT [dbo].[testAndPatientData] ([id], [testId], [patientId], [invoiceDate]) VALUES (69, 7, 15, CAST(0x783C0B00 AS Date))
INSERT [dbo].[testAndPatientData] ([id], [testId], [patientId], [invoiceDate]) VALUES (70, 1, 16, CAST(0x783C0B00 AS Date))
INSERT [dbo].[testAndPatientData] ([id], [testId], [patientId], [invoiceDate]) VALUES (71, 4, 16, CAST(0x783C0B00 AS Date))
INSERT [dbo].[testAndPatientData] ([id], [testId], [patientId], [invoiceDate]) VALUES (72, 2, 16, CAST(0x783C0B00 AS Date))
INSERT [dbo].[testAndPatientData] ([id], [testId], [patientId], [invoiceDate]) VALUES (73, 9, 17, CAST(0x783C0B00 AS Date))
INSERT [dbo].[testAndPatientData] ([id], [testId], [patientId], [invoiceDate]) VALUES (74, 4, 17, CAST(0x783C0B00 AS Date))
INSERT [dbo].[testAndPatientData] ([id], [testId], [patientId], [invoiceDate]) VALUES (75, 11, 18, CAST(0x783C0B00 AS Date))
INSERT [dbo].[testAndPatientData] ([id], [testId], [patientId], [invoiceDate]) VALUES (76, 9, 18, CAST(0x783C0B00 AS Date))
INSERT [dbo].[testAndPatientData] ([id], [testId], [patientId], [invoiceDate]) VALUES (77, 1, 19, CAST(0x783C0B00 AS Date))
INSERT [dbo].[testAndPatientData] ([id], [testId], [patientId], [invoiceDate]) VALUES (78, 9, 19, CAST(0x783C0B00 AS Date))
INSERT [dbo].[testAndPatientData] ([id], [testId], [patientId], [invoiceDate]) VALUES (79, 4, 19, CAST(0x783C0B00 AS Date))
INSERT [dbo].[testAndPatientData] ([id], [testId], [patientId], [invoiceDate]) VALUES (80, 10, 20, CAST(0x793C0B00 AS Date))
INSERT [dbo].[testAndPatientData] ([id], [testId], [patientId], [invoiceDate]) VALUES (81, 9, 20, CAST(0x793C0B00 AS Date))
INSERT [dbo].[testAndPatientData] ([id], [testId], [patientId], [invoiceDate]) VALUES (82, 4, 20, CAST(0x793C0B00 AS Date))
INSERT [dbo].[testAndPatientData] ([id], [testId], [patientId], [invoiceDate]) VALUES (83, 10, 21, CAST(0x793C0B00 AS Date))
INSERT [dbo].[testAndPatientData] ([id], [testId], [patientId], [invoiceDate]) VALUES (84, 9, 21, CAST(0x793C0B00 AS Date))
INSERT [dbo].[testAndPatientData] ([id], [testId], [patientId], [invoiceDate]) VALUES (85, 4, 21, CAST(0x793C0B00 AS Date))
INSERT [dbo].[testAndPatientData] ([id], [testId], [patientId], [invoiceDate]) VALUES (86, 1, 21, CAST(0x793C0B00 AS Date))
INSERT [dbo].[testAndPatientData] ([id], [testId], [patientId], [invoiceDate]) VALUES (87, 1, 22, CAST(0x793C0B00 AS Date))
INSERT [dbo].[testAndPatientData] ([id], [testId], [patientId], [invoiceDate]) VALUES (88, 11, 22, CAST(0x793C0B00 AS Date))
INSERT [dbo].[testAndPatientData] ([id], [testId], [patientId], [invoiceDate]) VALUES (89, 1, 23, CAST(0x793C0B00 AS Date))
INSERT [dbo].[testAndPatientData] ([id], [testId], [patientId], [invoiceDate]) VALUES (90, 11, 23, CAST(0x793C0B00 AS Date))
INSERT [dbo].[testAndPatientData] ([id], [testId], [patientId], [invoiceDate]) VALUES (91, 7, 23, CAST(0x793C0B00 AS Date))
INSERT [dbo].[testAndPatientData] ([id], [testId], [patientId], [invoiceDate]) VALUES (92, 1, 24, CAST(0x793C0B00 AS Date))
INSERT [dbo].[testAndPatientData] ([id], [testId], [patientId], [invoiceDate]) VALUES (93, 1, 25, CAST(0x793C0B00 AS Date))
INSERT [dbo].[testAndPatientData] ([id], [testId], [patientId], [invoiceDate]) VALUES (94, 11, 25, CAST(0x793C0B00 AS Date))
INSERT [dbo].[testAndPatientData] ([id], [testId], [patientId], [invoiceDate]) VALUES (95, 1, 26, CAST(0x7A3C0B00 AS Date))
INSERT [dbo].[testAndPatientData] ([id], [testId], [patientId], [invoiceDate]) VALUES (96, 10, 26, CAST(0x7A3C0B00 AS Date))
INSERT [dbo].[testAndPatientData] ([id], [testId], [patientId], [invoiceDate]) VALUES (97, 9, 26, CAST(0x7A3C0B00 AS Date))
SET IDENTITY_INSERT [dbo].[testAndPatientData] OFF
SET IDENTITY_INSERT [dbo].[testRequestEntry] ON 

INSERT [dbo].[testRequestEntry] ([id], [nameOfPatient], [dateOfBirth], [mobileNo], [totalFee], [billNo], [paymentStatus], [invoiceDate]) VALUES (1, N'Onik', CAST(0x743C0B00 AS Date), N'01764144894', 0, N'E375C0E1', N'Paid', CAST(0x753C0B00 AS Date))
INSERT [dbo].[testRequestEntry] ([id], [nameOfPatient], [dateOfBirth], [mobileNo], [totalFee], [billNo], [paymentStatus], [invoiceDate]) VALUES (2, N'Rahaman', CAST(0x743C0B00 AS Date), N'01531586003', 0, N'A8210A2D', N'Paid', CAST(0x763C0B00 AS Date))
INSERT [dbo].[testRequestEntry] ([id], [nameOfPatient], [dateOfBirth], [mobileNo], [totalFee], [billNo], [paymentStatus], [invoiceDate]) VALUES (3, N'mizan', CAST(0x743C0B00 AS Date), N'1013', 670, N'8A4FF8B3', N'Unpaid', CAST(0x763C0B00 AS Date))
INSERT [dbo].[testRequestEntry] ([id], [nameOfPatient], [dateOfBirth], [mobileNo], [totalFee], [billNo], [paymentStatus], [invoiceDate]) VALUES (6, N'Imran', CAST(0x733C0B00 AS Date), N'01164446467', 0, N'9BA00B06', N'Paid', CAST(0x763C0B00 AS Date))
INSERT [dbo].[testRequestEntry] ([id], [nameOfPatient], [dateOfBirth], [mobileNo], [totalFee], [billNo], [paymentStatus], [invoiceDate]) VALUES (7, N'Salman', CAST(0x743C0B00 AS Date), N'131354155', 1670, N'5BA03837', N'Unpaid', CAST(0x763C0B00 AS Date))
INSERT [dbo].[testRequestEntry] ([id], [nameOfPatient], [dateOfBirth], [mobileNo], [totalFee], [billNo], [paymentStatus], [invoiceDate]) VALUES (8, N'Imran', CAST(0x6C3C0B00 AS Date), N'0998789876', 360, N'34F7F2E6', N'Unpaid', CAST(0x763C0B00 AS Date))
INSERT [dbo].[testRequestEntry] ([id], [nameOfPatient], [dateOfBirth], [mobileNo], [totalFee], [billNo], [paymentStatus], [invoiceDate]) VALUES (9, N'sazzad', CAST(0x753C0B00 AS Date), N'01823459094', 670, N'58513A8B', N'Unpaid', CAST(0x763C0B00 AS Date))
INSERT [dbo].[testRequestEntry] ([id], [nameOfPatient], [dateOfBirth], [mobileNo], [totalFee], [billNo], [paymentStatus], [invoiceDate]) VALUES (10, N'Habib', CAST(0xA7250B00 AS Date), N'+8801451421455', 0, N'E3B2B212', N'Paid', CAST(0x763C0B00 AS Date))
INSERT [dbo].[testRequestEntry] ([id], [nameOfPatient], [dateOfBirth], [mobileNo], [totalFee], [billNo], [paymentStatus], [invoiceDate]) VALUES (11, N'khan', CAST(0x6C3C0B00 AS Date), N'+8801457984547', 1870, N'7D07B213', N'Unpaid', CAST(0x763C0B00 AS Date))
INSERT [dbo].[testRequestEntry] ([id], [nameOfPatient], [dateOfBirth], [mobileNo], [totalFee], [billNo], [paymentStatus], [invoiceDate]) VALUES (12, N'Onik', CAST(0x6F3C0B00 AS Date), N'+8801451421478', 0, N'85DD2E79', N'Paid', CAST(0x773C0B00 AS Date))
INSERT [dbo].[testRequestEntry] ([id], [nameOfPatient], [dateOfBirth], [mobileNo], [totalFee], [billNo], [paymentStatus], [invoiceDate]) VALUES (13, N'Onik', CAST(0x683C0B00 AS Date), N'01764144898', 1520, N'7270CF8A', N'Unpaid', CAST(0x773C0B00 AS Date))
INSERT [dbo].[testRequestEntry] ([id], [nameOfPatient], [dateOfBirth], [mobileNo], [totalFee], [billNo], [paymentStatus], [invoiceDate]) VALUES (14, N'Nayeem', CAST(0xC11B0B00 AS Date), N'+8801447554444', 1870, N'F8488809', N'Unpaid', CAST(0x783C0B00 AS Date))
INSERT [dbo].[testRequestEntry] ([id], [nameOfPatient], [dateOfBirth], [mobileNo], [totalFee], [billNo], [paymentStatus], [invoiceDate]) VALUES (15, N'Armaan', CAST(0x783C0B00 AS Date), N'+8801451421499', 0, N'48389DCC', N'Paid', CAST(0x783C0B00 AS Date))
INSERT [dbo].[testRequestEntry] ([id], [nameOfPatient], [dateOfBirth], [mobileNo], [totalFee], [billNo], [paymentStatus], [invoiceDate]) VALUES (16, N'sazzad', CAST(0x6F3C0B00 AS Date), N'08390273892', 670, N'22B758AD', N'Unpaid', CAST(0x783C0B00 AS Date))
INSERT [dbo].[testRequestEntry] ([id], [nameOfPatient], [dateOfBirth], [mobileNo], [totalFee], [billNo], [paymentStatus], [invoiceDate]) VALUES (17, N'Masum', CAST(0x36230B00 AS Date), N'01764144845', 320, N'5B6DAF', N'Unpaid', CAST(0x783C0B00 AS Date))
INSERT [dbo].[testRequestEntry] ([id], [nameOfPatient], [dateOfBirth], [mobileNo], [totalFee], [billNo], [paymentStatus], [invoiceDate]) VALUES (18, N'abcd', CAST(0xE7230B00 AS Date), N'35355545455', 0, N'B6576794', N'Paid', CAST(0x783C0B00 AS Date))
INSERT [dbo].[testRequestEntry] ([id], [nameOfPatient], [dateOfBirth], [mobileNo], [totalFee], [billNo], [paymentStatus], [invoiceDate]) VALUES (19, N'Onik', CAST(0x783C0B00 AS Date), N'01124454544515', 720, N'720F1732', N'Unpaid', CAST(0x783C0B00 AS Date))
INSERT [dbo].[testRequestEntry] ([id], [nameOfPatient], [dateOfBirth], [mobileNo], [totalFee], [billNo], [paymentStatus], [invoiceDate]) VALUES (20, N'Forhan', CAST(0x8D170B00 AS Date), N'0124578414754', 620, N'CF6D6039', N'Unpaid', CAST(0x793C0B00 AS Date))
INSERT [dbo].[testRequestEntry] ([id], [nameOfPatient], [dateOfBirth], [mobileNo], [totalFee], [billNo], [paymentStatus], [invoiceDate]) VALUES (21, N'Mahfuz', CAST(0x6F3C0B00 AS Date), N'01245789541212', 1020, N'26795', N'Unpaid', CAST(0x793C0B00 AS Date))
INSERT [dbo].[testRequestEntry] ([id], [nameOfPatient], [dateOfBirth], [mobileNo], [totalFee], [billNo], [paymentStatus], [invoiceDate]) VALUES (22, N'Shuvo', CAST(0x6D3C0B00 AS Date), N'02145454545412', 950, N'EE26774D', N'Unpaid', CAST(0x793C0B00 AS Date))
INSERT [dbo].[testRequestEntry] ([id], [nameOfPatient], [dateOfBirth], [mobileNo], [totalFee], [billNo], [paymentStatus], [invoiceDate]) VALUES (23, N'Rakib', CAST(0x6A3C0B00 AS Date), N'01245784545', 1300, N'201E46D0', N'Unpaid', CAST(0x793C0B00 AS Date))
INSERT [dbo].[testRequestEntry] ([id], [nameOfPatient], [dateOfBirth], [mobileNo], [totalFee], [billNo], [paymentStatus], [invoiceDate]) VALUES (24, N'Onik', CAST(0x793C0B00 AS Date), N'31253145345454', 400, N'B26A86B7', N'Unpaid', CAST(0x793C0B00 AS Date))
INSERT [dbo].[testRequestEntry] ([id], [nameOfPatient], [dateOfBirth], [mobileNo], [totalFee], [billNo], [paymentStatus], [invoiceDate]) VALUES (25, N'Onik', CAST(0x783C0B00 AS Date), N'02454555555555', 950, N'FACB56C6', N'Unpaid', CAST(0x793C0B00 AS Date))
INSERT [dbo].[testRequestEntry] ([id], [nameOfPatient], [dateOfBirth], [mobileNo], [totalFee], [billNo], [paymentStatus], [invoiceDate]) VALUES (26, N'Habib', CAST(0x6F1E0B00 AS Date), N'+8801813868986', 900, N'208F69D5', N'Unpaid', CAST(0x7A3C0B00 AS Date))
SET IDENTITY_INSERT [dbo].[testRequestEntry] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_testRequestEntry]    Script Date: 2/19/2017 7:34:52 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_testRequestEntry] ON [dbo].[testRequestEntry]
(
	[mobileNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[test_setup]  WITH CHECK ADD  CONSTRAINT [FK_test_setup_test_type] FOREIGN KEY([typeName])
REFERENCES [dbo].[test_type] ([id])
GO
ALTER TABLE [dbo].[test_setup] CHECK CONSTRAINT [FK_test_setup_test_type]
GO
ALTER TABLE [dbo].[testAndPatientData]  WITH CHECK ADD  CONSTRAINT [FK_testAndPatientData_test_setup] FOREIGN KEY([testId])
REFERENCES [dbo].[test_setup] ([id])
GO
ALTER TABLE [dbo].[testAndPatientData] CHECK CONSTRAINT [FK_testAndPatientData_test_setup]
GO
ALTER TABLE [dbo].[testAndPatientData]  WITH CHECK ADD  CONSTRAINT [FK_testAndPatientData_testRequestEntry] FOREIGN KEY([patientId])
REFERENCES [dbo].[testRequestEntry] ([id])
GO
ALTER TABLE [dbo].[testAndPatientData] CHECK CONSTRAINT [FK_testAndPatientData_testRequestEntry]
GO
USE [master]
GO
ALTER DATABASE [Diagnostic_Center_Bill_Management_System] SET  READ_WRITE 
GO
