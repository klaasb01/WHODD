USE [WHODDE]
GO

/****** Object:  Table [dbo].[CCODE]    Script Date: 12/30/2015 12:29:05 PM ******/
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

