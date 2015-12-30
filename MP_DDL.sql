USE [WHODDE]
GO

/****** Object:  Table [dbo].[MP]    Script Date: 12/30/2015 3:04:01 PM ******/
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

