USE [WHODDE]
GO
/****** Object:  Table [dbo].[ATC]    Script Date: 12/30/2015 7:28:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ATC](
	[ATCCode] [varchar](10) NOT NULL,
	[Level] [varchar](1) NULL,
	[Text] [varchar](110) NULL,
 CONSTRAINT [PK_ATC] PRIMARY KEY CLUSTERED 
(
	[ATCCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CCODE]    Script Date: 12/30/2015 7:28:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CCODE](
	[CountryCode] [varchar](10) NOT NULL,
	[CountryName] [varchar](80) NULL,
 CONSTRAINT [PK_CCODE] PRIMARY KEY CLUSTERED 
(
	[CountryCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ING]    Script Date: 12/30/2015 7:28:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ING](
	[Ingredient_Id] [varchar](10) NOT NULL,
	[Create_Date] [smalldatetime] NULL,
	[Substance_Id] [varchar](10) NOT NULL,
	[Quantity] [varchar](15) NULL,
	[Quantity-2] [varchar](15) NULL,
	[Unit] [varchar](10) NULL,
	[Pharmproduct_Id] [varchar](10) NOT NULL,
	[Medicinalprod_Id] [varchar](10) NOT NULL,
 CONSTRAINT [PK_ING] PRIMARY KEY CLUSTERED 
(
	[Ingredient_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MP]    Script Date: 12/30/2015 7:28:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MP](
	[Medicinalprod_Id] [varchar](10) NOT NULL,
	[MedID] [varchar](35) NULL,
	[DrugRecordNumber] [varchar](6) NOT NULL,
	[SequenceNumber1] [varchar](2) NOT NULL,
	[SequenceNumber2] [varchar](3) NOT NULL,
	[SequenceNumber3] [varchar](10) NOT NULL,
	[SequenceNumber4] [varchar](10) NOT NULL,
	[Generic] [varchar](1) NOT NULL,
	[DrugName] [varchar](80) NOT NULL,
	[NameSpecifier] [varchar](30) NULL,
	[MarketingAuthorizationNumber] [varchar](30) NULL,
	[MarketingAuthorizationDate] [varchar](8) NULL,
	[MarketingWithdrawalDate] [varchar](8) NULL,
	[Country] [varchar](10) NOT NULL,
	[Company] [varchar](10) NOT NULL,
	[MarketingAuthorizationHolder] [varchar](10) NOT NULL,
	[ReferenceCode] [varchar](10) NOT NULL,
	[SourceCountry] [varchar](10) NOT NULL,
	[YearOfReference] [varchar](3) NULL,
	[ProductType] [varchar](10) NOT NULL,
	[ProductGroup] [varchar](10) NOT NULL,
	[CreateDate] [smalldatetime] NOT NULL,
	[DateChanged] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_MP] PRIMARY KEY CLUSTERED 
(
	[Medicinalprod_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ORG]    Script Date: 12/30/2015 7:28:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ORG](
	[Organization_Id] [varchar](10) NOT NULL,
	[Name] [varchar](80) NULL,
	[CountryCode] [varchar](10) NOT NULL,
 CONSTRAINT [PK_ORG] PRIMARY KEY CLUSTERED 
(
	[Organization_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PF]    Script Date: 12/30/2015 7:28:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PF](
	[Pharmform_Id] [varchar](10) NOT NULL,
	[Text] [varchar](80) NULL,
 CONSTRAINT [PK_PF] PRIMARY KEY CLUSTERED 
(
	[Pharmform_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PP]    Script Date: 12/30/2015 7:28:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PP](
	[Pharmproduct_Id] [varchar](10) NOT NULL,
	[PharmaceuticalForm] [varchar](10) NOT NULL,
	[RouteOfAdministration] [varchar](10) NULL,
	[Medicinalprod_Id] [varchar](10) NOT NULL,
	[NumberOfIngredients] [varchar](2) NULL,
	[CreateDate] [smalldatetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PRG]    Script Date: 12/30/2015 7:28:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PRG](
	[Productgroup_Id] [varchar](10) NOT NULL,
	[ProductgroupName] [varchar](60) NULL,
	[DateRecorded] [smalldatetime] NULL,
 CONSTRAINT [PK_PRG] PRIMARY KEY CLUSTERED 
(
	[Productgroup_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PRT]    Script Date: 12/30/2015 7:28:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PRT](
	[Prodtype_Id] [varchar](10) NOT NULL,
	[Text] [varchar](80) NULL,
 CONSTRAINT [PK_PRT] PRIMARY KEY CLUSTERED 
(
	[Prodtype_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SRCE]    Script Date: 12/30/2015 7:28:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SRCE](
	[ReferenceCode] [varchar](10) NOT NULL,
	[Reference] [varchar](80) NULL,
	[CountryCode] [varchar](10) NULL,
 CONSTRAINT [PK_SRCE] PRIMARY KEY CLUSTERED 
(
	[ReferenceCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STR]    Script Date: 12/30/2015 7:28:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[STR](
	[Strength_Id] [varchar](10) NOT NULL,
	[Text] [varchar](500) NULL,
 CONSTRAINT [PK_STR] PRIMARY KEY CLUSTERED 
(
	[Strength_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SUN]    Script Date: 12/30/2015 7:28:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SUN](
	[Substance_Id] [varchar](10) NOT NULL,
	[CASNumber] [varchar](10) NULL,
	[LanguageCode] [varchar](10) NULL,
	[SubstanceName] [varchar](110) NULL,
	[YearOfReference] [varchar](3) NULL,
	[ReferenceCore] [varchar](10) NULL,
 CONSTRAINT [PK_SUN] PRIMARY KEY CLUSTERED 
(
	[Substance_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ThG]    Script Date: 12/30/2015 7:28:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ThG](
	[Therapgroup_Id] [varchar](10) NULL,
	[ATCCode] [varchar](10) NULL,
	[CreateDate] [varchar](8) NULL,
	[OfficialATCCode] [varchar](1) NULL,
	[Medicinalprod_Id] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UNIT]    Script Date: 12/30/2015 7:28:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UNIT](
	[Unit_Id] [varchar](10) NOT NULL,
	[Text] [varchar](40) NULL,
 CONSTRAINT [PK_UNIT] PRIMARY KEY CLUSTERED 
(
	[Unit_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Unit-L]    Script Date: 12/30/2015 7:28:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Unit-L](
	[Unit_Id] [varchar](10) NOT NULL,
	[Text] [varchar](100) NULL,
 CONSTRAINT [PK_Unit-L] PRIMARY KEY CLUSTERED 
(
	[Unit_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Unit-X]    Script Date: 12/30/2015 7:28:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Unit-X](
	[Unit_Id] [varchar](10) NOT NULL,
	[Text] [varchar](40) NULL,
 CONSTRAINT [PK_Unit-X] PRIMARY KEY CLUSTERED 
(
	[Unit_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
