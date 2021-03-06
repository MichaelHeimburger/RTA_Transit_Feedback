USE [master]
GO
/****** Object:  Database [TransitFeedbackAppDBv1]    Script Date: 8/9/2018 11:44:13 AM ******/
CREATE DATABASE [TransitFeedbackAppDBv1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TransitFeedbackAppDBv1', FILENAME = N'C:\Users\Michael\TransitFeedbackAppDBv1.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TransitFeedbackAppDBv1_log', FILENAME = N'C:\Users\Michael\TransitFeedbackAppDBv1_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
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
ALTER DATABASE [TransitFeedbackAppDBv1] SET QUERY_STORE = OFF
GO
USE [TransitFeedbackAppDBv1]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [TransitFeedbackAppDBv1]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 8/9/2018 11:44:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 8/9/2018 11:44:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 8/9/2018 11:44:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 8/9/2018 11:44:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 8/9/2018 11:44:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 8/9/2018 11:44:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Batch]    Script Date: 8/9/2018 11:44:14 AM ******/
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
/****** Object:  Table [dbo].[Customers]    Script Date: 8/9/2018 11:44:14 AM ******/
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
/****** Object:  Table [dbo].[FeedBackForm]    Script Date: 8/9/2018 11:44:14 AM ******/
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
/****** Object:  Table [dbo].[state]    Script Date: 8/9/2018 11:44:14 AM ******/
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
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201808011719383_InitialCreate', N'RTA_Transit_Feedback.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5C5B6FE336167E2FD0FF20E8695BA4562E3B83D9C06E913A711BECE482B1A7D8B780966887188952452A9360D15FB60FFD49FD0B4B4AD48D175D6CC5768A01061679F89DC3C343F2F0F0307FFDEFCFF14FCF816F3DC198A0104FEC93D1B16D41EC861EC2EB899DD0D50F1FEC9F7EFCF69BF195173C5BBFE574679C8EB5C464623F521A9D3B0E711F6100C828406E1C927045476E1838C00B9DD3E3E37F3927270E641036C3B2ACF1A7045314C0F4837D4E43ECC28826C0BF093DE81351CE6AE629AA750B024822E0C289FD6971F1B0880126883ECC20F496C0FD32CA9AD9D6858F0013690EFD956D018C430A2813F8FC3381731A87783D8F5801F0172F1164742BE013283A725E9277EDD3F129EF935336CCA1DC84D030E80978722694E4C8CD3752B55D2891A9F18AA99BBEF05EA7AA9CD8D71E4C8B3E853E5380CCF07CEAC79C7862DF142C2E48740BE9286F38CA20673183FB1AC65F4655C423AB73BBA3C2A84E47C7FCDF91354D7C9AC47082614263E01F59F7C9D247EEBFE1CB22FC02F1E4EC64B93AFBF0EE3DF0CEDEFF139EBDABF694F595D1D50A58D17D1C463066B2C155D17FDB72EAED1CB961D1ACD226D30AB325363F6CEB063C7F84784D1FD9CC39FD605B33F40CBDBC4418D7678CD874628D689CB0CFDBC4F7C1D28745BDD3C893FFDFC0F5F4DDFB41B8DE8227B44E875EE2CF264ECCE6D527E8A7B5E41145D9F4AA8DF783209BC561C0BFEBF695D53ECCC3247679674223C902C46B48EBD28D9DD2783B9934871ADEAC73D4C3376D2EA96ADE5A52DEA14D6642CE62D7B32197F775F976B6B88B286283979A16D74893C135EC5A2309E6C8D21197C674D2D59830EBE4DF796DBC0A00F207581C3B70610ECA0AC5012C7AF973C84C11E0DE32DF0342D8DAE0FD0AC86383E8ECE700A2CFA19BC4CC64E71404D1AB73BB7F0C31BC4D82259F09BBE335D8D02CBE8633E0D230BEC2BCD5D6781F43F74B98D02BEC5D020A3F533707E49F0B14740718449C0BD78584CC9831436F1A32FF3B07BCC6F4ECB4371C5FA9F6ED9C4C7D8002BD7722ADA90F3969E9A1E829142FC540A6F3549A44FD18AE11EE266A4E6A1635A368155590F5159583759354509A054D095AE5CCA806F3FDD2111ADEF94B610FDFFBDB6EF336AD051535CED90A097F8118C66C19F3EE01A530C6E508745937F6E12CA4C3C799BEFADE9472FA0DF8C9D0AC369A0DE92230FC6C48610F7F36A462B2E227E471AFA4C391282766F09DE8F5A7ADF6392749B6EBE950EBE6AE99EF660D304D970B424217A5B340130C13A18CBAFCCC87B3DAE31A596FE4D808EB183374C4B73C56C2FA66CB4675872FA10F29B42EDC2C583805C4059EAA46D621AF8760F98EAA11AC8C91D485FB5EE1C92C1DC6BC11E08720C2662AC2549D1608BB28027EAB96A4961DB730DEF782875C7309238839C3564D7461AE0F8970010A3ED2A0B46968EC542CAED9100D5EAB69CCDB5CD872DC9548C54E6CB2C57736D8A5F0DF5EC5309B35B603E36C564917018CE1BD7D18A838AB743500F9E07268062A9D980C062A5CAA9D18685D637B30D0BA4ADE9C816647D4AEE32F9D570FCD3CEB07E5DD6FEB8DEADA836DD6F47160A699F99EAC0D652D60AC9AE7E59257C267AA399C3139C5F98C08575736110E3E87B41EB229FD5DAD1FEA3483C846D404581A5A0BA8B81854809409D543B83C96D7289DF0227AC0E671B74658B1F64BB0151B50B1AB17A41542F335AA6C9C9D4E1F45CF0A6B508CBCD361A182A3310879F1AA77BC83524C715955315D7CE13EDE70A56362301A14D4E2B91A94947766702DE5A6D9AE259D43D6C725DB4A4B92FB64D052DE99C1B5246CB45D491AA7A0875BB0958AEA5BF840932D8F7414BB4D513776B2042A5130760C9956E31B104508AF2B9957A2C49A676957D31FE6FDD390820CC37189261BA990B6E044C318ACA154CB583349672826F41250B0043CCE33F502854CBBB71A96FF9C6575FB540731DF07726AFE5BB468B8CEAF6DBAAA5722C066ACAB01776DD278BAC610F4CD2D9E12077C106B42F8D3D04F026CF6B4CCADB38BBC6AFBAC4445183B92FC8A27A5A84DF177EB63D06984D4D931F468151ECDE623668630E93DF747AB9A37F9A866943C6455453185B1F6368226D766B35193DDC7FE83D68AF03A334DE4AC540144514F8C4ADA830256A9EB8E5ACF4CA962D66BBA234AE9275548A9AA8794D524939A90D58A8DF00C1AD55374E7A0A69554D1D5DAEEC89A04932AB4A67A036C8DCC725D77544D0E4A155853DD1DBB4C489157D303DECB8C879AED37B3EC00BCDD6E66C0789DA57198CDB072CF5F05AA14F7C41237F90A98283F48B3329E02B737AB2C00B29D591930CC6B51EDAABCBE1435DEEF9B316BF7DFB5E5BEE9FEDF8CD7CF785FD54494D3A04C52702F4E85D2E96F2C4E62ED8F7194A35946625BB91AD956FF42280C469C6034FFDD9FFA08F2853D27B80118AD20A159CE877D7A7C722A3DE3399C27350E219EAF39C99ADED5D4C76C07E95BF809C4EE2388D5648A2D9E9D94A04A9CFA1A7BF07962FF376D759E863CF8AFB4F8C8BA269F31FA3D61158B3881D61F6A72E83069F81D1E7E1482FEF1265E547457F9F57F1EB2A647D65DCCA6D3B9752C297A93E1AFBFB3E8254DD6740B69367E7DF176675BED218316559A2D9BBF5B58223AC89B855CCA7F04E0F9BBBEA269DF256C85A8797B3014DE202A34BD2DD804CBF8AEC0639F347D57D0AFB3FA77069B88667C6380707F30F98541F765286FB9C77D487372DAC59294EAB935437BAB74CD7DEF4D4A22F756135D4DD6EE01376842F6762ECA1B4B741E6CEBD4E4310F86BD4FBB7FF5E4E543C9572E9DF6FDA629EF3233B9E1AEE96F95907C0029749A94A0FDA71DEFDAD64CA1E003CFDDEC975C7C60C626B6F9FDA710EFDAD84C01E20337B65E89C207666BFBDA3FF76C699DB7D0BDA7FDAA194C862B1D5D14B92DAD370BB9B3E3FF326446907994D96B4C7D1E59530E6C0BC392C4CCD49CC0263356268EC257A16866DBAFAF62C36FECACA069666B48FB6CE22DD6FF46DE82A699B72199721F09C9DA74465D9278CB3AD69459F59612906B3D69C9776FF3591BEFE7DF52BEF1204AA9CD1EC3EDF2DB492F1E4425434E9D1EE9C4EA4531DB3B2B7FDB91EDDF04AD4B08FE971E31746BBB6641738D5761BE794B12E5245284E60652E0B12DF522A668055CCAAA79003A7D4E9E06F5F835C8127AD7F82EA15142599761B0F46B012FEE0434F14F73A6EB328FEF22FE4586E8021313F1C0FD1DFE3941BE57C83DD3C4840C10DCBB10E15E3E9694877DD72F05D26D883B0209F5154ED1020691CFC0C81D9E8327B8896CCCFC3EC235705FCA08A009A47D20EA6A1F5F22B08E41400446D99E7D321BF682E71FFF0F208FA9C9E2540000, N'6.2.0-61023')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'1', N'Admin')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'08fcea8b-6a73-4faf-8869-7e5ba4c563d5', N'1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'0d2941f7-6577-49cf-8783-4d87d9bb2a6a', N'1')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'08099988-ac80-432f-acf5-38afe920f17f', N'nonadmin@passwordisPassword1.com', 0, N'ADadIqlQOVQlwW/Cc4YT/EdlwrwAG9Wyh8M25uG1kTZ2XqNpbytY6s84zMN7EvVCCg==', N'd97f6c41-a7be-429d-a80c-09674fa4e929', NULL, 0, 0, NULL, 1, 0, N'nonadmin@passwordisPassword1.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'08fcea8b-6a73-4faf-8869-7e5ba4c563d5', N'johnjacobjingler@monumentmail.com', 0, N'AMCupIcP487UU2JzQl1A6bRUOUcgn20KlkNS9UfF6FN7bX3aUCfa5p0kJXDQnVAG7w==', N'e71ae1df-451d-4b87-970e-9a5b1e82a1da', NULL, 0, 0, NULL, 1, 0, N'johnjacobjingler@monumentmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'0d2941f7-6577-49cf-8783-4d87d9bb2a6a', N'admin@admin.com', 0, N'AHsEwwxBw0UVjluNBvWjdRivIB+PLi8463VYcMThtG74FqgT9XBnGrgb9uyfkJa2iw==', N'9eb23f43-b8ab-45a9-8c6b-e9fda8be0e8a', NULL, 0, 0, NULL, 1, 0, N'admin@admin.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'1035b500-ec26-40e4-a296-9672ad1dc1d7', N'omg@yahoo.com', 0, N'ADrHqneaIFDodeAeZqFYtTk2YNrkPJXsXBgKwuoEUk7D8YvV3FeRZ3sKJu3aM+gr0A==', N'bb9cea93-891f-47a1-a3a4-dc6f072c6a3e', NULL, 0, 0, NULL, 1, 0, N'omg@yahoo.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'1f53bd64-f297-45ad-b2f7-14963bdb8f35', N'1@1.com', 0, N'ANv96v59V2nomTV/U2w37q3J6byD+ge9b68k9GSUD07FsyEo5SXTfju8LGZiyqPKJw==', N'76b7b455-1cbb-43a1-8e98-61cbc7a770dc', NULL, 0, 0, NULL, 1, 0, N'1@1.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'29ddd3fb-6d9f-4b96-94e1-feb981228e92', N'5@5.com', 0, N'AMSO8FqhX0xt79S+LaJHDw5XiaLVdj4drv9eeAbG9Kvy2pTEXdTbdBv8PyS3uvo+aQ==', N'34b5185c-0b77-45e2-bd2e-689274d73227', NULL, 0, 0, NULL, 1, 0, N'5@5.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'2ef79a99-87a6-4079-810d-52393e8d9a5b', N'kyle@kyle.com', 0, N'AEDJX7Bk9uwNwFMq2Y51JAHU2NNvvh6Jnew9jWgqBSIVU0kpNq6CKpqovOqqAyzdYw==', N'72328198-fdcd-433c-b6fd-41961731c62e', NULL, 0, 0, NULL, 1, 0, N'kyle@kyle.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'2ff83d6a-8011-44e4-816f-0d5d83b17531', N'7@7.com', 0, N'AAcrlflKHXaqaAMyOuxTBs5RlqrKWt4PUQ2qrweCFo9QuSJf8VOqLth3EDiQINXScw==', N'0ef82b2a-a89f-44f0-afef-66450c4a23f5', NULL, 0, 0, NULL, 1, 0, N'7@7.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'577f26db-8ce3-42bd-9327-0ef5ebd0be3f', N'm@m.com', 0, N'ALNl+XITDnOsJ6G4nvfXFM5PjweFtomuTmTJFrhLuCGLxVsWNSnC5Iaso3wSB5O62Q==', N'7859023b-784f-4c24-bd4d-4ba1c7c51890', NULL, 0, 0, NULL, 1, 0, N'm@m.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'5fa02f15-7472-4d7d-93e1-0925f9c3d981', N'2@2.com', 0, N'ADYjnLwI0mEOWqIuI+QmNBQDPqV9KT6XE2Dh6P+Kbg8Hyrazxq7MVo2rtf2UhmNKmw==', N'cc74e2bb-6556-481a-8e25-33b6c477b062', NULL, 0, 0, NULL, 1, 0, N'2@2.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'81e06177-653b-4711-9cd8-de2542955de0', N'lol@gmail.com', 0, N'AHbt9okLqouJrGqZAdrKzsMkDdKdQsQx1p79xkWUN9ekStrNt2X+FmQ/tRlhy80jkw==', N'60043a68-da50-4c9d-8c62-ce87a692e425', NULL, 0, 0, NULL, 1, 0, N'lol@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'85113298-98b2-4725-8bf9-38cb57526a39', N'john@john.com', 0, N'AEais2rH4RoZRSqRGy2jjy1JrEsBMCQhdIzBMmc8V4/QQFUOGEDQcA4NQaSJbSh9bA==', N'03e454cb-8537-4da8-8d9d-6327b79c6f5c', NULL, 0, 0, NULL, 1, 0, N'john@john.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'a7c449cc-6e8a-491b-90e8-acb213ee3531', N'haha@gmail.com', 0, N'AG0n6LkIVv1CgDO02OlbYBMAb+hDsXZn7clL/3x3Rv5JLvZfa04xhSj6VWOT3KhEmA==', N'b970b207-b443-4abf-b8c2-12e05c79dc35', NULL, 0, 0, NULL, 1, 0, N'haha@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'aecfc1bb-1ce5-4cae-b7f5-d602b691d0d6', N'steve@steve.com', 0, N'ANt5PzHa+Qeir/Wuz7sNmMVDGQKi5o2u/070YU5t0VfmRIiWG1S1YcEZZkTUzWu7Vw==', N'd8584d3e-09fe-41af-8df1-9289966eb449', NULL, 0, 0, NULL, 1, 0, N'steve@steve.com')
SET IDENTITY_INSERT [dbo].[Batch] ON 

