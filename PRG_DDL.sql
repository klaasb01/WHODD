USE [WHODDE]
GO

/****** Object:  Table [dbo].[PRG]    Script Date: 12/30/2015 2:09:56 PM ******/
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

