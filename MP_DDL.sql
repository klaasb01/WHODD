USE [WHODDE]
GO

/****** Object:  Table [dbo].[MP]    Script Date: 12/30/2015 10:19:32 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[MP](
	[Medicinalprod_Id] [varchar](10) NOT NULL,
	[MedID] [varchar](35) NULL,
	[Drug record number] [varchar](6) NOT NULL,
	[Sequence number 1] [varchar](2) NOT NULL,
	[Sequence number 2] [varchar](3) NOT NULL,
	[Sequence number 3] [varchar](10) NOT NULL,
	[Sequence number 4] [varchar](10) NOT NULL,
	[Generic] [varchar](1) NOT NULL,
	[Drug name] [varchar](80) NOT NULL,
	[Name specifier] [varchar](30) NULL,
	[Marketing Authorization Number] [varchar](30) NULL,
	[Marketing Authorization Date] [varchar](50) NULL,
	[Marketing Authorization Widthdrawal Date] [varchar](8) NULL,
	[Country] [varchar](10) NOT NULL,
	[Company] [varchar](10) NOT NULL,
	[Marketing Authorization Holder] [varchar](10) NOT NULL,
	[Reference code] [varchar](10) NOT NULL,
	[Source country] [varchar](10) NOT NULL,
	[Year of Reference] [varchar](3) NULL,
	[Product type] [varchar](10) NOT NULL,
	[Product group] [varchar](10) NOT NULL,
	[Create date] [smalldatetime] NOT NULL,
	[Date changed] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_MP] PRIMARY KEY CLUSTERED 
(
	[Medicinalprod_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