INSERT [dbo].[Batch] ([BatchID], [TrackingNo]) VALUES (1, NULL)
INSERT [dbo].[Batch] ([BatchID], [TrackingNo]) VALUES (2, NULL)
INSERT [dbo].[Batch] ([BatchID], [TrackingNo]) VALUES (3, NULL)
INSERT [dbo].[Batch] ([BatchID], [TrackingNo]) VALUES (1002, NULL)
INSERT [dbo].[Batch] ([BatchID], [TrackingNo]) VALUES (2002, NULL)
INSERT [dbo].[Batch] ([BatchID], [TrackingNo]) VALUES (2003, NULL)
INSERT [dbo].[Batch] ([BatchID], [TrackingNo]) VALUES (2004, NULL)
INSERT [dbo].[Batch] ([BatchID], [TrackingNo]) VALUES (2005, NULL)
INSERT [dbo].[Batch] ([BatchID], [TrackingNo]) VALUES (2006, NULL)
INSERT [dbo].[Batch] ([BatchID], [TrackingNo]) VALUES (2007, NULL)
INSERT [dbo].[Batch] ([BatchID], [TrackingNo]) VALUES (2008, NULL)
INSERT [dbo].[Batch] ([BatchID], [TrackingNo]) VALUES (2009, NULL)
INSERT [dbo].[Batch] ([BatchID], [TrackingNo]) VALUES (2010, NULL)
INSERT [dbo].[Batch] ([BatchID], [TrackingNo]) VALUES (2011, NULL)
INSERT [dbo].[Batch] ([BatchID], [TrackingNo]) VALUES (2012, NULL)
SET IDENTITY_INSERT [dbo].[Batch] OFF
SET IDENTITY_INSERT [dbo].[Customers] ON 

INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [AddressL1], [AddressL2], [City], [stateID], [PhoneNum], [Id], [Zip]) VALUES (1, N'Monica', N'Johnson', N'1990 Ford Drive Apt. 611', NULL, N'Cleveland', 36, N'2163396633', N'1035b500-ec26-40e4-a296-9672ad1dc1d7', N'44106')
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [AddressL1], [AddressL2], [City], [stateID], [PhoneNum], [Id], [Zip]) VALUES (2, N'Rob', N'Winn', N'123 Sesame Street', NULL, N'New York', 33, N'2161234567', N'81e06177-653b-4711-9cd8-de2542955de0', N'44107')
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [AddressL1], [AddressL2], [City], [stateID], [PhoneNum], [Id], [Zip]) VALUES (3, N'me', N'me', N'nonya', N'nonya', N'nonya', 1, N'1111111111', N'08fcea8b-6a73-4faf-8869-7e5ba4c563d5', N'44444')
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [AddressL1], [AddressL2], [City], [stateID], [PhoneNum], [Id], [Zip]) VALUES (1003, NULL, NULL, NULL, NULL, NULL, 1, NULL, N'08099988-ac80-432f-acf5-38afe920f17f', NULL)
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [AddressL1], [AddressL2], [City], [stateID], [PhoneNum], [Id], [Zip]) VALUES (2003, N'greatest', N'ever', N'123@123st', NULL, N'2', 1, N'1111111111', N'577f26db-8ce3-42bd-9327-0ef5ebd0be3f', N'44444')
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [AddressL1], [AddressL2], [City], [stateID], [PhoneNum], [Id], [Zip]) VALUES (2004, N'm', N'm', N'm', N'm', N'm', 1, N'1111111   ', N'1f53bd64-f297-45ad-b2f7-14963bdb8f35', N'111111')
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [AddressL1], [AddressL2], [City], [stateID], [PhoneNum], [Id], [Zip]) VALUES (3003, N'11', N'1', N'1', N'1', N'1', 1, N'1111111   ', N'2ff83d6a-8011-44e4-816f-0d5d83b17531', N'11111')
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [AddressL1], [AddressL2], [City], [stateID], [PhoneNum], [Id], [Zip]) VALUES (4003, N'john john', N'Johnathon', N'Return to sender', NULL, N'whosville', 1, N'1111111111', N'85113298-98b2-4725-8bf9-38cb57526a39', N'44444')
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [AddressL1], [AddressL2], [City], [stateID], [PhoneNum], [Id], [Zip]) VALUES (5003, N'A', N'Ddministrator', N'computer lan', NULL, N'admin town', 36, N'1111111111', N'0d2941f7-6577-49cf-8783-4d87d9bb2a6a', N'55555')
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [AddressL1], [AddressL2], [City], [stateID], [PhoneNum], [Id], [Zip]) VALUES (6003, N'kyle', N'kyle', N'123 kyle st', NULL, N'kyle town', 18, N'123456789 ', N'2ef79a99-87a6-4079-810d-52393e8d9a5b', N'55555')
SET IDENTITY_INSERT [dbo].[Customers] OFF
SET IDENTITY_INSERT [dbo].[FeedBackForm] ON 

