USE [WHODDE]
GO
/****** Object:  Table [dbo].[ATC]    Script Date: 1/7/2016 12:18:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ATC](
	[ATCCode] [varchar](10) NOT NULL,
	[Level] [varchar](1) NULL,
	[Text] [varchar](110) NULL,
 CONSTRAINT [PK_ATC] PRIMARY KEY CLUSTERED 
(
	[ATCCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CCODE]    Script Date: 1/7/2016 12:18:34 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ING]    Script Date: 1/7/2016 12:18:34 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MP]    Script Date: 1/7/2016 12:18:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MP](
	[Medicinalprod_Id] [varchar](10) NOT NULL,
	[MedID] [varchar](35) NULL,
	[DrugRecordNumber] [varchar](6) NOT NULL,
	[SequenceNumber1] [varchar](2) NOT NULL,
	[SequenceNumber2] [varchar](3) NOT NULL,
	[SequenceNumber3] [varchar](10) NOT NULL,
	[SequenceNumber4] [varchar](10) NOT NULL,
	[Generic] [varchar](1) NOT NULL,
	[DrugName] [varchar](80) NOT NULL,
	[NameSpecifier] [varchar](30) NULL,
	[MarketingAuthorizationNumber] [varchar](30) NULL,
	[MarketingAuthorizationDate] [varchar](8) NULL,
	[MarketingWithdrawalDate] [varchar](8) NULL,
	[Country] [varchar](10) NOT NULL,
	[Company] [varchar](10) NOT NULL,
	[MarketingAuthorizationHolder] [varchar](10) NOT NULL,
	[ReferenceCode] [varchar](10) NOT NULL,
	[SourceCountry] [varchar](10) NOT NULL,
	[YearOfReference] [varchar](3) NULL,
	[ProductType] [varchar](10) NOT NULL,
	[ProductGroup] [varchar](10) NOT NULL,
	[CreateDate] [smalldatetime] NOT NULL,
	[DateChanged] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_MP] PRIMARY KEY CLUSTERED 
(
	[Medicinalprod_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ORG]    Script Date: 1/7/2016 12:18:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ORG](
	[Organization_Id] [varchar](10) NOT NULL,
	[Name] [varchar](80) NULL,
	[CountryCode] [varchar](10) NOT NULL,
 CONSTRAINT [PK_ORG] PRIMARY KEY CLUSTERED 
(
	[Organization_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PF]    Script Date: 1/7/2016 12:18:34 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PP]    Script Date: 1/7/2016 12:18:34 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PRG]    Script Date: 1/7/2016 12:18:34 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PRT]    Script Date: 1/7/2016 12:18:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PRT](
	[Prodtype_Id] [varchar](10) NOT NULL,
	[Text] [varchar](80) NULL,
 CONSTRAINT [PK_PRT] PRIMARY KEY CLUSTERED 
(
	[Prodtype_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SRCE]    Script Date: 1/7/2016 12:18:34 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STR]    Script Date: 1/7/2016 12:18:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[STR](
	[Strength_Id] [varchar](10) NOT NULL,
	[Text] [varchar](500) NULL,
 CONSTRAINT [PK_STR] PRIMARY KEY CLUSTERED 
(
	[Strength_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SUN]    Script Date: 1/7/2016 12:18:34 PM ******/
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
	[ReferenceCode] [varchar](10) NULL,
 CONSTRAINT [PK_SUN] PRIMARY KEY CLUSTERED 
