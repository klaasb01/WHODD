USE [WHODDE]
GO

/****** Object:  Table [dbo].[ThG]    Script Date: 1/5/2016 9:28:22 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[ThG](
	[Therapgroup_Id] [varchar](10) NOT NULL,
	[ATCCode] [varchar](10) NULL,
	[CreateDate] [smalldatetime] NULL,
	[OfficialATCCode] [varchar](1) NULL,
	[Medicinalprod_Id] [varchar](10) NOT NULL,
 CONSTRAINT [PK_ThG] PRIMARY KEY CLUSTERED 
(
	[Therapgroup_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[ThG]  WITH CHECK ADD  CONSTRAINT [FK_ThG_ATC] FOREIGN KEY([ATCCode])
REFERENCES [dbo].[ATC] ([ATCCode])
GO

ALTER TABLE [dbo].[ThG] CHECK CONSTRAINT [FK_ThG_ATC]
GO

ALTER TABLE [dbo].[ThG]  WITH CHECK ADD  CONSTRAINT [FK_ThG_MP] FOREIGN KEY([Medicinalprod_Id])
REFERENCES [dbo].[MP] ([Medicinalprod_Id])
GO

ALTER TABLE [dbo].[ThG] CHECK CONSTRAINT [FK_ThG_MP]
GO

