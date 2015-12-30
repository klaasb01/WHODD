USE [WHODDE]
GO

/****** Object:  Table [dbo].[PP]    Script Date: 12/30/2015 10:48:35 AM ******/
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

