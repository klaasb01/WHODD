USE [WHODDE]
GO

/****** Object:  Table [dbo].[PP]    Script Date: 1/5/2016 9:28:33 AM ******/
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
	[CreateDate] [smalldatetime] NULL,
 CONSTRAINT [PK_PP] PRIMARY KEY CLUSTERED 
(
	[Pharmproduct_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

