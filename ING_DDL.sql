USE [WHODDE]
GO

/****** Object:  Table [dbo].[ING]    Script Date: 12/30/2015 11:43:22 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[ING](
	[Ingredient_Id] [varchar](10) NOT NULL,
	[Create_Date] [smalldatetime] NULL,
	[Substance_Id] [varchar](10) NOT NULL,
	[Quantity] [varchar](15) NULL,
	[Quantity-2] [varchar](15) NULL,
	[Unit] [varchar](10) NULL,
	[Pharmproduct_Id] [varchar](10) NOT NULL,
	[Medicinalprod_Id] [varchar](10) NOT NULL,
 CONSTRAINT [PK_ING] PRIMARY KEY CLUSTERED 
(
	[Ingredient_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

