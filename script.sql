/****** Object:  Schema [user_pkversity]    Script Date: 4/8/2023 1:02:20 AM ******/
CREATE SCHEMA [user_pkversity]
GO
/****** Object:  Table [dbo].[AcademicInfo]    Script Date: 4/8/2023 1:02:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AcademicInfo](
	[AcademicId] [int] NULL,
	[DegreeName] [nvarchar](50) NULL,
	[ObtainedMarks] [nvarchar](50) NULL,
	[TotalMarks] [nvarchar](50) NULL,
	[Percentage] [nvarchar](50) NULL,
	[SubjectGroups] [nvarchar](50) NULL,
	[Institute] [nvarchar](50) NULL,
	[Board/University] [nvarchar](50) NULL,
	[PassingYear] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Admins]    Script Date: 4/8/2023 1:02:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admins](
	[AdminId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
 CONSTRAINT [PK_Admins] PRIMARY KEY CLUSTERED 
(
	[AdminId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApprovedBy]    Script Date: 4/8/2023 1:02:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApprovedBy](
	[ApprovedById] [int] IDENTITY(1,1) NOT NULL,
	[Approval] [nvarchar](50) NULL,
 CONSTRAINT [PK_ApprovedBys] PRIMARY KEY CLUSTERED 
(
	[ApprovedById] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cities]    Script Date: 4/8/2023 1:02:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cities](
	[CityId] [int] IDENTITY(1,1) NOT NULL,
	[CityName] [nvarchar](50) NULL,
	[CityCode] [nvarchar](50) NULL,
 CONSTRAINT [PK_Citys] PRIMARY KEY CLUSTERED 
(
	[CityId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Eligibilities]    Script Date: 4/8/2023 1:02:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Eligibilities](
	[EligibilityId] [int] IDENTITY(1,1) NOT NULL,
	[PassingDSGroups] [nvarchar](50) NULL,
	[ProgramDDId] [int] NULL,
	[ProgramDegreeDetailsId] [int] NULL,
	[Percentage] [int] NULL,
	[InstituteId] [int] NULL,
 CONSTRAINT [PK_Eligibilitys] PRIMARY KEY CLUSTERED 
(
	[EligibilityId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExceptionHandelling]    Script Date: 4/8/2023 1:02:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExceptionHandelling](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DateTime] [datetime] NULL,
	[Exception] [nvarchar](500) NULL,
 CONSTRAINT [PK_ExceptionHandelling] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FutureScope]    Script Date: 4/8/2023 1:02:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FutureScope](
	[ProgramDegreeId] [int] NULL,
	[Description] [nvarchar](4000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Institutes]    Script Date: 4/8/2023 1:02:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Institutes](
	[InstituteId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[admission_open_close] [bit] NULL,
	[UserName] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[CreatedOn] [nvarchar](50) NULL,
	[IsActive] [bit] NOT NULL,
	[CityId] [int] NULL,
	[TypeOfId] [int] NULL,
	[Location] [nvarchar](50) NULL,
	[AdminId] [int] NULL,
 CONSTRAINT [PK_Institutes] PRIMARY KEY CLUSTERED 
(
	[InstituteId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PassingDegrees]    Script Date: 4/8/2023 1:02:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PassingDegrees](
	[PassingDegreeId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NULL,
 CONSTRAINT [PK_PassingDegrees] PRIMARY KEY CLUSTERED 
(
	[PassingDegreeId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PassingDSGroups]    Script Date: 4/8/2023 1:02:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PassingDSGroups](
	[PassingDSGroupsId] [int] IDENTITY(1,1) NOT NULL,
	[PassingDSGroups] [nvarchar](60) NULL,
	[PassingDegreeId] [int] NULL,
 CONSTRAINT [PK_PassingDSGroups] PRIMARY KEY CLUSTERED 
(
	[PassingDSGroupsId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProgramCategories]    Script Date: 4/8/2023 1:02:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProgramCategories](
	[ProgramCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](50) NULL,
 CONSTRAINT [PK_ProgramCatagorys] PRIMARY KEY CLUSTERED 
(
	[ProgramCategoryId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProgramDegreeDetails]    Script Date: 4/8/2023 1:02:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProgramDegreeDetails](
	[ProgramDegreeDetailsId] [int] IDENTITY(1,1) NOT NULL,
	[Programs] [nvarchar](50) NULL,
	[Duration] [nvarchar](50) NULL,
	[TotalSemesters] [int] NULL,
	[Matric] [int] NULL,
	[FSC] [int] NULL,
	[BS] [int] NULL,
	[TotalFee] [nvarchar](50) NULL,
	[SemesterFee] [nvarchar](50) NULL,
	[ClosingMerit] [nvarchar](50) NULL,
	[ApprovedById] [nvarchar](50) NULL,
	[Morning] [bit] NULL,
	[Evening] [bit] NULL,
	[Weekened] [bit] NULL,
	[CityId] [int] NULL,
	[PassingDegreeGroups] [nvarchar](60) NULL,
	[ProgramDegreeId] [int] NULL,
	[InstituteId] [int] NULL,
 CONSTRAINT [PK_ProgramDegreeDetails] PRIMARY KEY CLUSTERED 
(
	[ProgramDegreeDetailsId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProgramDegrees]    Script Date: 4/8/2023 1:02:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProgramDegrees](
	[ProgramDegreeId] [int] IDENTITY(1,1) NOT NULL,
	[DegreeName] [nvarchar](50) NULL,
	[ProgramCategoryId] [int] NOT NULL,
 CONSTRAINT [PK_ProgramDegrees] PRIMARY KEY CLUSTERED 
(
	[ProgramDegreeId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RegistrationFrom]    Script Date: 4/8/2023 1:02:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RegistrationFrom](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
 CONSTRAINT [PK_RegistrationFrom] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StdFsc]    Script Date: 4/8/2023 1:02:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StdFsc](
	[SID] [int] NULL,
	[PassingDSGroup] [nvarchar](50) NULL,
	[Board_University] [nvarchar](50) NULL,
	[ObtainedMarks] [nvarchar](50) NULL,
	[TotalMarks] [nvarchar](50) NULL,
	[Percentage] [nvarchar](50) NULL,
	[PassingYear] [nvarchar](50) NULL,
	[Institute] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StdMatric]    Script Date: 4/8/2023 1:02:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StdMatric](
	[SID] [int] NULL,
	[PassingDSGroup] [nvarchar](50) NULL,
	[Board_University] [nvarchar](50) NULL,
	[ObtainedMarks] [nvarchar](50) NULL,
	[TotalMarks] [nvarchar](50) NULL,
	[Percentage] [nvarchar](50) NULL,
	[PassingYear] [nvarchar](50) NULL,
	[Institute] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentInfo]    Script Date: 4/8/2023 1:02:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentInfo](
	[SID] [int] NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[FatherName] [nvarchar](50) NULL,
	[Gender] [nvarchar](50) NULL,
	[StdCnic] [nvarchar](50) NULL,
	[DateOfBirth] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[StdMobileNumber] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subjects]    Script Date: 4/8/2023 1:02:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subjects](
	[SubjectsId] [int] IDENTITY(1,1) NOT NULL,
	[SubCode] [nvarchar](50) NULL,
	[SubTitle] [nvarchar](50) NULL,
 CONSTRAINT [PK_Subjectss] PRIMARY KEY CLUSTERED 
(
	[SubjectsId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeOfs]    Script Date: 4/8/2023 1:02:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeOfs](
	[TypeOfId] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](50) NULL,
 CONSTRAINT [PK_TypeOfs] PRIMARY KEY CLUSTERED 
(
	[TypeOfId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserInfo]    Script Date: 4/8/2023 1:02:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserInfo](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[ContactNo] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[Gender] [nvarchar](50) NULL,
	[Role] [nvarchar](50) NULL,
 CONSTRAINT [PK_UserInfo] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Cities] ON 

INSERT [dbo].[Cities] ([CityId], [CityName], [CityCode]) VALUES (1, N'Islamabad', N'51')
INSERT [dbo].[Cities] ([CityId], [CityName], [CityCode]) VALUES (2, N'Rawalpindi', N'52')
INSERT [dbo].[Cities] ([CityId], [CityName], [CityCode]) VALUES (3, N'Karachi', N'32')
SET IDENTITY_INSERT [dbo].[Cities] OFF
GO
SET IDENTITY_INSERT [dbo].[ExceptionHandelling] ON 

INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (1, CAST(N'2022-09-08T16:48:23.570' AS DateTime), N'Input string was not in a correct format.   at System.Number.ThrowOverflowOrFormatException(ParsingStatus status, TypeCode type)
   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DALProgramDegreeDetails.GetProgramDegreeDetailsByInstituteId(String InstituteId) in D:\Backup for .Net\Change login\ASYEM\ClassLibraryDAL\DALProgramDegreeDetails.cs:line 77')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (2, CAST(N'2022-09-08T16:48:48.170' AS DateTime), N'Input string was not in a correct format.   at System.Number.ThrowOverflowOrFormatException(ParsingStatus status, TypeCode type)
   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DALProgramDegreeDetails.GetProgramDegreeDetailsByInstituteId(String InstituteId) in D:\Backup for .Net\Change login\ASYEM\ClassLibraryDAL\DALProgramDegreeDetails.cs:line 77')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (3, CAST(N'2022-09-08T16:50:01.470' AS DateTime), N'Input string was not in a correct format.   at System.Number.ThrowOverflowOrFormatException(ParsingStatus status, TypeCode type)
   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DALProgramDegreeDetails.GetProgramDegreeDetailsByInstituteId(String InstituteId) in D:\Backup for .Net\Change login\ASYEM\ClassLibraryDAL\DALProgramDegreeDetails.cs:line 77')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (4, CAST(N'2022-09-14T11:12:21.607' AS DateTime), N'Input string was not in a correct format.   at System.Number.ThrowOverflowOrFormatException(ParsingStatus status, TypeCode type)
   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DALProgramDegreeDetails.SaveProgramDegreeDetails(EntProgramDegreeDetails ee) in D:\Backup for .Net\Change login\ASYEM\ClassLibraryDAL\DALProgramDegreeDetails.cs:line 140')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (5, CAST(N'2022-09-14T11:12:27.703' AS DateTime), N'Input string was not in a correct format.   at System.Number.ThrowOverflowOrFormatException(ParsingStatus status, TypeCode type)
   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DALProgramDegreeDetails.SaveProgramDegreeDetails(EntProgramDegreeDetails ee) in D:\Backup for .Net\Change login\ASYEM\ClassLibraryDAL\DALProgramDegreeDetails.cs:line 140')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (6, CAST(N'2022-09-14T11:12:48.703' AS DateTime), N'Input string was not in a correct format.   at System.Number.ThrowOverflowOrFormatException(ParsingStatus status, TypeCode type)
   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DALProgramDegreeDetails.SaveProgramDegreeDetails(EntProgramDegreeDetails ee) in D:\Backup for .Net\Change login\ASYEM\ClassLibraryDAL\DALProgramDegreeDetails.cs:line 140')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (7, CAST(N'2022-09-14T11:12:51.073' AS DateTime), N'Input string was not in a correct format.   at System.Number.ThrowOverflowOrFormatException(ParsingStatus status, TypeCode type)
   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DALProgramDegreeDetails.SaveProgramDegreeDetails(EntProgramDegreeDetails ee) in D:\Backup for .Net\Change login\ASYEM\ClassLibraryDAL\DALProgramDegreeDetails.cs:line 140')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (8, CAST(N'2022-09-14T11:12:56.820' AS DateTime), N'Input string was not in a correct format.   at System.Number.ThrowOverflowOrFormatException(ParsingStatus status, TypeCode type)
   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DALProgramDegreeDetails.SaveProgramDegreeDetails(EntProgramDegreeDetails ee) in D:\Backup for .Net\Change login\ASYEM\ClassLibraryDAL\DALProgramDegreeDetails.cs:line 140')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (9, CAST(N'2022-09-14T11:12:58.297' AS DateTime), N'Input string was not in a correct format.   at System.Number.ThrowOverflowOrFormatException(ParsingStatus status, TypeCode type)
   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DALProgramDegreeDetails.SaveProgramDegreeDetails(EntProgramDegreeDetails ee) in D:\Backup for .Net\Change login\ASYEM\ClassLibraryDAL\DALProgramDegreeDetails.cs:line 140')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (10, CAST(N'2022-09-14T11:13:19.887' AS DateTime), N'Input string was not in a correct format.   at System.Number.ThrowOverflowOrFormatException(ParsingStatus status, TypeCode type)
   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DALProgramDegreeDetails.SaveProgramDegreeDetails(EntProgramDegreeDetails ee) in D:\Backup for .Net\Change login\ASYEM\ClassLibraryDAL\DALProgramDegreeDetails.cs:line 140')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (11, CAST(N'2022-09-14T11:26:52.120' AS DateTime), N'Input string was not in a correct format.   at System.Number.ThrowOverflowOrFormatException(ParsingStatus status, TypeCode type)
   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DALProgramDegreeDetails.SaveProgramDegreeDetails(EntProgramDegreeDetails ee) in D:\Backup for .Net\Change login\ASYEM\ClassLibraryDAL\DALProgramDegreeDetails.cs:line 140')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (12, CAST(N'2022-09-14T11:29:04.210' AS DateTime), N'Input string was not in a correct format.   at System.Number.ThrowOverflowOrFormatException(ParsingStatus status, TypeCode type)
   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DALProgramDegreeDetails.SaveProgramDegreeDetails(EntProgramDegreeDetails ee) in D:\Backup for .Net\Change login\ASYEM\ClassLibraryDAL\DALProgramDegreeDetails.cs:line 140')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (13, CAST(N'2022-09-14T11:32:30.113' AS DateTime), N'Input string was not in a correct format.   at System.Number.ThrowOverflowOrFormatException(ParsingStatus status, TypeCode type)
   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DALProgramDegreeDetails.SaveProgramDegreeDetails(EntProgramDegreeDetails ee) in D:\Backup for .Net\Change login\ASYEM\ClassLibraryDAL\DALProgramDegreeDetails.cs:line 140')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (14, CAST(N'2022-09-14T11:32:42.237' AS DateTime), N'Input string was not in a correct format.   at System.Number.ThrowOverflowOrFormatException(ParsingStatus status, TypeCode type)
   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DALProgramDegreeDetails.SaveProgramDegreeDetails(EntProgramDegreeDetails ee) in D:\Backup for .Net\Change login\ASYEM\ClassLibraryDAL\DALProgramDegreeDetails.cs:line 140')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (15, CAST(N'2022-09-14T16:30:31.140' AS DateTime), N'Input string was not in a correct format.   at System.Number.ThrowOverflowOrFormatException(ParsingStatus status, TypeCode type)
   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DALProgramDegreeDetails.SaveProgramDegreeDetails(EntProgramDegreeDetails ee) in D:\Backup for .Net\Change login\ASYEM\ClassLibraryDAL\DALProgramDegreeDetails.cs:line 140')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (16, CAST(N'2022-09-14T16:30:37.403' AS DateTime), N'Input string was not in a correct format.   at System.Number.ThrowOverflowOrFormatException(ParsingStatus status, TypeCode type)
   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DALProgramDegreeDetails.SaveProgramDegreeDetails(EntProgramDegreeDetails ee) in D:\Backup for .Net\Change login\ASYEM\ClassLibraryDAL\DALProgramDegreeDetails.cs:line 140')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (17, CAST(N'2022-09-14T16:30:39.533' AS DateTime), N'Input string was not in a correct format.   at System.Number.ThrowOverflowOrFormatException(ParsingStatus status, TypeCode type)
   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DALProgramDegreeDetails.SaveProgramDegreeDetails(EntProgramDegreeDetails ee) in D:\Backup for .Net\Change login\ASYEM\ClassLibraryDAL\DALProgramDegreeDetails.cs:line 140')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (18, CAST(N'2022-09-14T16:30:51.473' AS DateTime), N'Input string was not in a correct format.   at System.Number.ThrowOverflowOrFormatException(ParsingStatus status, TypeCode type)
   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DALProgramDegreeDetails.SaveProgramDegreeDetails(EntProgramDegreeDetails ee) in D:\Backup for .Net\Change login\ASYEM\ClassLibraryDAL\DALProgramDegreeDetails.cs:line 140')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (19, CAST(N'2022-09-14T16:31:18.867' AS DateTime), N'Input string was not in a correct format.   at System.Number.ThrowOverflowOrFormatException(ParsingStatus status, TypeCode type)
   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DALProgramDegreeDetails.SaveProgramDegreeDetails(EntProgramDegreeDetails ee) in D:\Backup for .Net\Change login\ASYEM\ClassLibraryDAL\DALProgramDegreeDetails.cs:line 140')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (20, CAST(N'2022-09-14T16:32:41.920' AS DateTime), N'Input string was not in a correct format.   at System.Number.ThrowOverflowOrFormatException(ParsingStatus status, TypeCode type)
   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DALProgramDegreeDetails.SaveProgramDegreeDetails(EntProgramDegreeDetails ee) in D:\Backup for .Net\Change login\ASYEM\ClassLibraryDAL\DALProgramDegreeDetails.cs:line 140')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (21, CAST(N'2022-09-14T16:35:20.983' AS DateTime), N'Input string was not in a correct format.   at System.Number.ThrowOverflowOrFormatException(ParsingStatus status, TypeCode type)
   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DALProgramDegreeDetails.SaveProgramDegreeDetails(EntProgramDegreeDetails ee) in D:\Backup for .Net\Change login\ASYEM\ClassLibraryDAL\DALProgramDegreeDetails.cs:line 140')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (22, CAST(N'2022-09-14T16:35:22.150' AS DateTime), N'Input string was not in a correct format.   at System.Number.ThrowOverflowOrFormatException(ParsingStatus status, TypeCode type)
   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DALProgramDegreeDetails.SaveProgramDegreeDetails(EntProgramDegreeDetails ee) in D:\Backup for .Net\Change login\ASYEM\ClassLibraryDAL\DALProgramDegreeDetails.cs:line 140')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (23, CAST(N'2022-09-14T16:35:23.640' AS DateTime), N'Input string was not in a correct format.   at System.Number.ThrowOverflowOrFormatException(ParsingStatus status, TypeCode type)
   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DALProgramDegreeDetails.SaveProgramDegreeDetails(EntProgramDegreeDetails ee) in D:\Backup for .Net\Change login\ASYEM\ClassLibraryDAL\DALProgramDegreeDetails.cs:line 140')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (24, CAST(N'2022-09-14T16:35:24.770' AS DateTime), N'Input string was not in a correct format.   at System.Number.ThrowOverflowOrFormatException(ParsingStatus status, TypeCode type)
   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DALProgramDegreeDetails.SaveProgramDegreeDetails(EntProgramDegreeDetails ee) in D:\Backup for .Net\Change login\ASYEM\ClassLibraryDAL\DALProgramDegreeDetails.cs:line 140')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (25, CAST(N'2022-09-14T16:35:25.917' AS DateTime), N'Input string was not in a correct format.   at System.Number.ThrowOverflowOrFormatException(ParsingStatus status, TypeCode type)
   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DALProgramDegreeDetails.SaveProgramDegreeDetails(EntProgramDegreeDetails ee) in D:\Backup for .Net\Change login\ASYEM\ClassLibraryDAL\DALProgramDegreeDetails.cs:line 140')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (26, CAST(N'2022-09-14T16:36:11.380' AS DateTime), N'Input string was not in a correct format.   at System.Number.ThrowOverflowOrFormatException(ParsingStatus status, TypeCode type)
   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DALProgramDegreeDetails.SaveProgramDegreeDetails(EntProgramDegreeDetails ee) in D:\Backup for .Net\Change login\ASYEM\ClassLibraryDAL\DALProgramDegreeDetails.cs:line 140')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (27, CAST(N'2022-09-16T16:16:32.073' AS DateTime), N'Procedure or function ''U_SP_GetDepartmentCountByGroupIdAndCityId'' expects parameter ''@PDSGID'', which was not supplied.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (28, CAST(N'2022-09-17T19:40:37.173' AS DateTime), N'Procedure or function ''U_SP_SaveSignUp'' expects parameter ''@Gender'', which was not supplied.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpl')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (29, CAST(N'2022-09-23T15:03:51.730' AS DateTime), N'Value cannot be null. (Parameter ''s'')   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DalFilter.GetDepartmentsbyID(String PDSGID, String CityId, String Percentage) in D:\Backup for .Net\ASYEM\ClassLibraryDAL\DalFilter.cs:line 65')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (30, CAST(N'2022-09-23T15:03:54.160' AS DateTime), N'Value cannot be null. (Parameter ''s'')   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DalFilter.GetDepartmentsbyID(String PDSGID, String CityId, String Percentage) in D:\Backup for .Net\ASYEM\ClassLibraryDAL\DalFilter.cs:line 65')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (31, CAST(N'2022-09-23T15:56:29.143' AS DateTime), N'Value cannot be null. (Parameter ''s'')   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DalFilter.GetDepartmentsbyID(String PDSGID, String CityId, String Percentage) in D:\Backup for .Net\ASYEM\ClassLibraryDAL\DalFilter.cs:line 65')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (32, CAST(N'2022-11-13T00:34:12.513' AS DateTime), N'Value cannot be null. (Parameter ''s'')   at System.Int32.Parse(String s)
   at ClassLibraryDAL.DalFilter.GetDepartmentsbyID(String PDSGID, String CityId, String Percentage) in D:\Backup for .Net\ASYEM\ClassLibraryDAL\DalFilter.cs:line 65')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (33, CAST(N'2022-11-21T16:41:33.507' AS DateTime), N'Procedure or function ''U_SP_SaveSignUp'' expects parameter ''@FirstName'', which was not supplied.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySi')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (34, CAST(N'2023-01-31T21:49:32.010' AS DateTime), N'Procedure or function ''SP_SaveStudentInfo'' expects parameter ''@Gender'', which was not supplied.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySi')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (35, CAST(N'2023-01-31T23:33:00.720' AS DateTime), N'Could not find stored procedure ''U_SP_GetStudentInfobyID''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsPar')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (36, CAST(N'2023-01-31T23:33:58.740' AS DateTime), N'Could not find stored procedure ''U_SP_GetStudentInfobyID''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsPar')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (37, CAST(N'2023-01-31T23:34:32.267' AS DateTime), N'Could not find stored procedure ''U_SP_GetStudentInfobyID''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsPar')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (38, CAST(N'2023-01-31T23:35:45.130' AS DateTime), N'Could not find stored procedure ''U_SP_GetStudentInfobyID''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsPar')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (39, CAST(N'2023-03-07T00:58:58.570' AS DateTime), N'Could not find stored procedure ''U_SP_GetStudentInfobyID''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsPar')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (40, CAST(N'2023-03-07T00:59:10.533' AS DateTime), N'Could not find stored procedure ''U_SP_GetStudentInfobyID''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsPar')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (41, CAST(N'2023-03-07T01:00:47.607' AS DateTime), N'Could not find stored procedure ''U_SP_GetStudentInfobyID''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsPar')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (42, CAST(N'2023-03-07T01:02:18.990' AS DateTime), N'Could not find stored procedure ''U_SP_GetStudentInfobyID''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsPar')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (43, CAST(N'2023-03-07T01:03:17.840' AS DateTime), N'Could not find stored procedure ''U_SP_GetStudentInfobyID''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsPar')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (44, CAST(N'2023-03-07T01:13:23.067' AS DateTime), N'Could not find stored procedure ''U_SP_GetStudentInfobyID''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsPar')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (45, CAST(N'2023-03-07T01:14:15.423' AS DateTime), N'Could not find stored procedure ''U_SP_GetStudentInfobyID''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsPar')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (46, CAST(N'2023-03-07T01:15:02.577' AS DateTime), N'Could not find stored procedure ''U_SP_GetStudentInfobyID''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsPar')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (47, CAST(N'2023-03-07T01:16:51.363' AS DateTime), N'Could not find stored procedure ''U_SP_GetStudentInfobyID''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsPar')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (48, CAST(N'2023-03-07T01:16:58.640' AS DateTime), N'Could not find stored procedure ''U_SP_GetStudentInfobyID''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsPar')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (49, CAST(N'2023-03-07T01:17:53.543' AS DateTime), N'Could not find stored procedure ''U_SP_GetStudentInfobyID''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsPar')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (50, CAST(N'2023-03-07T01:19:01.487' AS DateTime), N'Could not find stored procedure ''U_SP_GetStudentInfobyID''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsPar')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (51, CAST(N'2023-04-02T03:11:20.347' AS DateTime), N'Procedure or function ''SP_SaveStdFsc'' expects parameter ''@PassingDSGroup'', which was not supplied.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCop')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (52, CAST(N'2023-04-02T09:53:23.207' AS DateTime), N'Could not find stored procedure ''U_SP_GetStudentInfobyID''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsPar')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (53, CAST(N'2023-04-02T09:53:37.133' AS DateTime), N'Could not find stored procedure ''U_SP_GetStudentInfobyID''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsPar')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (54, CAST(N'2023-04-02T09:55:28.530' AS DateTime), N'Could not find stored procedure ''U_SP_GetStudentInfobyID''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsPar')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (55, CAST(N'2023-04-02T09:55:36.210' AS DateTime), N'Could not find stored procedure ''U_SP_GetStudentInfobyID''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsPar')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (56, CAST(N'2023-04-02T09:56:46.040' AS DateTime), N'Could not find stored procedure ''U_SP_GetStudentInfobyID''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsPar')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (57, CAST(N'2023-04-02T09:56:52.800' AS DateTime), N'Could not find stored procedure ''U_SP_GetStudentInfobyID''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsPar')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (58, CAST(N'2023-04-02T09:57:12.080' AS DateTime), N'Could not find stored procedure ''U_SP_GetStudentInfobyID''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsPar')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (59, CAST(N'2023-04-02T09:58:53.643' AS DateTime), N'Could not find stored procedure ''U_SP_GetStudentInfobyID''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsPar')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (60, CAST(N'2023-04-02T10:15:03.980' AS DateTime), N'Could not find stored procedure ''U_SP_GetStudentInfobyID''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsPar')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (61, CAST(N'2023-04-02T10:15:55.520' AS DateTime), N'Could not find stored procedure ''U_SP_GetStudentInfobyID''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsPar')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (62, CAST(N'2023-04-03T19:25:38.180' AS DateTime), N'A connection was successfully established with the server, but then an error occurred during the login process. (provider: TCP Provider, error: 0 - An existing connection was forcibly closed by the remote host.)   at System.Data.ProviderBase.DbConnectionPool.CheckPoolBlockingPeriod(Exception e)
   at System.Data.ProviderBase.DbConnectionPool.CreateObject(DbConnection owningObject, DbConnectionOptions userOptions, DbConnectionInternal oldConnection)
   at System.Data.ProviderBase.DbConnectionPo')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (63, CAST(N'2023-04-03T19:27:36.750' AS DateTime), N'A connection was successfully established with the server, but then an error occurred during the login process. (provider: TCP Provider, error: 0 - An existing connection was forcibly closed by the remote host.)   at System.Data.ProviderBase.DbConnectionPool.CheckPoolBlockingPeriod(Exception e)
   at System.Data.ProviderBase.DbConnectionPool.CreateObject(DbConnection owningObject, DbConnectionOptions userOptions, DbConnectionInternal oldConnection)
   at System.Data.ProviderBase.DbConnectionPo')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (64, CAST(N'2023-04-06T10:05:28.580' AS DateTime), N'Invalid column name ''Logo''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolea')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (65, CAST(N'2023-04-06T10:05:41.863' AS DateTime), N'Invalid column name ''Logo''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolea')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (66, CAST(N'2023-04-06T10:06:15.320' AS DateTime), N'Invalid column name ''Logo''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolea')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (67, CAST(N'2023-04-06T10:06:21.973' AS DateTime), N'Invalid column name ''Logo''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolea')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (68, CAST(N'2023-04-06T10:08:32.067' AS DateTime), N'Invalid column name ''Logo''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolea')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (69, CAST(N'2023-04-06T10:08:33.390' AS DateTime), N'Invalid column name ''Logo''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolea')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (70, CAST(N'2023-04-06T10:08:47.333' AS DateTime), N'Invalid column name ''Logo''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolea')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (71, CAST(N'2023-04-06T10:09:37.337' AS DateTime), N'Invalid column name ''Logo''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolea')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (72, CAST(N'2023-04-06T10:09:38.933' AS DateTime), N'Invalid column name ''Logo''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolea')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (73, CAST(N'2023-04-06T10:13:09.213' AS DateTime), N'Invalid column name ''Logo''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolea')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (74, CAST(N'2023-04-06T10:13:19.613' AS DateTime), N'Invalid column name ''Logo''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolea')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (75, CAST(N'2023-04-06T10:13:24.717' AS DateTime), N'Invalid column name ''Logo''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolea')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (76, CAST(N'2023-04-06T10:13:27.857' AS DateTime), N'Invalid column name ''Logo''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolea')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (77, CAST(N'2023-04-06T10:13:28.827' AS DateTime), N'Invalid column name ''Logo''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolea')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (78, CAST(N'2023-04-06T10:13:34.210' AS DateTime), N'Invalid column name ''Logo''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolea')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (79, CAST(N'2023-04-06T10:31:58.453' AS DateTime), N'Invalid column name ''Logo''.   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolea')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (80, CAST(N'2023-04-06T22:18:43.877' AS DateTime), N'Unable to cast object of type ''System.Boolean'' to type ''System.Nullable`1[System.Int32]''.   at ClassLibraryDAL.DalFilter.GetDepartmentsbyID(String PDSGID, String CityId, String Percentage) in E:\pkversity\ClassLibraryDAL\DalFilter.cs:line 81')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (81, CAST(N'2023-04-06T22:18:55.530' AS DateTime), N'Unable to cast object of type ''System.Boolean'' to type ''System.Nullable`1[System.Int32]''.   at ClassLibraryDAL.DalFilter.GetDepartmentsbyID(String PDSGID, String CityId, String Percentage) in E:\pkversity\ClassLibraryDAL\DalFilter.cs:line 81')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (82, CAST(N'2023-04-06T22:19:01.630' AS DateTime), N'Unable to cast object of type ''System.Boolean'' to type ''System.Nullable`1[System.Int32]''.   at ClassLibraryDAL.DalFilter.GetDepartmentsbyID(String PDSGID, String CityId, String Percentage) in E:\pkversity\ClassLibraryDAL\DalFilter.cs:line 81')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (83, CAST(N'2023-04-06T22:19:56.243' AS DateTime), N'Unable to cast object of type ''System.Boolean'' to type ''System.Nullable`1[System.Int32]''.   at ClassLibraryDAL.DalFilter.GetDepartmentsbyID(String PDSGID, String CityId, String Percentage) in E:\pkversity\ClassLibraryDAL\DalFilter.cs:line 81')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (84, CAST(N'2023-04-06T22:20:58.453' AS DateTime), N'Unable to cast object of type ''System.Boolean'' to type ''System.Nullable`1[System.Int32]''.   at ClassLibraryDAL.DalFilter.GetDepartmentsbyID(String PDSGID, String CityId, String Percentage) in E:\pkversity\ClassLibraryDAL\DalFilter.cs:line 81')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (85, CAST(N'2023-04-06T22:23:39.140' AS DateTime), N'Unable to cast object of type ''System.Boolean'' to type ''System.Nullable`1[System.Int32]''.   at ClassLibraryDAL.DalFilter.GetDepartmentsbyID(String PDSGID, String CityId, String Percentage)')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (86, CAST(N'2023-04-07T17:55:12.600' AS DateTime), N'A transport-level error has occurred when receiving results from the server. (provider: TCP Provider, error: 0 - The semaphore timeout period has expired.)   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParserStateObject.ReadSniError(TdsPars')
INSERT [dbo].[ExceptionHandelling] ([ID], [DateTime], [Exception]) VALUES (87, CAST(N'2023-04-07T18:46:20.597' AS DateTime), N'Value cannot be null. (Parameter ''s'')   at ClassLibraryDAL.DalFilter.GetDepartmentsbyID(String PDSGID, String CityId, String Percentage) in D:\Pkversity_testing\pkversity_old\PKVERSITY_ASYSEM\ClassLibraryDAL\DalFilter.cs:line 59')
SET IDENTITY_INSERT [dbo].[ExceptionHandelling] OFF
GO
INSERT [dbo].[FutureScope] ([ProgramDegreeId], [Description]) VALUES (1, N'<p><span style="background-color:rgb(255,255,255);color:rgb(32,33,36);">Industries with high IT expert demand are the </span><strong>IT sector itself, Engineering &amp; Manufacturing, Automobile, Content Industry, Sales &amp; Marketing companies, Education Sector, Healthcare and Media Houses</strong><span style="background-color:rgb(255,255,255);color:rgb(32,33,36);">. Newer technologies are evolving every minute</span></p>')
INSERT [dbo].[FutureScope] ([ProgramDegreeId], [Description]) VALUES (2, N'<p><span style="background-color:rgb(255,255,255);color:rgb(32,33,36);">Industries with high IT expert demand are the </span><strong>IT sector itself, Engineering &amp; Manufacturing, Automobile, Content Industry, Sales &amp; Marketing companies, Education Sector, Healthcare and Media Houses</strong><span style="background-color:rgb(255,255,255);color:rgb(32,33,36);">. Newer technologies are evolving every minute</span></p>')
INSERT [dbo].[FutureScope] ([ProgramDegreeId], [Description]) VALUES (3, N'<p><span style="background-color:rgb(255,255,255);color:rgb(32,33,36);">Industries with high IT expert demand are the </span><strong>IT sector itself, Engineering &amp; Manufacturing, Automobile, Content Industry, Sales &amp; Marketing companies, Education Sector, Healthcare and Media Houses</strong><span style="background-color:rgb(255,255,255);color:rgb(32,33,36);">. Newer technologies are evolving every minute</span></p>')
INSERT [dbo].[FutureScope] ([ProgramDegreeId], [Description]) VALUES (4, N'<p><span style="background-color:rgb(255,255,255);color:rgb(32,33,36);">Industries with high IT expert demand are the </span><strong>IT sector itself, Engineering &amp; Manufacturing, Automobile, Content Industry, Sales &amp; Marketing companies, Education Sector, Healthcare and Media Houses</strong><span style="background-color:rgb(255,255,255);color:rgb(32,33,36);">. Newer technologies are evolving every minute</span></p>')
INSERT [dbo].[FutureScope] ([ProgramDegreeId], [Description]) VALUES (5, N'<p><span style="background-color:rgb(255,255,255);color:rgb(32,33,36);">Industries with high IT expert demand are the </span><strong>IT sector itself, Engineering &amp; Manufacturing, Automobile, Content Industry, Sales &amp; Marketing companies, Education Sector, Healthcare and Media Houses</strong><span style="background-color:rgb(255,255,255);color:rgb(32,33,36);">. Newer technologies are evolving every minute</span></p>')
INSERT [dbo].[FutureScope] ([ProgramDegreeId], [Description]) VALUES (6, N'<p><span style="background-color:rgb(255,255,255);color:rgb(32,33,36);">Industries with high IT expert demand are the </span><strong>IT sector itself, Engineering &amp; Manufacturing, Automobile, Content Industry, Sales &amp; Marketing companies, Education Sector, Healthcare and Media Houses</strong><span style="background-color:rgb(255,255,255);color:rgb(32,33,36);">. Newer technologies are evolving every minute</span></p>')
INSERT [dbo].[FutureScope] ([ProgramDegreeId], [Description]) VALUES (7, N'<p><span style="background-color:rgb(255,255,255);color:rgb(32,33,36);">Industries with high IT expert demand are the </span><strong>IT sector itself, Engineering &amp; Manufacturing, Automobile, Content Industry, Sales &amp; Marketing companies, Education Sector, Healthcare and Media Houses</strong><span style="background-color:rgb(255,255,255);color:rgb(32,33,36);">. Newer technologies are evolving every minute</span></p>')
INSERT [dbo].[FutureScope] ([ProgramDegreeId], [Description]) VALUES (8, N'<p><span style="background-color:rgb(255,255,255);color:rgb(32,33,36);">Industries with high IT expert demand are the </span><strong>IT sector itself, Engineering &amp; Manufacturing, Automobile, Content Industry, Sales &amp; Marketing companies, Education Sector, Healthcare and Media Houses</strong><span style="background-color:rgb(255,255,255);color:rgb(32,33,36);">. Newer technologies are evolving every minute</span></p>')
INSERT [dbo].[FutureScope] ([ProgramDegreeId], [Description]) VALUES (9, N'<p><span style="background-color:rgb(255,255,255);color:rgb(32,33,36);">Industries with high IT expert demand are the </span><strong>IT sector itself, Engineering &amp; Manufacturing, Automobile, Content Industry, Sales &amp; Marketing companies, Education Sector, Healthcare and Media Houses</strong><span style="background-color:rgb(255,255,255);color:rgb(32,33,36);">. Newer technologies are evolving every minute</span></p>')
INSERT [dbo].[FutureScope] ([ProgramDegreeId], [Description]) VALUES (10, N'<p><span style="background-color:rgb(255,255,255);color:rgb(32,33,36);">Industries with high IT expert demand are the </span><strong>IT sector itself, Engineering &amp; Manufacturing, Automobile, Content Industry, Sales &amp; Marketing companies, Education Sector, Healthcare and Media Houses</strong><span style="background-color:rgb(255,255,255);color:rgb(32,33,36);">. Newer technologies are evolving every minute</span></p>')
INSERT [dbo].[FutureScope] ([ProgramDegreeId], [Description]) VALUES (11, N'<p><span style="background-color:rgb(255,255,255);color:rgb(32,33,36);">Industries with high IT expert demand are the </span><strong>IT sector itself, Engineering &amp; Manufacturing, Automobile, Content Industry, Sales &amp; Marketing companies, Education Sector, Healthcare and Media Houses</strong><span style="background-color:rgb(255,255,255);color:rgb(32,33,36);">. Newer technologies are evolving every minute</span></p>')
INSERT [dbo].[FutureScope] ([ProgramDegreeId], [Description]) VALUES (12, N'<p><span style="background-color:rgb(255,255,255);color:rgb(32,33,36);">Industries with high IT expert demand are the </span><strong>IT sector itself, Engineering &amp; Manufacturing, Automobile, Content Industry, Sales &amp; Marketing companies, Education Sector, Healthcare and Media Houses</strong><span style="background-color:rgb(255,255,255);color:rgb(32,33,36);">. Newer technologies are evolving every minute</span></p>')
GO
SET IDENTITY_INSERT [dbo].[Institutes] ON 

INSERT [dbo].[Institutes] ([InstituteId], [Title], [Email], [Phone], [admission_open_close], [UserName], [Password], [CreatedOn], [IsActive], [CityId], [TypeOfId], [Location], [AdminId]) VALUES (1, N'Air University', N'air@gmail.com', N'051-5643435', 0, N'air', N'MTIz', N'Sep  1 2022  3:48PM', 1, 1, 1, N'E9 Islamabad', 1234)
INSERT [dbo].[Institutes] ([InstituteId], [Title], [Email], [Phone], [admission_open_close], [UserName], [Password], [CreatedOn], [IsActive], [CityId], [TypeOfId], [Location], [AdminId]) VALUES (2, N'Bahria University', N'bahria@edu.com ', N'051-4983451', 1, N'bahria', N'YmFocmlh', N'Sep  2 2022 12:21PM', 1, 1, 1, N'margalla road Islamabad', 1234)
SET IDENTITY_INSERT [dbo].[Institutes] OFF
GO
SET IDENTITY_INSERT [dbo].[PassingDegrees] ON 

INSERT [dbo].[PassingDegrees] ([PassingDegreeId], [Title]) VALUES (1, N'Intermediate')
INSERT [dbo].[PassingDegrees] ([PassingDegreeId], [Title]) VALUES (2, N'A Levels')
INSERT [dbo].[PassingDegrees] ([PassingDegreeId], [Title]) VALUES (3, N'Matric')
INSERT [dbo].[PassingDegrees] ([PassingDegreeId], [Title]) VALUES (4, N'O Levels')
SET IDENTITY_INSERT [dbo].[PassingDegrees] OFF
GO
SET IDENTITY_INSERT [dbo].[PassingDSGroups] ON 

INSERT [dbo].[PassingDSGroups] ([PassingDSGroupsId], [PassingDSGroups], [PassingDegreeId]) VALUES (1, N'Stats,Computer,Math', 1)
INSERT [dbo].[PassingDSGroups] ([PassingDSGroupsId], [PassingDSGroups], [PassingDegreeId]) VALUES (2, N'Physics,Chemistry,Math', 1)
INSERT [dbo].[PassingDSGroups] ([PassingDSGroupsId], [PassingDSGroups], [PassingDegreeId]) VALUES (3, N'Physics,Chemistry,Biology', 1)
INSERT [dbo].[PassingDSGroups] ([PassingDSGroupsId], [PassingDSGroups], [PassingDegreeId]) VALUES (4, N'Physics,Computer,Math', 1)
INSERT [dbo].[PassingDSGroups] ([PassingDSGroupsId], [PassingDSGroups], [PassingDegreeId]) VALUES (5, N'Physics,Chemistry,Math,Biology', 3)
INSERT [dbo].[PassingDSGroups] ([PassingDSGroupsId], [PassingDSGroups], [PassingDegreeId]) VALUES (6, N'Physics,Chemistry,Math,Computer', 3)
INSERT [dbo].[PassingDSGroups] ([PassingDSGroupsId], [PassingDSGroups], [PassingDegreeId]) VALUES (7, N'ALL Groups', 1)
SET IDENTITY_INSERT [dbo].[PassingDSGroups] OFF
GO
SET IDENTITY_INSERT [dbo].[ProgramCategories] ON 

INSERT [dbo].[ProgramCategories] ([ProgramCategoryId], [CategoryName]) VALUES (1, N'Computer Science')
INSERT [dbo].[ProgramCategories] ([ProgramCategoryId], [CategoryName]) VALUES (2, N'Engineering')
INSERT [dbo].[ProgramCategories] ([ProgramCategoryId], [CategoryName]) VALUES (3, N'General Sciences')
SET IDENTITY_INSERT [dbo].[ProgramCategories] OFF
GO
SET IDENTITY_INSERT [dbo].[ProgramDegreeDetails] ON 

INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (1, NULL, N'4Year', NULL, 60, 60, 2, N'9000000', N'850000', N'78', N'True,True', 0, 0, 0, 1, N'7,', 1, 1)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (2, NULL, N'4Year', 8, 60, 60, 2, N'800000', N'72000', N'67', N'True,True', 0, 0, 0, 1, N'4,2,1,', 2, 1)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (3, NULL, N'4Year', 8, 60, 60, 2, N'800000', N'65000', N'78.45', N'True,True', 1, 1, 1, 1, N'3,4,', 7, 2)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (4, NULL, N'4Year', 8, 60, 50, 2, N'750000', N'65000', NULL, N'True,True', 0, 0, 0, 1, N'1,2,4,', 9, 2)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL, 8, 1)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 8, 2)
INSERT [dbo].[ProgramDegreeDetails] ([ProgramDegreeDetailsId], [Programs], [Duration], [TotalSemesters], [Matric], [FSC], [BS], [TotalFee], [SemesterFee], [ClosingMerit], [ApprovedById], [Morning], [Evening], [Weekened], [CityId], [PassingDegreeGroups], [ProgramDegreeId], [InstituteId]) VALUES (7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 6, 2)
SET IDENTITY_INSERT [dbo].[ProgramDegreeDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[ProgramDegrees] ON 

INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (1, N'BS Computer Science ', 1)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (2, N'BS Information Technology', 1)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (3, N'BS Cyber Security', 1)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (4, N'BS Artificial Intelligence', 1)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (5, N'BS Data Science', 1)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (6, N'BS Creative Technology', 1)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (7, N'BS Mechanical', 2)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (8, N'BS Electrical', 2)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (9, N'BS Avionics', 2)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (10, N'BS Math', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (11, N'BS English', 3)
INSERT [dbo].[ProgramDegrees] ([ProgramDegreeId], [DegreeName], [ProgramCategoryId]) VALUES (12, N'BS Pak Studies', 3)
SET IDENTITY_INSERT [dbo].[ProgramDegrees] OFF
GO
INSERT [dbo].[StdFsc] ([SID], [PassingDSGroup], [Board_University], [ObtainedMarks], [TotalMarks], [Percentage], [PassingYear], [Institute]) VALUES (1, N'Physics,Chemistry,Math', N'Rwp', N'970', N'1100', N'60', N'2021', N'Punjab College')
INSERT [dbo].[StdFsc] ([SID], [PassingDSGroup], [Board_University], [ObtainedMarks], [TotalMarks], [Percentage], [PassingYear], [Institute]) VALUES (2, N'Physics,Chemistry,Math', N'Rwp', N'1100', N'1100', N'89', N'2022', N'siddeeq')
INSERT [dbo].[StdFsc] ([SID], [PassingDSGroup], [Board_University], [ObtainedMarks], [TotalMarks], [Percentage], [PassingYear], [Institute]) VALUES (3, N'Physics,Chemistry,Math', N'Rwp', N'989', N'1100', N'89', N'2021', N'Punjab college information technology ')
GO
INSERT [dbo].[StdMatric] ([SID], [PassingDSGroup], [Board_University], [ObtainedMarks], [TotalMarks], [Percentage], [PassingYear], [Institute]) VALUES (1, N'Physics,Chemistry,Math,Biology', N'Rwp', N'970', N'1100', N'88', N'2019', N'Al Ahmed')
INSERT [dbo].[StdMatric] ([SID], [PassingDSGroup], [Board_University], [ObtainedMarks], [TotalMarks], [Percentage], [PassingYear], [Institute]) VALUES (3, N'Physics,Chemistry,Math,Biology', N'Rwp', N'968', N'1100', N'87', N'2019', N'Siddeeq')
GO
INSERT [dbo].[StudentInfo] ([SID], [FirstName], [FatherName], [Gender], [StdCnic], [DateOfBirth], [City], [Address], [StdMobileNumber], [Email]) VALUES (3, N'Rehan Akhtar ', N'Muhammad Akhtar ', N'Male', N'37405-3988888-8', N'2023-04-04', N'Rawalpindi', N'kk13c st 02 ', N'0314-5582717', N'rehan.akhtar.985@gmail.com')
INSERT [dbo].[StudentInfo] ([SID], [FirstName], [FatherName], [Gender], [StdCnic], [DateOfBirth], [City], [Address], [StdMobileNumber], [Email]) VALUES (1, N'Muhammad Awab Ahmed', N'Mustafa', N'Male', N'2324234324', N'2023-04-05', N'Rawalpindi', N'Dhoke Kashmirian d/k 325  street no 15 Rawalpindi', N'03411889638', N'muhammadawab82002@gmail.com')
GO
SET IDENTITY_INSERT [dbo].[TypeOfs] ON 

INSERT [dbo].[TypeOfs] ([TypeOfId], [Type]) VALUES (1, N'University')
INSERT [dbo].[TypeOfs] ([TypeOfId], [Type]) VALUES (2, N'College')
INSERT [dbo].[TypeOfs] ([TypeOfId], [Type]) VALUES (3, N'School')
INSERT [dbo].[TypeOfs] ([TypeOfId], [Type]) VALUES (4, N'Madrisa')
SET IDENTITY_INSERT [dbo].[TypeOfs] OFF
GO
SET IDENTITY_INSERT [dbo].[UserInfo] ON 

INSERT [dbo].[UserInfo] ([UserId], [FirstName], [LastName], [Email], [Password], [ContactNo], [City], [Gender], [Role]) VALUES (1, N'Awab', N'Ahmed', N'awab@gmail.com', N'YXdhYg==', N'03411899638', N'Rawalpindi', N'Male', N'User')
INSERT [dbo].[UserInfo] ([UserId], [FirstName], [LastName], [Email], [Password], [ContactNo], [City], [Gender], [Role]) VALUES (2, N'Rehan', N'Akhtar', N'rehan@gmail.com', N'cmVoYW4=', N'03145582717', N'Rawalpindi', N'Female', N'User')
INSERT [dbo].[UserInfo] ([UserId], [FirstName], [LastName], [Email], [Password], [ContactNo], [City], [Gender], [Role]) VALUES (3, N'Muhammad', N'Ahmed', N'rehan@gmail.com', N'cmVoYW4=', N'03435345', N'Rawalpindi', N'Male', N'User')
SET IDENTITY_INSERT [dbo].[UserInfo] OFF
GO
/****** Object:  StoredProcedure [dbo].[A_SP_GetError]    Script Date: 4/8/2023 1:02:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[A_SP_GetError]
as
begin
select * from ExceptionHandelling
end
GO
/****** Object:  StoredProcedure [dbo].[A_SP_SaveAdmissionInfo]    Script Date: 4/8/2023 1:02:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[A_SP_SaveAdmissionInfo]
@InstituteId int,
@admission_open_close bit
as
begin
update Institutes set admission_open_close = @admission_open_close where InstituteId=@InstituteId;
end
GO
/****** Object:  StoredProcedure [dbo].[SP_AddCategoryWithID]    Script Date: 4/8/2023 1:02:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_AddCategoryWithID]
@CAID int
as
begin
select * from ProgramCategories
where ProgramCategoryId=@CAID 
end
GO
/****** Object:  StoredProcedure [dbo].[SP_AddDegreeWithID]    Script Date: 4/8/2023 1:02:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[SP_AddDegreeWithID]
@DID int
as
begin
select * from ProgramDegrees
where ProgramDegreeId=@DID 
end
GO
/****** Object:  StoredProcedure [dbo].[SP_AddProgramDegreeDetailsById]    Script Date: 4/8/2023 1:02:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_AddProgramDegreeDetailsById]
@DDID int
as
begin
select * from ProgramDegreeDetails
where ProgramDegreeDetailsId=@DDID 
end
GO
/****** Object:  StoredProcedure [dbo].[SP_DeleteCities]    Script Date: 4/8/2023 1:02:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_DeleteCities]
@CityId int
as
begin
delete from Cities
where CityId = @CityId
end
GO
/****** Object:  StoredProcedure [dbo].[SP_DeleteFsc]    Script Date: 4/8/2023 1:02:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[SP_DeleteFsc]
@SID int
as
begin
Delete FROM StdFsc 
where 
SID=@SID
end
GO
/****** Object:  StoredProcedure [dbo].[SP_DeleteInstitutes]    Script Date: 4/8/2023 1:02:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[SP_DeleteInstitutes]
@InstituteId int
as
begin
delete from Institutes
where InstituteId = @InstituteId  
end
GO
/****** Object:  StoredProcedure [dbo].[SP_DeleteMatric]    Script Date: 4/8/2023 1:02:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_DeleteMatric]
@SID int
as
begin
Delete FROM StdMatric 
where 
SID=@SID
end
GO
/****** Object:  StoredProcedure [dbo].[SP_DeletePassingDegrees]    Script Date: 4/8/2023 1:02:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_DeletePassingDegrees] 
@PassingDegreeId int
as
begin
delete from PassingDegrees
where 
PassingDegreeId=@PassingDegreeId
end
GO
/****** Object:  StoredProcedure [dbo].[SP_DeletePassingDSGroups]    Script Date: 4/8/2023 1:02:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_DeletePassingDSGroups]
@PassingDSGroupsId int
as
begin
delete from PassingDSGroups 
where
PassingDSGroupsId=@PassingDSGroupsId
end
GO
/****** Object:  StoredProcedure [dbo].[SP_DeleteProgramCategory]    Script Date: 4/8/2023 1:02:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_DeleteProgramCategory]
@ID int
as
begin
DELETE FROM ProgramCategories
where 
ProgramCategoryId=@ID
end
GO
/****** Object:  StoredProcedure [dbo].[SP_DeleteProgramDegree]    Script Date: 4/8/2023 1:02:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_DeleteProgramDegree]
@ProgramDegreeId int
as
begin
DELETE FROM ProgramDegrees
where 
ProgramDegreeId=@ProgramDegreeId
end
GO
/****** Object:  StoredProcedure [dbo].[SP_DeleteProgramDegreeDetails]    Script Date: 4/8/2023 1:02:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_DeleteProgramDegreeDetails]
@ProgramDegreeDetailsId int
as
begin
DELETE FROM ProgramDegreeDetails
where 
ProgramDegreeDetailsId=@ProgramDegreeDetailsId
end
GO
/****** Object:  StoredProcedure [dbo].[SP_DeleteTypeOfs]    Script Date: 4/8/2023 1:02:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_DeleteTypeOfs]
@TypeOfId int
as
begin
delete from TypeOfs
where TypeOfId = @TypeOfId
end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetCities]    Script Date: 4/8/2023 1:02:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_GetCities]
as
begin
select *from Cities
end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetCityById]    Script Date: 4/8/2023 1:02:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_GetCityById]
@CityId int 
as
begin
select * from Cities
where CityId = @CityId 
end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetFsc]    Script Date: 4/8/2023 1:02:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[SP_GetFsc]
@SID int
as
begin
select * from StdFsc
where
SID=@SID
end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetFutureScopeById]    Script Date: 4/8/2023 1:02:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_GetFutureScopeById]
@ProgramDegreeId int
as
begin
select * from FutureScope where ProgramDegreeId=@ProgramDegreeId
end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetInstituteBtId]    Script Date: 4/8/2023 1:02:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[SP_GetInstituteBtId]
@InstituteId int 
as
begin
select * from Institutes
where InstituteId = @InstituteId 
end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetInstitutes]    Script Date: 4/8/2023 1:02:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_GetInstitutes]
as
begin
select InstituteId, Title, Email, Phone, UserName, [Password], CreatedOn, IsActive, CityId, TypeOfId, [Location], AdminId ,admission_open_close
from Institutes
end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetMatric]    Script Date: 4/8/2023 1:02:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[SP_GetMatric]
@SID int
as
begin
select * from StdMatric
where
SID=@SID
end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetPassingDegrees]    Script Date: 4/8/2023 1:02:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_GetPassingDegrees]
as
begin
select * from PassingDegrees
end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetpassingDegreesById]    Script Date: 4/8/2023 1:02:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[SP_GetpassingDegreesById]
@PassingDegreesId int
as
begin
select * from PassingDegrees
where
PassingDegreeId=@PassingDegreesId
end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetPassingDSGroups]    Script Date: 4/8/2023 1:02:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_GetPassingDSGroups]
as
begin
select * from PassingDSGroups
end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetpassingDSGroupsById]    Script Date: 4/8/2023 1:02:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_GetpassingDSGroupsById]
@PassingDSGroupsId int
as
begin
select * from PassingDSGroups
where
PassingDSGroupsId = @PassingDSGroupsId
end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetProgramCategory]    Script Date: 4/8/2023 1:02:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_GetProgramCategory]
as
begin
Select * from ProgramCategories
end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetProgramDegree]    Script Date: 4/8/2023 1:02:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_GetProgramDegree]
as
begin
Select * from ProgramDegrees
end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetProgramDegreeDetails]    Script Date: 4/8/2023 1:02:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_GetProgramDegreeDetails]
as
begin
Select * from ProgramDegreeDetails
end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetProgramDegreeDetailsByInstituteId]    Script Date: 4/8/2023 1:02:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_GetProgramDegreeDetailsByInstituteId]
@InstituteId int
as
begin
Select pd.[ProgramDegreeDetailsId], 
pd.[Programs], 
pd.[Duration], 
pd.[TotalSemesters], 
pd.[Matric], 
pd.[FSC], 
pd.[BS], 
pd.[TotalFee], 
pd.[SemesterFee], 
pd.[ClosingMerit], 
pd.[ApprovedById], 
pd.[Morning], 
pd.[Evening], 
pd.[Weekened], 
pd.[CityId], 
pd.[PassingDegreeGroups], 
p.DegreeName, 
pd.[InstituteId] 
from ProgramDegreeDetails as pd
inner join ProgramDegrees as p
on
p.ProgramDegreeId=pd.ProgramDegreeId
where InstituteId=@InstituteId
end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetProgramGroupsBYID]    Script Date: 4/8/2023 1:02:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_GetProgramGroupsBYID] 
@ID int,
@InstituteId int
as
begin
declare @passvales nvarchar(max)
set @passvales=(select top(1) PassingDegreeGroups  from  
ProgramDegreeDetails where ProgramDegreeDetailsId=@ID and InstituteId=@InstituteId)
select value, t.PassingDSGroups from STRING_SPLIT(@passvales,',') 
inner join PassingDSGroups as t
on
t.PassingDSGroupsId=value
end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetTypeById]    Script Date: 4/8/2023 1:02:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_GetTypeById]
@TypeOfId int 
as
begin
select * from TypeOfs
where TypeOfId = @TypeOfId 
end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetTypeOfs]    Script Date: 4/8/2023 1:02:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_GetTypeOfs]
as
begin
select *from TypeOfs
end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetUserByName]    Script Date: 4/8/2023 1:02:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_GetUserByName]
@UserName nvarchar(50)
as
begin
select InstituteId, UserName, [Password]
from Institutes
where
UserName=@UserName
end
GO
/****** Object:  StoredProcedure [dbo].[SP_SaveCities]    Script Date: 4/8/2023 1:02:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_SaveCities]
@CityName nvarchar(50),
@CityCode nvarchar (50)
as
begin
insert into Cities( CityName, CityCode)
values ( @CityName, @CityCode)
end
GO
/****** Object:  StoredProcedure [dbo].[SP_SaveDescription]    Script Date: 4/8/2023 1:02:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_SaveDescription]
@ProgramDegreeId int,
@Description nvarchar(4000)
as
begin
insert into FutureScope (ProgramDegreeId,Description) values(@ProgramDegreeId,@Description)
end
GO
/****** Object:  StoredProcedure [dbo].[SP_SaveInstitutes]    Script Date: 4/8/2023 1:02:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_SaveInstitutes]	

@Title nvarchar(50), 
@Email nvarchar(50),
@Phone nvarchar(50),  

@UserName nvarchar(50),
@Password nvarchar(50),   
@CityId int, 
@TypeOfId int, 
@Location nvarchar(50),
@AdminId int
as
begin
insert into Institutes( Title, Email, Phone,UserName, Password, CreatedOn, IsActive, CityId, TypeOfId, Location, AdminId)
values ( @Title, @Email, @Phone,@UserName,@Password,GETDATE() , 'true', @CityId, @TypeOfId, @Location, @AdminId)
end
GO
/****** Object:  StoredProcedure [dbo].[SP_SavePassingDegrees]    Script Date: 4/8/2023 1:02:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[SP_SavePassingDegrees]

@Title nvarchar(50)
as
begin
insert into PassingDegrees(Title)values(@Title);
end
GO
/****** Object:  StoredProcedure [dbo].[SP_SavePassingDSGroups]    Script Date: 4/8/2023 1:02:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_SavePassingDSGroups]
@PassingDSGroups nvarchar(60),
@PassingDegreeId int
as
begin
insert into PassingDSGroups(PassingDSGroups,PassingDegreeId)values(@PassingDSGroups,@PassingDegreeId)
end
GO
/****** Object:  StoredProcedure [dbo].[SP_SaveProgramCategory]    Script Date: 4/8/2023 1:02:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_SaveProgramCategory]
@CategoryName nvarchar(50)
as
begin
 INSERT INTO ProgramCategories(CategoryName) VALUES( @CategoryName)  
end 
GO
/****** Object:  StoredProcedure [dbo].[SP_SaveProgramDegree]    Script Date: 4/8/2023 1:02:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_SaveProgramDegree]
@DegreeName nvarchar(50),
@ProgramCategoryid int
as
begin
 INSERT INTO ProgramDegrees(DegreeName,ProgramCategoryId) VALUES( @DegreeName,@ProgramCategoryid)  
end 
GO
/****** Object:  StoredProcedure [dbo].[SP_SaveProgramDegreeDetails]    Script Date: 4/8/2023 1:02:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_SaveProgramDegreeDetails]
@Programs nvarchar(50)=null,
@Duration nvarchar(50)=null,
@TotalSemesters int=null,
@Matric int =null,
@FSC int =null,
@BS int=null,
@TotalFee nvarchar(50)=null,
@SemesterFee nvarchar(50)=null,
@ClosingMerit nvarchar(50)=null,
@ApprovedById int=null,
@Morning bit=null,
@Evening bit=null,
@Weekened bit=null,
@CityId int=null,
@PassingDegreeGroups nvarchar(60)=null,
@ProgramDegreeId int=null,
@InstituteId int=null
as
begin
 INSERT INTO ProgramDegreeDetails( Programs,Duration, TotalSemesters,Matric,FSC,BS,TotalFee,SemesterFee,ClosingMerit, ApprovedById,Morning, Evening, Weekened,CityId,PassingDegreeGroups, ProgramDegreeId, InstituteId) VALUES(@Programs,@Duration, @TotalSemesters,@Matric,@FSC,@BS, @TotalFee,@SemesterFee, @ClosingMerit, @ApprovedById, @Morning, @Evening, @Weekened,@CityId, @PassingDegreeGroups, @ProgramDegreeId, @InstituteId)  
end
GO
/****** Object:  StoredProcedure [dbo].[SP_SaveRegistrationForm]    Script Date: 4/8/2023 1:02:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_SaveRegistrationForm]
@Name nvarchar(50),
@Password nvarchar(50),
@Role nvarchar(50)

as 
begin 

insert into UserData (UserName,Password,Role) values(@Name,@Password,@Role)
end

GO
/****** Object:  StoredProcedure [dbo].[SP_SaveStdFsc]    Script Date: 4/8/2023 1:02:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_SaveStdFsc]
@SID int,
@PassingDSGroup nvarchar(50),
@Board_University nvarchar(50),
@ObtainedMarks nvarchar(50),
@TotalMarks nvarchar(50),
@Percentage nvarchar(50),
@PassingYear nvarchar(50),
@Institute nvarchar(50)
as
begin
INSERT INTO StdFsc(SID,PassingDSGroup,Board_University,ObtainedMarks,TotalMarks,Percentage,PassingYear,Institute) values ( @SID,@PassingDSGroup,@Board_University,@ObtainedMarks,@TotalMarks,@Percentage,@PassingYear,@Institute)
end
GO
/****** Object:  StoredProcedure [dbo].[SP_SaveStdMatric]    Script Date: 4/8/2023 1:02:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_SaveStdMatric]
@SID int,
@PassingDSGroup nvarchar(50),
@Board_University nvarchar(50),
@ObtainedMarks nvarchar(50),
@TotalMarks nvarchar(50),
@Percentage nvarchar(50),
@PassingYear nvarchar(50),
@Institute nvarchar(50)
as
begin
INSERT INTO StdMatric (SID,PassingDSGroup,Board_University,ObtainedMarks,TotalMarks,Percentage,PassingYear,Institute) values ( @SID,@PassingDSGroup,@Board_University,@ObtainedMarks,@TotalMarks,@Percentage,@PassingYear,@Institute)
end
GO
/****** Object:  StoredProcedure [dbo].[SP_SaveStudentInfo]    Script Date: 4/8/2023 1:02:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[SP_SaveStudentInfo]
@SID int,
@FirstName nvarchar(50),
@FatherName nvarchar(50),
@Gender nvarchar(50),
@CNIC nvarchar(50),
@DateOfBirth nvarchar(50),
@City nvarchar(50),
@Address nvarchar(50),
@StudentMobileNo nvarchar(50),
@Email nvarchar(50)
as
begin
insert into StudentInfo(SID,FirstName,FatherName,Gender,StdCnic,DateOfBirth,City,Address,StdMobileNumber,Email)values(@SID,@FirstName,@FatherName,@Gender,@CNIC,@DateOfBirth,@City,@Address,@StudentMobileNo,@Email)
end
GO
/****** Object:  StoredProcedure [dbo].[SP_SaveTypeOfs]    Script Date: 4/8/2023 1:02:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[SP_SaveTypeOfs]
@Type nvarchar(50)
as
begin
insert into TypeOfs([Type])
values (@Type)
end
GO
/****** Object:  StoredProcedure [dbo].[SP_UpdateCities]    Script Date: 4/8/2023 1:02:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_UpdateCities]
@CityId int,
@CityName nvarchar(50),
@CityCode nvarchar (50)
as
begin
update Cities
set
CityName = @CityName,
CityCode = @CityCode 
where CityId = @CityId
end
GO
/****** Object:  StoredProcedure [dbo].[SP_UpdateDescription]    Script Date: 4/8/2023 1:02:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_UpdateDescription]
@ProgramDegreeId int,
@Description nvarchar(4000)
as
begin
update FutureScope set ProgramDegreeId=@ProgramDegreeId , Description=@Description where ProgramDegreeId=@ProgramDegreeId
end
GO
/****** Object:  StoredProcedure [dbo].[SP_UpdateInstitute]    Script Date: 4/8/2023 1:02:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_UpdateInstitute]
@InstituteId int, 
@Title nvarchar(50), 
@Email nvarchar(50),
@Phone nvarchar(50),  

@UserName nvarchar(50), 
@Password nvarchar(50), 
@CreatedOn nvarchar(50), 
@IsActive bit, 
@CityId int, 
@TypeOfId int, 
@Location nvarchar(50),
@AdminId int
as
begin
update Institutes
set  
Title = @Title, 
Email = @Email, 
Phone = @Phone, 
 
UserName = @UserName, 
[Password] = @Password, 
CreatedOn = @CreatedOn, 
IsActive = @IsActive, 
CityId = @CityId, 
TypeOfId = @TypeOfId, 
[Location] = @Location, 
AdminId = @AdminId
where InstituteId = @InstituteId
end
GO
/****** Object:  StoredProcedure [dbo].[SP_UpdatePassingDegree]    Script Date: 4/8/2023 1:02:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_UpdatePassingDegree]
@id int,
@title nvarchar(50)
as
begin
update PassingDegrees
set 
Title=@title
where 
PassingDegreeId=@id
end
GO
/****** Object:  StoredProcedure [dbo].[SP_UpdatePassingDSGroups]    Script Date: 4/8/2023 1:02:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_UpdatePassingDSGroups]
@PassingDSGroupsId int,
@passingDSGroups nvarchar(60),
@passingDegreeId int
as
begin
update PassingDSGroups
set 
PassingDSGroups=@passingDSGroups,
PassingDegreeId=@passingDegreeId
where 
PassingDSGroupsId=@PassingDSGroupsId
end
GO
/****** Object:  StoredProcedure [dbo].[SP_UpdateProgramCategory]    Script Date: 4/8/2023 1:02:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[SP_UpdateProgramCategory]
@ProgramCategoryId int,
@CategoryName nvarchar(50)
as 
begin 
update ProgramCategories
set
CategoryName=@CategoryName
where 
ProgramCategoryId=@ProgramCategoryId
end

GO
/****** Object:  StoredProcedure [dbo].[SP_UpdateProgramDegree]    Script Date: 4/8/2023 1:02:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[SP_UpdateProgramDegree]
@ProgramDegreeId int,
@DegreeName nvarchar(50),
@ProgramCategoryid nvarchar(50)
as 
begin 
update ProgramDegrees
set
DegreeName=@DegreeName,
ProgramCategoryid =@ProgramCategoryid 
where 
ProgramDegreeId=@ProgramDegreeId
end
GO
/****** Object:  StoredProcedure [dbo].[SP_UpdateProgramDegreeDetails]    Script Date: 4/8/2023 1:02:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_UpdateProgramDegreeDetails] 
@Programs nvarchar(50)=null,
@Duration nvarchar(50)=null,
@TotalSemesters int=null,
@Matric int =null,
@FSC int =null,
@BS int=null,
@TotalFee nvarchar(50)=null,
@SemesterFee nvarchar(50)=null,
@ClosingMerit nvarchar(50)=null,
@ApprovedById nvarchar(50)=null,
@Morning bit=null,
@Evening bit=null,
@Weekened bit=null,
@CityId int=null,
@PassingDegreeGroups nvarchar(60)=null,
@ProgramDegreeId int=null,
@InstituteId int=null,
@ProgramDegreeDetailsId int,
@type nvarchar(20)
as
begin

if(@type='shift')
	begin
		update ProgramDegreeDetails
		set 
		Morning=@Morning, 
		Evening=@Evening, 
		Weekened=@Weekened
		where 
		ProgramDegreeDetailsId=@ProgramDegreeDetailsId
	end
else if(@type='FEE')
	begin
		update ProgramDegreeDetails
		set
		TotalFee=@TotalFee,
		SemesterFee=@SemesterFee
		where 
		ProgramDegreeDetailsId=@ProgramDegreeDetailsId
	end
else if(@type='Approvedby')
begin
update ProgramDegreeDetails
set
ApprovedById=@ApprovedById
where 
ProgramDegreeDetailsId=@ProgramDegreeDetailsId
end

else if(@type='Criteria')
begin
update ProgramDegreeDetails
set
Matric=@Matric,
FSC=@FSC,
BS=@BS
where 
ProgramDegreeDetailsId=@ProgramDegreeDetailsId
end
else if(@type='ClosingMerit')
begin
update ProgramDegreeDetails
set
ClosingMerit=@ClosingMerit
where 
ProgramDegreeDetailsId=@ProgramDegreeDetailsId
end
else if(@type='TotalSemesters')
begin
update ProgramDegreeDetails
set
TotalSemesters=@TotalSemesters
where 
ProgramDegreeDetailsId=@ProgramDegreeDetailsId
end

else if(@type='Duration')
begin
update ProgramDegreeDetails
set
Duration=@Duration
where 
ProgramDegreeDetailsId=@ProgramDegreeDetailsId
end

else if(@type='Groups')
begin
update ProgramDegreeDetails
set
PassingDegreeGroups=@PassingDegreeGroups
where 
ProgramDegreeDetailsId=@ProgramDegreeDetailsId
end
end


GO
/****** Object:  StoredProcedure [dbo].[SP_UpdateTypeOfs]    Script Date: 4/8/2023 1:02:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_UpdateTypeOfs]
@TypeOfId int,
@Type nvarchar(50)
as
begin
update TypeOfs
set
Type = @Type 
where TypeOfId = @TypeOfId
end
GO
/****** Object:  StoredProcedure [dbo].[U_SP_DeleteStudentInfobyID]    Script Date: 4/8/2023 1:02:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[U_SP_DeleteStudentInfobyID]
@SID int
as
begin
delete from StudentInfo
where SID=@SID
end
GO
/****** Object:  StoredProcedure [dbo].[U_SP_GetDepartmentCountByGroupIdAndCityId]    Script Date: 4/8/2023 1:02:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[U_SP_GetDepartmentCountByGroupIdAndCityId] 
@CityId int,
@PDSGID nvarchar(50),
@Percentage int
as 
begin
select count(p.InstituteId) as Departments, i.admission_open_close,i.Title,p.InstituteId from ProgramDegreeDetails as p
inner join Institutes as i 
on
i.InstituteId=p.InstituteId
where (p.PassingDegreeGroups like CONCAT('%',@PDSGID, '%')  or p.PassingDegreeGroups like CONCAT('%',7, '%'))
and p.CityId=@CityId and @Percentage>=p.FSC
group by p.InstituteId, i.Title,i.admission_open_close
end
GO
/****** Object:  StoredProcedure [dbo].[U_SP_GetDepartmentDetails]    Script Date: 4/8/2023 1:02:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[U_SP_GetDepartmentDetails]
@PDSGID nvarchar(50),
@InstituteID int
as
begin
select 
p.[Duration],
p.[TotalSemesters], 
p.[Matric],
p.[FSC],
p.[TotalFee],
p.[SemesterFee],
p.[ClosingMerit],
p.[ProgramDegreeId], 
p.[InstituteId],
p.ProgramDegreeId,
pd.DegreeName 
from ProgramDegreeDetails as p
inner join ProgramDegrees as pd
on pd.ProgramDegreeId=p.ProgramDegreeId
where (( p.PassingDegreeGroups like CONCAT('%',@PDSGID, '%') or  p.PassingDegreeGroups like CONCAT('%',7, '%') )and p.InstituteId=@InstituteID)
end
GO
/****** Object:  StoredProcedure [dbo].[U_SP_GetProgramDegreeByInstituteId]    Script Date: 4/8/2023 1:02:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[U_SP_GetProgramDegreeByInstituteId]
@InstituteId int
as
begin
Select pd.[ProgramDegreeDetailsId], 
pd.[Programs], 
pd.[Duration], 
pd.[TotalSemesters], 
pd.[Matric], 
pd.[FSC], 
pd.[BS], 
pd.[TotalFee], 
pd.[SemesterFee], 
pd.[ClosingMerit], 
pd.[ApprovedById], 
pd.[Morning], 
pd.[Evening], 
pd.[Weekened], 
pd.[CityId], 
pd.[PassingDegreeGroups], 
p.ProgramDegreeId,
p.DegreeName,
pd.[InstituteId] 
from ProgramDegreeDetails as pd
inner join ProgramDegrees as p
on
p.ProgramDegreeId=pd.ProgramDegreeId
where InstituteId=@InstituteId
end
GO
/****** Object:  StoredProcedure [dbo].[U_SP_GetResultById]    Script Date: 4/8/2023 1:02:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[U_SP_GetResultById] 
@PDSGID nvarchar(50)
as 
begin
select
P.PassingDegreeGroups,
I.Title,
I.InstituteId,
P.ProgramDegreeId,
PD.DegreeName,
C.CityId,
C.CityName
from Institutes as I
inner join ProgramDegreeDetails as P 
on p.InstituteId = I.InstituteId 
inner join ProgramDegrees as PD 
on PD.ProgramDegreeId = P.ProgramDegreeId
inner join Cities as C 
on C.CityId=P.CityId

where P.PassingDegreeGroups like  CONCAT('%',@PDSGID, '%');
end
GO
/****** Object:  StoredProcedure [dbo].[U_SP_GetStudentInfobyID]    Script Date: 4/8/2023 1:02:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[U_SP_GetStudentInfobyID] 

@StdId int
as
begin
select * from StudentInfo
where SID=@StdId
end
GO
/****** Object:  StoredProcedure [dbo].[U_SP_GetUserByName]    Script Date: 4/8/2023 1:02:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[U_SP_GetUserByName]
@Email nvarchar(50)
as
begin
select * from UserInfo
where 
Email =@Email
end
GO
/****** Object:  StoredProcedure [dbo].[U_SP_SaveSignUp]    Script Date: 4/8/2023 1:02:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[U_SP_SaveSignUp]
@FirstName nvarchar(50),
@LastName nvarchar(50),
@Email nvarchar(50),
@Password nvarchar(50),
@ContactNo nvarchar(50),
@City nvarchar(50),
@Gender nvarchar(50),
@Role nvarchar(50)
as
begin
Insert into UserInfo (FirstName,LastName,Email,Password,ContactNo,City,Gender,Role) values (@FirstName,@LastName,@Email,@Password,@ContactNo,@City,@Gender,@Role)
end
GO
/****** Object:  StoredProcedure [dbo].[U_SP_StoreError]    Script Date: 4/8/2023 1:02:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[U_SP_StoreError] 
@Err nvarchar(500)
as
begin
insert into ExceptionHandelling ([DateTime],Exception) values (GetDate() ,@Err)
end
GO
/****** Object:  StoredProcedure [dbo].[U_SP_UpdateFSCInfo]    Script Date: 4/8/2023 1:02:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[U_SP_UpdateFSCInfo]
@SID int,
@PassingDSGroup nvarchar(50),
@Board_University nvarchar(50),
@ObtainedMarks nvarchar(50),
@TotalMarks nvarchar(50),
@Percentage nvarchar(50),
@PassingYear nvarchar(50),
@Institute nvarchar(50)
as
begin
update StdFsc
set
PassingDSGroup=@PassingDSGroup,
Board_University=@Board_University,
ObtainedMarks=@ObtainedMarks,
TotalMarks=@TotalMarks,
Percentage=@Percentage,
PassingYear=@PassingYear,
Institute=@Institute
where SID=@SID
end
GO
/****** Object:  StoredProcedure [dbo].[U_SP_UpdateMatricInfo]    Script Date: 4/8/2023 1:02:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[U_SP_UpdateMatricInfo]

@SID int,
@PassingDSGroup nvarchar(50),
@Board_University nvarchar(50),
@ObtainedMarks nvarchar(50),
@TotalMarks nvarchar(50),
@Percentage nvarchar(50),
@PassingYear nvarchar(50),
@Institute nvarchar(50)
as
begin
update StdMatric
set
PassingDSGroup=@PassingDSGroup,
Board_University=@Board_University,
ObtainedMarks=@ObtainedMarks,
TotalMarks=@TotalMarks,
Percentage=@Percentage,
PassingYear=@PassingYear,
Institute=@Institute
where SID=@SID
end
GO
/****** Object:  StoredProcedure [dbo].[U_SP_UpdatePassword]    Script Date: 4/8/2023 1:02:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Procedure [dbo].[U_SP_UpdatePassword]
@UserId int,
@Password nvarchar(30)
as
begin
Update UserInfo set Password=@Password where UserId=@UserId; 
end
GO
