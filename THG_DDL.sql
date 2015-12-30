USE [WHODDE]
GO

/****** Object:  Table [dbo].[ThG]    Script Date: 12/30/2015 11:00:36 AM ******/
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


