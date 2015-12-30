USE [WHODDE]
GO

/****** Object:  Table [dbo].[PF]    Script Date: 12/30/2015 12:57:52 PM ******/
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

