USE [rentalsystem]
GO
/****** Object:  Table [dbo].[enquiry]    Script Date: 01/09/2010 18:25:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[enquiry](
	[specreq] [varchar](max) NOT NULL,
	[reqdate] [datetime] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[phonenumber] [varchar](50) NOT NULL,
	[email] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[relocation]    Script Date: 01/09/2010 18:25:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[relocation](
	[name] [varchar](50) NOT NULL,
	[requirement] [varchar](50) NOT NULL,
	[date] [datetime] NOT NULL,
	[srcaddr] [varchar](max) NOT NULL,
	[destaddr] [varchar](max) NOT NULL,
	[phonenumber] [varchar](50) NOT NULL,
	[email] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[parttyrentals]    Script Date: 01/09/2010 18:25:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[parttyrentals](
	[name] [varchar](50) NOT NULL,
	[date] [datetime] NOT NULL,
	[requirement] [varchar](50) NOT NULL,
	[addr] [varchar](max) NOT NULL,
	[phone] [varchar](50) NOT NULL,
	[ampm] [varchar](50) NOT NULL,
	[partymail] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[booking]    Script Date: 01/09/2010 18:25:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[booking](
	[bname] [varchar](50) NOT NULL,
	[bemail] [varchar](50) NOT NULL,
	[bphnumber] [varchar](50) NOT NULL,
	[bnumpieces] [varchar](50) NOT NULL,
	[pdate] [datetime] NOT NULL,
	[phours] [varchar](50) NOT NULL,
	[pmin] [varchar](50) NOT NULL,
	[ptime] [varchar](50) NOT NULL,
	[ldate] [datetime] NOT NULL,
	[pplace] [varchar](50) NOT NULL,
	[ProductId] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[feedback]    Script Date: 01/09/2010 18:25:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[feedback](
	[FeedBackId] [int] IDENTITY(1,1) NOT NULL,
	[fname] [varchar](50) NOT NULL,
	[femail] [varchar](50) NOT NULL,
	[feedback] [varchar](50) NOT NULL,
	[VUserName] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[vendortab]    Script Date: 01/09/2010 18:25:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[vendortab](
	[vfname] [varchar](50) NOT NULL,
	[vlname] [varchar](50) NOT NULL,
	[vuname] [varchar](50) NOT NULL,
	[vpwd] [varchar](50) NOT NULL,
	[vaddress] [varchar](max) NOT NULL,
	[vcity] [varchar](50) NOT NULL,
	[vstate] [varchar](50) NOT NULL,
	[vpincode] [varchar](50) NOT NULL,
	[vcredit] [varchar](50) NOT NULL,
	[vmobile] [varchar](50) NOT NULL,
	[vtel] [varchar](50) NULL,
	[vemail] [varchar](50) NOT NULL,
	[vaemail] [varchar](50) NOT NULL,
	[vdate] [datetime] NOT NULL,
	[vquestion] [varchar](max) NOT NULL,
	[vanswer] [varchar](max) NOT NULL,
 CONSTRAINT [PK_vendortab] PRIMARY KEY CLUSTERED 
(
	[vuname] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[products]    Script Date: 01/09/2010 18:25:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[products](
	[vendorname] [varchar](50) NOT NULL,
	[producttype] [varchar](50) NOT NULL,
	[availcity] [varchar](50) NOT NULL,
	[productname] [varchar](50) NOT NULL,
	[startdate] [datetime] NOT NULL,
	[enddate] [datetime] NOT NULL,
	[rent] [varchar](50) NOT NULL,
	[status] [varchar](50) NOT NULL,
	[description] [varchar](50) NULL,
	[picture] [image] NOT NULL,
	[productid] [int] NOT NULL,
	[VUName] [varchar](50) NULL,
 CONSTRAINT [PK_products] PRIMARY KEY CLUSTERED 
(
	[productid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  ForeignKey [FK_products_vendortab]    Script Date: 01/09/2010 18:25:51 ******/
ALTER TABLE [dbo].[products]  WITH CHECK ADD  CONSTRAINT [FK_products_vendortab] FOREIGN KEY([VUName])
REFERENCES [dbo].[vendortab] ([vuname])
GO
ALTER TABLE [dbo].[products] CHECK CONSTRAINT [FK_products_vendortab]
GO
