USE [WHODDE]
GO

/****** Object:  Table [dbo].[SRCE]    Script Date: 12/30/2015 12:08:08 PM ******/
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
