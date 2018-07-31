USE [master]
GO
/****** Object:  Database [TransitFeedbackAppDBv1]    Script Date: 7/31/2018 6:03:14 PM ******/
CREATE DATABASE [TransitFeedbackAppDBv1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TransitFeedbackAppDBv1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\TransitFeedbackAppDBv1.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'TransitFeedbackAppDBv1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\TransitFeedbackAppDBv1_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [TransitFeedbackAppDBv1] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TransitFeedbackAppDBv1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TransitFeedbackAppDBv1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TransitFeedbackAppDBv1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TransitFeedbackAppDBv1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TransitFeedbackAppDBv1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TransitFeedbackAppDBv1] SET ARITHABORT OFF 
GO
ALTER DATABASE [TransitFeedbackAppDBv1] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TransitFeedbackAppDBv1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TransitFeedbackAppDBv1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TransitFeedbackAppDBv1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TransitFeedbackAppDBv1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TransitFeedbackAppDBv1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TransitFeedbackAppDBv1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TransitFeedbackAppDBv1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TransitFeedbackAppDBv1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TransitFeedbackAppDBv1] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TransitFeedbackAppDBv1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TransitFeedbackAppDBv1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TransitFeedbackAppDBv1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TransitFeedbackAppDBv1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TransitFeedbackAppDBv1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TransitFeedbackAppDBv1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TransitFeedbackAppDBv1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TransitFeedbackAppDBv1] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TransitFeedbackAppDBv1] SET  MULTI_USER 
GO
ALTER DATABASE [TransitFeedbackAppDBv1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TransitFeedbackAppDBv1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TransitFeedbackAppDBv1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TransitFeedbackAppDBv1] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [TransitFeedbackAppDBv1] SET DELAYED_DURABILITY = DISABLED 
GO
USE [TransitFeedbackAppDBv1]
GO
/****** Object:  Table [dbo].[Batch]    Script Date: 7/31/2018 6:03:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Batch](
	[BatchID] [int] IDENTITY(1,1) NOT NULL,
	[TrackingNo] [nvarchar](50) NULL,
 CONSTRAINT [PK_Batch] PRIMARY KEY CLUSTERED 
(
	[BatchID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Customers]    Script Date: 7/31/2018 6:03:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[AddressL1] [nvarchar](50) NULL,
	[AddressL2] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[stateID] [int] NULL,
	[PhoneNum] [nchar](10) NULL,
	[Id] [nvarchar](128) NULL,
	[Zip] [nvarchar](50) NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FeedBackForm]    Script Date: 7/31/2018 6:03:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeedBackForm](
	[FeedbackID] [int] IDENTITY(1,1) NOT NULL,
	[FeedbackDescription] [nvarchar](200) NULL,
	[DateofRide] [date] NULL,
	[TimeofRide] [time](7) NULL,
	[RouteName] [nvarchar](50) NULL,
	[VehNum] [nvarchar](10) NULL,
	[CustomerID] [int] NULL,
	[BatchID] [int] NULL,
 CONSTRAINT [PK_FeedBackForm] PRIMARY KEY CLUSTERED 
(
	[FeedbackID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[state]    Script Date: 7/31/2018 6:03:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[state](
	[stateID] [int] IDENTITY(1,1) NOT NULL,
	[stateCode] [nchar](2) NOT NULL,
	[stateName] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_state] PRIMARY KEY CLUSTERED 
(
	[stateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[state] ON 

INSERT [dbo].[state] ([stateID], [stateCode], [stateName]) VALUES (1, N'AL', N'Alabama')
INSERT [dbo].[state] ([stateID], [stateCode], [stateName]) VALUES (2, N'AK', N'Alaska')
INSERT [dbo].[state] ([stateID], [stateCode], [stateName]) VALUES (3, N'AZ', N'Arizona')
INSERT [dbo].[state] ([stateID], [stateCode], [stateName]) VALUES (4, N'AR', N'Arkansas')
INSERT [dbo].[state] ([stateID], [stateCode], [stateName]) VALUES (5, N'CA', N'California')
INSERT [dbo].[state] ([stateID], [stateCode], [stateName]) VALUES (6, N'CO', N'Colorado')
INSERT [dbo].[state] ([stateID], [stateCode], [stateName]) VALUES (7, N'CT', N'Connecticut')
INSERT [dbo].[state] ([stateID], [stateCode], [stateName]) VALUES (8, N'DE', N'Delaware')
INSERT [dbo].[state] ([stateID], [stateCode], [stateName]) VALUES (9, N'DC', N'District of Columbia')
INSERT [dbo].[state] ([stateID], [stateCode], [stateName]) VALUES (10, N'FL', N'Florida')
INSERT [dbo].[state] ([stateID], [stateCode], [stateName]) VALUES (11, N'GA', N'Georgia')
INSERT [dbo].[state] ([stateID], [stateCode], [stateName]) VALUES (12, N'HI', N'Hawaii')
INSERT [dbo].[state] ([stateID], [stateCode], [stateName]) VALUES (13, N'ID', N'Idaho')
INSERT [dbo].[state] ([stateID], [stateCode], [stateName]) VALUES (14, N'IL', N'Illinois')
INSERT [dbo].[state] ([stateID], [stateCode], [stateName]) VALUES (15, N'IN', N'Indiana')
INSERT [dbo].[state] ([stateID], [stateCode], [stateName]) VALUES (16, N'IA', N'Iowa')
INSERT [dbo].[state] ([stateID], [stateCode], [stateName]) VALUES (17, N'KS', N'Kansas')
INSERT [dbo].[state] ([stateID], [stateCode], [stateName]) VALUES (18, N'KY', N'Kentucky')
INSERT [dbo].[state] ([stateID], [stateCode], [stateName]) VALUES (19, N'LA', N'Louisiana')
INSERT [dbo].[state] ([stateID], [stateCode], [stateName]) VALUES (20, N'ME', N'Maine')
INSERT [dbo].[state] ([stateID], [stateCode], [stateName]) VALUES (21, N'MD', N'Maryland')
INSERT [dbo].[state] ([stateID], [stateCode], [stateName]) VALUES (22, N'MA', N'Massachusetts')
INSERT [dbo].[state] ([stateID], [stateCode], [stateName]) VALUES (23, N'MI', N'Michigan')
INSERT [dbo].[state] ([stateID], [stateCode], [stateName]) VALUES (24, N'MN', N'Minnesota')
INSERT [dbo].[state] ([stateID], [stateCode], [stateName]) VALUES (25, N'MS', N'Mississippi')
INSERT [dbo].[state] ([stateID], [stateCode], [stateName]) VALUES (26, N'MO', N'Missouri')
INSERT [dbo].[state] ([stateID], [stateCode], [stateName]) VALUES (27, N'MT', N'Montana')
INSERT [dbo].[state] ([stateID], [stateCode], [stateName]) VALUES (28, N'NE', N'Nebraska')
INSERT [dbo].[state] ([stateID], [stateCode], [stateName]) VALUES (29, N'NV', N'Nevada')
INSERT [dbo].[state] ([stateID], [stateCode], [stateName]) VALUES (30, N'NH', N'New Hampshire')
INSERT [dbo].[state] ([stateID], [stateCode], [stateName]) VALUES (31, N'NJ', N'New Jersey')
INSERT [dbo].[state] ([stateID], [stateCode], [stateName]) VALUES (32, N'NM', N'New Mexico')
INSERT [dbo].[state] ([stateID], [stateCode], [stateName]) VALUES (33, N'NY', N'New York')
INSERT [dbo].[state] ([stateID], [stateCode], [stateName]) VALUES (34, N'NC', N'North Carolina')
INSERT [dbo].[state] ([stateID], [stateCode], [stateName]) VALUES (35, N'ND', N'North Dakota')
INSERT [dbo].[state] ([stateID], [stateCode], [stateName]) VALUES (36, N'OH', N'Ohio')
INSERT [dbo].[state] ([stateID], [stateCode], [stateName]) VALUES (37, N'OK', N'Oklahoma')
INSERT [dbo].[state] ([stateID], [stateCode], [stateName]) VALUES (38, N'OR', N'Oregon')
INSERT [dbo].[state] ([stateID], [stateCode], [stateName]) VALUES (39, N'PA', N'Pennsylvania')
INSERT [dbo].[state] ([stateID], [stateCode], [stateName]) VALUES (40, N'PR', N'Puerto Rico')
INSERT [dbo].[state] ([stateID], [stateCode], [stateName]) VALUES (41, N'RI', N'Rhode Island')
INSERT [dbo].[state] ([stateID], [stateCode], [stateName]) VALUES (42, N'SC', N'South Carolina')
INSERT [dbo].[state] ([stateID], [stateCode], [stateName]) VALUES (43, N'SD', N'South Dakota')
INSERT [dbo].[state] ([stateID], [stateCode], [stateName]) VALUES (44, N'TN', N'Tennessee')
INSERT [dbo].[state] ([stateID], [stateCode], [stateName]) VALUES (45, N'TX', N'Texas')
INSERT [dbo].[state] ([stateID], [stateCode], [stateName]) VALUES (46, N'UT', N'Utah')
INSERT [dbo].[state] ([stateID], [stateCode], [stateName]) VALUES (47, N'VT', N'Vermont')
INSERT [dbo].[state] ([stateID], [stateCode], [stateName]) VALUES (48, N'VA', N'Virginia')
INSERT [dbo].[state] ([stateID], [stateCode], [stateName]) VALUES (49, N'WA', N'Washington')
INSERT [dbo].[state] ([stateID], [stateCode], [stateName]) VALUES (50, N'WV', N'West Virginia')
INSERT [dbo].[state] ([stateID], [stateCode], [stateName]) VALUES (51, N'WI', N'Wisconsin')
INSERT [dbo].[state] ([stateID], [stateCode], [stateName]) VALUES (52, N'WY', N'Wyoming')
SET IDENTITY_INSERT [dbo].[state] OFF
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [FK_Customers_state] FOREIGN KEY([stateID])
REFERENCES [dbo].[state] ([stateID])
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [FK_Customers_state]
GO
ALTER TABLE [dbo].[FeedBackForm]  WITH CHECK ADD  CONSTRAINT [FK_FeedBackForm_Batch] FOREIGN KEY([BatchID])
REFERENCES [dbo].[Batch] ([BatchID])
GO
ALTER TABLE [dbo].[FeedBackForm] CHECK CONSTRAINT [FK_FeedBackForm_Batch]
GO
ALTER TABLE [dbo].[FeedBackForm]  WITH CHECK ADD  CONSTRAINT [FK_FeedBackForm_Customers] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers] ([CustomerID])
GO
ALTER TABLE [dbo].[FeedBackForm] CHECK CONSTRAINT [FK_FeedBackForm_Customers]
GO
USE [master]
GO
ALTER DATABASE [TransitFeedbackAppDBv1] SET  READ_WRITE 
GO
