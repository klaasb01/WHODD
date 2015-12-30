USE [WHODDE]
GO

/****** Object:  Table [dbo].[SUN]    Script Date: 12/30/2015 12:51:17 PM ******/
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