(
	[Substance_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ThG]    Script Date: 1/7/2016 12:18:34 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UNIT]    Script Date: 1/7/2016 12:18:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UNIT](
	[Unit_Id] [varchar](10) NOT NULL,
	[Text] [varchar](40) NULL,
 CONSTRAINT [PK_UNIT] PRIMARY KEY CLUSTERED 
(
	[Unit_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Unit-L]    Script Date: 1/7/2016 12:18:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Unit-L](
	[Unit_Id] [varchar](10) NOT NULL,
	[Text] [varchar](100) NULL,
 CONSTRAINT [PK_Unit-L] PRIMARY KEY CLUSTERED 
(
	[Unit_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Unit-X]    Script Date: 1/7/2016 12:18:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Unit-X](
	[Unit_Id] [varchar](10) NOT NULL,
	[Text] [varchar](40) NULL,
 CONSTRAINT [PK_Unit-X] PRIMARY KEY CLUSTERED 
(
	[Unit_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [DrugName_MP]    Script Date: 1/7/2016 12:18:34 PM ******/
CREATE NONCLUSTERED INDEX [DrugName_MP] ON [dbo].[MP]
(
	[DrugName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ING]  WITH CHECK ADD  CONSTRAINT [FK_ING_MP] FOREIGN KEY([Medicinalprod_Id])
REFERENCES [dbo].[MP] ([Medicinalprod_Id])
GO
ALTER TABLE [dbo].[ING] CHECK CONSTRAINT [FK_ING_MP]
GO
ALTER TABLE [dbo].[ING]  WITH CHECK ADD  CONSTRAINT [FK_ING_PP] FOREIGN KEY([Pharmproduct_Id])
REFERENCES [dbo].[PP] ([Pharmproduct_Id])
GO
ALTER TABLE [dbo].[ING] CHECK CONSTRAINT [FK_ING_PP]
GO
ALTER TABLE [dbo].[ING]  WITH CHECK ADD  CONSTRAINT [FK_ING_SUN] FOREIGN KEY([Substance_Id])
REFERENCES [dbo].[SUN] ([Substance_Id])
GO
ALTER TABLE [dbo].[ING] CHECK CONSTRAINT [FK_ING_SUN]
GO
ALTER TABLE [dbo].[ING]  WITH CHECK ADD  CONSTRAINT [FK_ING_UNIT] FOREIGN KEY([Unit])
REFERENCES [dbo].[UNIT] ([Unit_Id])
GO
ALTER TABLE [dbo].[ING] CHECK CONSTRAINT [FK_ING_UNIT]
GO
ALTER TABLE [dbo].[ING]  WITH CHECK ADD  CONSTRAINT [FK_ING_Unit-L] FOREIGN KEY([Unit])
REFERENCES [dbo].[Unit-L] ([Unit_Id])
GO
ALTER TABLE [dbo].[ING] CHECK CONSTRAINT [FK_ING_Unit-L]
GO
ALTER TABLE [dbo].[ING]  WITH CHECK ADD  CONSTRAINT [FK_ING_Unit-X] FOREIGN KEY([Unit])
REFERENCES [dbo].[Unit-X] ([Unit_Id])
GO
ALTER TABLE [dbo].[ING] CHECK CONSTRAINT [FK_ING_Unit-X]
GO
ALTER TABLE [dbo].[MP]  WITH CHECK ADD  CONSTRAINT [FK_MP_CCODE] FOREIGN KEY([Country])
REFERENCES [dbo].[CCODE] ([CountryCode])
GO
ALTER TABLE [dbo].[MP] CHECK CONSTRAINT [FK_MP_CCODE]
GO
ALTER TABLE [dbo].[MP]  WITH CHECK ADD  CONSTRAINT [FK_MP_ORG] FOREIGN KEY([MarketingAuthorizationHolder])
REFERENCES [dbo].[ORG] ([Organization_Id])
GO
ALTER TABLE [dbo].[MP] CHECK CONSTRAINT [FK_MP_ORG]
GO
ALTER TABLE [dbo].[MP]  WITH CHECK ADD  CONSTRAINT [FK_MP_PRG] FOREIGN KEY([ProductGroup])
REFERENCES [dbo].[PRG] ([Productgroup_Id])
GO
ALTER TABLE [dbo].[MP] CHECK CONSTRAINT [FK_MP_PRG]
GO
ALTER TABLE [dbo].[MP]  WITH CHECK ADD  CONSTRAINT [FK_MP_PRT] FOREIGN KEY([ProductType])
REFERENCES [dbo].[PRT] ([Prodtype_Id])
GO
ALTER TABLE [dbo].[MP] CHECK CONSTRAINT [FK_MP_PRT]
GO
ALTER TABLE [dbo].[PP]  WITH CHECK ADD  CONSTRAINT [FK_PP_MP] FOREIGN KEY([Medicinalprod_Id])
REFERENCES [dbo].[MP] ([Medicinalprod_Id])
GO
ALTER TABLE [dbo].[PP] CHECK CONSTRAINT [FK_PP_MP]
GO
ALTER TABLE [dbo].[PP]  WITH CHECK ADD  CONSTRAINT [FK_PP_PF] FOREIGN KEY([PharmaceuticalForm])
REFERENCES [dbo].[PF] ([Pharmform_Id])
GO
ALTER TABLE [dbo].[PP] CHECK CONSTRAINT [FK_PP_PF]
GO
ALTER TABLE [dbo].[SUN]  WITH CHECK ADD  CONSTRAINT [FK_SUN_SRCE] FOREIGN KEY([ReferenceCode])
REFERENCES [dbo].[SRCE] ([ReferenceCode])
GO
ALTER TABLE [dbo].[SUN] CHECK CONSTRAINT [FK_SUN_SRCE]
GO
ALTER TABLE [dbo].[ThG]  WITH NOCHECK ADD  CONSTRAINT [FK_ThG_ATC] FOREIGN KEY([ATCCode])
REFERENCES [dbo].[ATC] ([ATCCode])
GO
ALTER TABLE [dbo].[ThG] CHECK CONSTRAINT [FK_ThG_ATC]
GO
ALTER TABLE [dbo].[ThG]  WITH NOCHECK ADD  CONSTRAINT [FK_ThG_MP] FOREIGN KEY([Medicinalprod_Id])
REFERENCES [dbo].[MP] ([Medicinalprod_Id])
GO
ALTER TABLE [dbo].[ThG] CHECK CONSTRAINT [FK_ThG_MP]
GO