INSERT [dbo].[FeedBackForm] ([FeedbackID], [FeedbackDescription], [DateofRide], [TimeofRide], [RouteName], [VehNum], [CustomerID], [BatchID]) VALUES (1, N'who cares, doesn''t matter', CAST(N'2018-07-31' AS Date), CAST(N'12:00:00' AS Time), N'39', N'3901', 1, 2012)
INSERT [dbo].[FeedBackForm] ([FeedbackID], [FeedbackDescription], [DateofRide], [TimeofRide], [RouteName], [VehNum], [CustomerID], [BatchID]) VALUES (2, N'who cares, doesn''t matter', CAST(N'2018-07-31' AS Date), CAST(N'12:00:00' AS Time), N'26', N'2602', 2, 2012)
INSERT [dbo].[FeedBackForm] ([FeedbackID], [FeedbackDescription], [DateofRide], [TimeofRide], [RouteName], [VehNum], [CustomerID], [BatchID]) VALUES (1003, N'It was kyle!', CAST(N'1111-11-11' AS Date), CAST(N'13:01:00' AS Time), N'kyle', N'1', 6003, 2012)
INSERT [dbo].[FeedBackForm] ([FeedbackID], [FeedbackDescription], [DateofRide], [TimeofRide], [RouteName], [VehNum], [CustomerID], [BatchID]) VALUES (2003, N'feedback1tobatch', CAST(N'1111-11-11' AS Date), CAST(N'12:11:00' AS Time), N'jon', N'1', 5003, 2012)
INSERT [dbo].[FeedBackForm] ([FeedbackID], [FeedbackDescription], [DateofRide], [TimeofRide], [RouteName], [VehNum], [CustomerID], [BatchID]) VALUES (2004, N'feedback 2 to batch', CAST(N'1111-11-11' AS Date), CAST(N'12:11:00' AS Time), N'1', N'2', 5003, 2012)
SET IDENTITY_INSERT [dbo].[FeedBackForm] OFF
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
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 8/9/2018 11:44:14 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 8/9/2018 11:44:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 8/9/2018 11:44:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_RoleId]    Script Date: 8/9/2018 11:44:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 8/9/2018 11:44:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 8/9/2018 11:44:14 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [FK_Customers_AspNetUsers] FOREIGN KEY([Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [FK_Customers_AspNetUsers]
GO
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
