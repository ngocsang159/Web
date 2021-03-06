USE [LanHang]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 05/12/2021 10:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Image] [nvarchar](max) NULL,
	[Phone] [nvarchar](50) NULL,
	[Birthday] [date] NULL,
	[Email] [nvarchar](100) NULL,
	[Address] [nvarchar](250) NULL,
	[Password] [nvarchar](max) NULL,
	[IsAdmin] [int] NULL,
	[Status] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](250) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](250) NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Banner]    Script Date: 05/12/2021 10:18:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Banner](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Image] [nvarchar](max) NULL,
	[Title] [nvarchar](250) NULL,
	[ProductID] [bigint] NULL,
	[Position] [int] NULL,
	[Status] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](250) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](250) NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_Banner] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CategoryProduct]    Script Date: 05/12/2021 10:18:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoryProduct](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](100) NULL,
	[Name] [nvarchar](200) NULL,
	[Image] [nvarchar](max) NULL,
	[Slug] [nvarchar](200) NULL,
	[Position] [int] NULL,
	[ParentID] [bigint] NULL,
	[Status] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](250) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](250) NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_CategoryProduct] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Config]    Script Date: 05/12/2021 10:18:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Config](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Logo] [nvarchar](max) NULL,
	[Phone] [nvarchar](200) NULL,
	[Email] [nvarchar](250) NULL,
	[Address] [nvarchar](250) NULL,
	[HotLine] [nvarchar](50) NULL,
	[Facebook] [nvarchar](max) NULL,
	[Zalo] [nvarchar](max) NULL,
	[Youtube] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Position] [int] NULL,
	[Map] [nvarchar](max) NULL,
	[Status] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[CreateBy] [nvarchar](250) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdateBy] [nvarchar](250) NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_Config] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 05/12/2021 10:18:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Phone] [nvarchar](50) NULL,
	[Email] [nvarchar](250) NULL,
	[Address] [nvarchar](250) NULL,
	[Password] [nvarchar](50) NULL,
	[DistrictID] [varchar](50) NULL,
	[Status] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](250) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](250) NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[District]    Script Date: 05/12/2021 10:18:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[District](
	[Stt] [bigint] IDENTITY(1,1) NOT NULL,
	[ID] [varchar](50) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Type] [nvarchar](50) NULL,
	[ProvinceID] [varchar](50) NULL,
	[Status] [int] NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_District] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Footer]    Script Date: 05/12/2021 10:18:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Footer](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Image] [nvarchar](max) NULL,
	[Description] [nvarchar](250) NULL,
	[Position] [int] NULL,
	[Status] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](250) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdateBy] [nvarchar](250) NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_Footer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImageInPage]    Script Date: 05/12/2021 10:18:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImageInPage](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Image] [nvarchar](max) NULL,
	[Title] [nvarchar](250) NULL,
	[LocationID] [bigint] NULL,
	[Position] [int] NULL,
	[Status] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](250) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](250) NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_ImageInPage] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MasterData]    Script Date: 05/12/2021 10:18:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MasterData](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[ParentID] [bigint] NULL,
	[Position] [int] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_MasterData] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 05/12/2021 10:18:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Slug] [nvarchar](250) NULL,
	[ParentID] [bigint] NULL,
	[Position] [int] NULL,
	[Status] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](250) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](250) NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[New]    Script Date: 05/12/2021 10:18:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[New](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Image] [nvarchar](max) NULL,
	[Slug] [nvarchar](200) NULL,
	[Views] [int] NULL,
	[Description] [nvarchar](200) NULL,
	[Content] [nvarchar](max) NULL,
	[ParentID] [bigint] NULL,
	[Position] [int] NULL,
	[Status] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](250) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdateBy] [nvarchar](250) NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_New] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 05/12/2021 10:18:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](100) NULL,
	[AdminID] [bigint] NULL,
	[CustomerID] [bigint] NULL,
	[FullName] [nvarchar](250) NULL,
	[Email] [nvarchar](250) NULL,
	[Phone] [nvarchar](50) NULL,
	[Note] [nvarchar](250) NULL,
	[OrderStatusID] [int] NULL,
	[Address] [nvarchar](250) NULL,
	[DistrictID] [varchar](50) NULL,
	[Status] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](250) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](250) NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 05/12/2021 10:18:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[OrderID] [bigint] NULL,
	[ProductID] [bigint] NULL,
	[ColorID] [bigint] NULL,
	[Quantity] [int] NULL,
	[Price] [decimal](18, 0) NULL,
	[PriceShip] [decimal](18, 0) NULL,
	[TotalPrice] [decimal](18, 0) NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderStatus]    Script Date: 05/12/2021 10:18:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderStatus](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_OrderStatus] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Policy]    Script Date: 05/12/2021 10:18:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Policy](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Slug] [nvarchar](250) NULL,
	[Content] [nvarchar](max) NULL,
	[Image] [nvarchar](max) NULL,
	[Position] [int] NULL,
	[ParentID] [bigint] NULL,
	[Status] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](250) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](250) NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_Policy] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 05/12/2021 10:18:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](100) NULL,
	[Name] [nvarchar](250) NULL,
	[Image] [nvarchar](max) NULL,
	[Slug] [nvarchar](250) NULL,
	[Price] [decimal](18, 0) NULL,
	[PriceSale] [decimal](18, 0) NULL,
	[Description] [nvarchar](max) NULL,
	[Content] [nvarchar](max) NULL,
	[IsHot] [int] NULL,
	[OldNew] [int] NULL,
	[Total] [int] NULL,
	[Buyed] [int] NULL,
	[Like] [int] NULL,
	[View] [int] NULL,
	[Position] [int] NULL,
	[Gift] [nvarchar](max) NULL,
	[CategoryID] [bigint] NULL,
	[BrandID] [bigint] NULL,
	[Status] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](250) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](250) NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductColor]    Script Date: 05/12/2021 10:18:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductColor](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[ProductID] [bigint] NULL,
	[ColorID] [bigint] NULL,
 CONSTRAINT [PK_ProductColor] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductImage]    Script Date: 05/12/2021 10:18:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductImage](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Image] [nvarchar](max) NULL,
	[ProductID] [bigint] NULL,
 CONSTRAINT [PK_ProductImage] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductSpecification]    Script Date: 05/12/2021 10:18:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductSpecification](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Design] [nvarchar](250) NULL,
	[Size] [nvarchar](250) NULL,
	[Screen] [nvarchar](250) NULL,
	[ScreenResolution] [nvarchar](250) NULL,
	[WideScreen] [nvarchar](250) NULL,
	[CameraRear] [nvarchar](250) NULL,
	[CameraSelfie] [nvarchar](250) NULL,
	[RAM] [nvarchar](250) NULL,
	[CardMemory] [nvarchar](250) NULL,
	[Memory] [nvarchar](250) NULL,
	[CPU] [nvarchar](250) NULL,
	[SpeedCPU] [nvarchar](250) NULL,
	[GPU] [nvarchar](250) NULL,
	[Battery] [nvarchar](250) NULL,
	[SIM] [nvarchar](250) NULL,
	[Network] [nvarchar](250) NULL,
	[ChargingPort] [nvarchar](250) NULL,
	[JackHeadphone] [nvarchar](250) NULL,
	[OS] [nvarchar](250) NULL,
	[MadeIn] [nvarchar](250) NULL,
	[LaunchTime] [datetime] NULL,
	[ProductID] [bigint] NULL,
	[Status] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](250) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](250) NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_ProductSpecification] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Province]    Script Date: 05/12/2021 10:18:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Province](
	[Stt] [bigint] IDENTITY(1,1) NOT NULL,
	[ID] [varchar](50) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Type] [nvarchar](50) NULL,
	[Status] [int] NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_Province] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([ID], [Name], [Image], [Phone], [Birthday], [Email], [Address], [Password], [IsAdmin], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (1, N'Nguyễn Sáng', N'/Upload/Image/20210510235902anh1.jpg', N'0383515382', CAST(N'1999-08-08' AS Date), N'admin12@gamil.com', N'nam định', N'admin123', 1, 1, NULL, NULL, CAST(N'2021-04-10T16:44:29.920' AS DateTime), NULL, 0)
INSERT [dbo].[Account] ([ID], [Name], [Image], [Phone], [Birthday], [Email], [Address], [Password], [IsAdmin], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (2, N'Ngọc', NULL, N'0383515382', CAST(N'1999-09-09' AS Date), N'admin@gmail.com', N'Hà Nội', N'admin123', 1, 0, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Account] ([ID], [Name], [Image], [Phone], [Birthday], [Email], [Address], [Password], [IsAdmin], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (3, N'Hưởng', NULL, N'0383515382', CAST(N'2008-08-09' AS Date), N'admin@gmail.com', N'hà Nội', N'admin123', 1, 1, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Account] ([ID], [Name], [Image], [Phone], [Birthday], [Email], [Address], [Password], [IsAdmin], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (4, N'sáng', NULL, N'0383515382', CAST(N'2008-08-09' AS Date), N'admin@gmail.com', N'hà nọi', N'admin123', 1, 1, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Account] ([ID], [Name], [Image], [Phone], [Birthday], [Email], [Address], [Password], [IsAdmin], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (5, N'nam', N'/Upload/Image/20210402145137Screenshot (2).png', N'0123456789', CAST(N'1999-08-08' AS Date), N'admin12@gamil.com', N'nam định', N'admin123', 1, 1, NULL, NULL, CAST(N'2021-04-02T15:19:05.400' AS DateTime), NULL, 1)
INSERT [dbo].[Account] ([ID], [Name], [Image], [Phone], [Birthday], [Email], [Address], [Password], [IsAdmin], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (6, N'nguyen van sang', N'/Upload/Image/no-image.jpg', N'0312587959', CAST(N'2021-04-30' AS Date), N'123@gmail.com', N'thái bình', NULL, 0, 1, CAST(N'2021-04-02T14:17:54.497' AS DateTime), N'', NULL, NULL, 1)
INSERT [dbo].[Account] ([ID], [Name], [Image], [Phone], [Birthday], [Email], [Address], [Password], [IsAdmin], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (7, N'nguyen van sang', N'/Upload/Image/20210402145137Screenshot (2).png', N'0312587959', CAST(N'2021-04-30' AS Date), N'123@gmail.com', N'thái bình', NULL, 0, 1, CAST(N'2021-04-02T14:51:53.530' AS DateTime), N'', NULL, NULL, 1)
INSERT [dbo].[Account] ([ID], [Name], [Image], [Phone], [Birthday], [Email], [Address], [Password], [IsAdmin], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (8, N'nguyen van sang', N'/Upload/Image/20210508005941ab.PNG', N'0312587959', CAST(N'2021-04-23' AS Date), N'abc@gmail.com', N'thái bình', N'admin123', 0, 1, CAST(N'2021-04-04T01:42:44.387' AS DateTime), N'', NULL, NULL, 1)
INSERT [dbo].[Account] ([ID], [Name], [Image], [Phone], [Birthday], [Email], [Address], [Password], [IsAdmin], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (9, N'Thanh Thảo', N'/Upload/Image/20210413165422anhnen.jpg', N'0123456789', CAST(N'1999-04-16' AS Date), N'123@gmail.com', N'thái bình', N'admin123', 0, 1, CAST(N'2021-04-13T16:56:55.690' AS DateTime), N'', CAST(N'2021-05-08T01:01:36.907' AS DateTime), NULL, 0)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Banner] ON 

INSERT [dbo].[Banner] ([ID], [Name], [Image], [Title], [ProductID], [Position], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (1, N'sang', N'/Upload/Image/20210417211906s21-web.png', N'Giảm giá', 6, 0, 1, CAST(N'2021-04-16T00:01:50.270' AS DateTime), N'Nguyễn Sáng', CAST(N'2021-04-17T21:19:16.490' AS DateTime), N'Nguyễn Sáng', 0)
INSERT [dbo].[Banner] ([ID], [Name], [Image], [Title], [ProductID], [Position], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (2, N'BN12', N'/Upload/Image/20210416131054nnnnn.png', N'Giảm giá', 6, 1, 1, CAST(N'2021-04-16T13:07:53.093' AS DateTime), NULL, CAST(N'2021-04-16T13:10:57.250' AS DateTime), NULL, 0)
SET IDENTITY_INSERT [dbo].[Banner] OFF
GO
SET IDENTITY_INSERT [dbo].[CategoryProduct] ON 

INSERT [dbo].[CategoryProduct] ([ID], [Code], [Name], [Image], [Slug], [Position], [ParentID], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (1, N'C02', N'Apple', N'/Upload/Image/20210402145137Screenshot (2).png', N'apple', 1, NULL, 1, NULL, NULL, CAST(N'2021-04-05T13:37:00.593' AS DateTime), NULL, 1)
INSERT [dbo].[CategoryProduct] ([ID], [Code], [Name], [Image], [Slug], [Position], [ParentID], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (2, N'C01', N'Samsung', N'/Upload/Image/20210402145137Screenshot (2).png', N'samsung', 1, NULL, 1, CAST(N'2021-04-04T09:14:20.837' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[CategoryProduct] ([ID], [Code], [Name], [Image], [Slug], [Position], [ParentID], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (3, N'C03', N'sang', N'/Upload/Image/20210402145137Screenshot (2).png', N'sang', 2, NULL, 1, CAST(N'2021-04-04T23:16:41.193' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[CategoryProduct] ([ID], [Code], [Name], [Image], [Slug], [Position], [ParentID], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (4, N'c03', N'dfdf', N'/Upload/Image/20210402145137Screenshot (2).png', N'dfdf', 344, NULL, 1, CAST(N'2021-04-04T23:18:17.923' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[CategoryProduct] ([ID], [Code], [Name], [Image], [Slug], [Position], [ParentID], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (5, N'C04', N'Apple Iphone', N'/Upload/Image/20210413224035thumb_IP12Pro_3.jpg', N'apple-iphone', 0, NULL, 1, CAST(N'2021-04-04T23:19:38.867' AS DateTime), NULL, CAST(N'2021-04-13T22:40:44.657' AS DateTime), NULL, 1)
INSERT [dbo].[CategoryProduct] ([ID], [Code], [Name], [Image], [Slug], [Position], [ParentID], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (6, N'C05', N'SamSung', N'/Upload/Image/2021041322424010044955-dien-thoai-samsung-sm-g988b-ds-128gb-xam-1.jpg', N'samsung', 1, NULL, 1, CAST(N'2021-04-13T22:42:46.283' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[CategoryProduct] ([ID], [Code], [Name], [Image], [Slug], [Position], [ParentID], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (7, N'CP01', N'Apple/Iphone', N'/Upload/Image/20210415212705logo.png', N'apple-iphone', 0, NULL, 1, CAST(N'2021-04-15T21:27:14.953' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[CategoryProduct] ([ID], [Code], [Name], [Image], [Slug], [Position], [ParentID], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (8, N'CP02', N'Samsung', N'/Upload/Image/20210415212758samsung.jpg', N'samsung', 1, NULL, 1, CAST(N'2021-04-15T21:28:04.413' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[CategoryProduct] ([ID], [Code], [Name], [Image], [Slug], [Position], [ParentID], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (9, N'CP03', N'Điện Thoại', N'/Upload/Image/20210413224035thumb_IP12Pro_3.jpg', N'dien-thoai', 2, NULL, 1, CAST(N'2021-04-16T16:18:13.047' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[CategoryProduct] ([ID], [Code], [Name], [Image], [Slug], [Position], [ParentID], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (10, N'CP04', N'Phụ Kiện', N'/Upload/Image/20210416162113dâyC2L.jpg', N'phu-kien', 3, NULL, 1, CAST(N'2021-04-16T16:21:19.703' AS DateTime), NULL, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[CategoryProduct] OFF
GO
SET IDENTITY_INSERT [dbo].[Config] ON 

INSERT [dbo].[Config] ([ID], [Name], [Logo], [Phone], [Email], [Address], [HotLine], [Facebook], [Zalo], [Youtube], [Description], [Position], [Map], [Status], [CreatedDate], [CreateBy], [UpdateDate], [UpdateBy], [IsDelete]) VALUES (1, N'Lan Hằng', N'/Upload/Image/20210415144136logo.png', N'0383515382', N'lanhangMobile@gmail.com', N'An Châu, Đông Hưng, Thái Bình', N'0123459999', N'dfds', N'fsdfsdf', N'dsfdsf', N'Là cửa hàng chuyên phân phối điện thoại xách tay uy tín, chất lượng. LanHang Mobile tự tin gửi tới khách hàng những dòng máy mới nhất, chất lượng nhất tới từ nhiều thương hiệu như: Apple, Samsung, LG, Xiaomi... với mức giá vô cùng hợp lý. Hỗ trợ trả góp nhanh chóng, Thanh toán tiện lợi qua thẻ, Ship COD mọi miền tổ quốc. Khách hàng đến với LanHang Mobile là sự vinh hạnh của chúng tôi. Và để đáp lại điều đó, chúng tôi không ngừng nâng cao chất lượng phục vụ để hướng đến trải nghiệm mua hàng tốt nhất cho khách hàng: ”Vui lòng khách đến, vừa lòng khách đi”.', NULL, N'<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d29883.199217294754!2d106.28239983418037!3d20.57172024907326!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x3626073e4442867!2zVHJ1bmcgVMOibSDEkFRExJAgTGFuIEjhurFuZw!5e0!3m2!1sen!2s!4v1618311593775!5m2!1sen!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>', 1, NULL, NULL, NULL, N'Nguyễn Sáng', 0)
SET IDENTITY_INSERT [dbo].[Config] OFF
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([ID], [Name], [Phone], [Email], [Address], [Password], [DistrictID], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (1, N'nguyen van sang', N'0312587959', N'123@gmail.com', N'thái bình', N'121354', NULL, 1, CAST(N'2021-04-12T15:26:44.943' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[Customer] ([ID], [Name], [Phone], [Email], [Address], [Password], [DistrictID], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (2, N'nguyen van sang', N'0312587959', N'123@gmail.com', N'thái bình', N'121354', NULL, 1, CAST(N'2021-04-12T15:28:08.930' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[Customer] ([ID], [Name], [Phone], [Email], [Address], [Password], [DistrictID], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (3, N'nguyen van sang1', N'0312587959', N'123@gmail.com', N'thái bình', N'121354', N'--Ch?n Huy?n--', 0, CAST(N'2021-04-12T16:36:36.877' AS DateTime), NULL, CAST(N'2021-04-12T16:57:21.383' AS DateTime), NULL, 1)
INSERT [dbo].[Customer] ([ID], [Name], [Phone], [Email], [Address], [Password], [DistrictID], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (4, N'Thảo a', N'0312587959', N'admin@gmail.com', N'thái bình', N'121354', N'271', 1, CAST(N'2021-04-12T17:04:17.617' AS DateTime), NULL, CAST(N'2021-04-20T22:01:17.617' AS DateTime), N'Nguyễn Sáng', 0)
INSERT [dbo].[Customer] ([ID], [Name], [Phone], [Email], [Address], [Password], [DistrictID], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (5, N'nguyen van sang', N'0312587959', N'123@gmail.com', N'thái bình', N'121354', N'340', 1, CAST(N'2021-04-12T17:31:33.587' AS DateTime), NULL, CAST(N'2021-04-13T17:56:35.680' AS DateTime), N'Nguyễn Sáng', 0)
INSERT [dbo].[Customer] ([ID], [Name], [Phone], [Email], [Address], [Password], [DistrictID], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (6, N'nguyen van sang', N'0312587959', N'nguyenngocsang15991999@gmail.com', NULL, N'123', NULL, 1, CAST(N'2021-05-05T17:37:01.413' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[Customer] ([ID], [Name], [Phone], [Email], [Address], [Password], [DistrictID], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (7, N'nguyen van sang', N'0312587959', N'trungtv@gmail.com', NULL, N'1', NULL, 1, CAST(N'2021-05-05T17:38:28.287' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[Customer] ([ID], [Name], [Phone], [Email], [Address], [Password], [DistrictID], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (8, NULL, NULL, NULL, NULL, NULL, NULL, 1, CAST(N'2021-05-05T17:58:17.617' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[Customer] ([ID], [Name], [Phone], [Email], [Address], [Password], [DistrictID], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (9, N'nguyen van sang', N'0312587959', N'abc@gmail.com', NULL, N'1', NULL, 1, CAST(N'2021-05-05T18:05:14.897' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[Customer] ([ID], [Name], [Phone], [Email], [Address], [Password], [DistrictID], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (10, N'nguyen van sang', N'0383515356', N'abc12@gmail.com', NULL, N'Sang123', NULL, 1, CAST(N'2021-05-05T19:06:40.997' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[Customer] ([ID], [Name], [Phone], [Email], [Address], [Password], [DistrictID], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (11, N'nguyen van sang', N'0312587959', N'123@gmail.com', N'thái bình', N'121354', N'297', 1, CAST(N'2021-05-11T21:57:07.563' AS DateTime), N'Nguyễn Sáng', NULL, N'Nguyễn Sáng', 0)
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[District] ON 

INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (1, N'001', N'Quận Ba Đình', N'Quận', N'01', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (2, N'002', N'Quận Hoàn Kiếm', N'Quận', N'01', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (3, N'003', N'Quận Tây Hồ', N'Quận', N'01', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (4, N'004', N'Quận Long Biên', N'Quận', N'01', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (5, N'005', N'Quận Cầu Giấy', N'Quận', N'01', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (6, N'006', N'Quận Đống Đa', N'Quận', N'01', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (7, N'007', N'Quận Hai Bà Trưng', N'Quận', N'01', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (8, N'008', N'Quận Hoàng Mai', N'Quận', N'01', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (9, N'009', N'Quận Thanh Xuân', N'Quận', N'01', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (10, N'016', N'Huyện Sóc Sơn', N'Huyện', N'01', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (11, N'017', N'Huyện Đông Anh', N'Huyện', N'01', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (12, N'018', N'Huyện Gia Lâm', N'Huyện', N'01', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (13, N'019', N'Quận Nam Từ Liêm', N'Quận', N'01', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (14, N'020', N'Huyện Thanh Trì', N'Huyện', N'01', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (15, N'021', N'Quận Bắc Từ Liêm', N'Quận', N'01', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (16, N'024', N'Thành phố Hà Giang', N'Thành phố', N'02', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (17, N'026', N'Huyện Đồng Văn', N'Huyện', N'02', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (18, N'027', N'Huyện Mèo Vạc', N'Huyện', N'02', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (19, N'028', N'Huyện Yên Minh', N'Huyện', N'02', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (20, N'029', N'Huyện Quản Bạ', N'Huyện', N'02', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (21, N'030', N'Huyện Vị Xuyên', N'Huyện', N'02', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (22, N'031', N'Huyện Bắc Mê', N'Huyện', N'02', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (23, N'032', N'Huyện Hoàng Su Phì', N'Huyện', N'02', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (24, N'033', N'Huyện Xín Mần', N'Huyện', N'02', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (25, N'034', N'Huyện Bắc Quang', N'Huyện', N'02', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (26, N'035', N'Huyện Quang Bình', N'Huyện', N'02', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (27, N'040', N'Thành phố Cao Bằng', N'Thành phố', N'04', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (28, N'042', N'Huyện Bảo Lâm', N'Huyện', N'04', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (29, N'043', N'Huyện Bảo Lạc', N'Huyện', N'04', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (30, N'045', N'Huyện Hà Quảng', N'Huyện', N'04', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (31, N'047', N'Huyện Trùng Khánh', N'Huyện', N'04', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (32, N'048', N'Huyện Hạ Lang', N'Huyện', N'04', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (33, N'049', N'Huyện Quảng Hòa', N'Huyện', N'04', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (34, N'051', N'Huyện Hoà An', N'Huyện', N'04', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (35, N'052', N'Huyện Nguyên Bình', N'Huyện', N'04', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (36, N'053', N'Huyện Thạch An', N'Huyện', N'04', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (37, N'058', N'Thành Phố Bắc Kạn', N'Thành phố', N'06', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (38, N'060', N'Huyện Pác Nặm', N'Huyện', N'06', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (39, N'061', N'Huyện Ba Bể', N'Huyện', N'06', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (40, N'062', N'Huyện Ngân Sơn', N'Huyện', N'06', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (41, N'063', N'Huyện Bạch Thông', N'Huyện', N'06', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (42, N'064', N'Huyện Chợ Đồn', N'Huyện', N'06', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (43, N'065', N'Huyện Chợ Mới', N'Huyện', N'06', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (44, N'066', N'Huyện Na Rì', N'Huyện', N'06', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (45, N'070', N'Thành phố Tuyên Quang', N'Thành phố', N'08', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (46, N'071', N'Huyện Lâm Bình', N'Huyện', N'08', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (47, N'072', N'Huyện Na Hang', N'Huyện', N'08', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (48, N'073', N'Huyện Chiêm Hóa', N'Huyện', N'08', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (49, N'074', N'Huyện Hàm Yên', N'Huyện', N'08', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (50, N'075', N'Huyện Yên Sơn', N'Huyện', N'08', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (51, N'076', N'Huyện Sơn Dương', N'Huyện', N'08', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (52, N'080', N'Thành phố Lào Cai', N'Thành phố', N'10', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (53, N'082', N'Huyện Bát Xát', N'Huyện', N'10', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (54, N'083', N'Huyện Mường Khương', N'Huyện', N'10', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (55, N'084', N'Huyện Si Ma Cai', N'Huyện', N'10', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (56, N'085', N'Huyện Bắc Hà', N'Huyện', N'10', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (57, N'086', N'Huyện Bảo Thắng', N'Huyện', N'10', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (58, N'087', N'Huyện Bảo Yên', N'Huyện', N'10', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (59, N'088', N'Thị xã Sa Pa', N'Thị xã', N'10', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (60, N'089', N'Huyện Văn Bàn', N'Huyện', N'10', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (61, N'094', N'Thành phố Điện Biên Phủ', N'Thành phố', N'11', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (62, N'095', N'Thị Xã Mường Lay', N'Thị xã', N'11', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (63, N'096', N'Huyện Mường Nhé', N'Huyện', N'11', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (64, N'097', N'Huyện Mường Chà', N'Huyện', N'11', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (65, N'098', N'Huyện Tủa Chùa', N'Huyện', N'11', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (66, N'099', N'Huyện Tuần Giáo', N'Huyện', N'11', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (67, N'100', N'Huyện Điện Biên', N'Huyện', N'11', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (68, N'101', N'Huyện Điện Biên Đông', N'Huyện', N'11', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (69, N'102', N'Huyện Mường Ảng', N'Huyện', N'11', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (70, N'103', N'Huyện Nậm Pồ', N'Huyện', N'11', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (71, N'105', N'Thành phố Lai Châu', N'Thành phố', N'12', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (72, N'106', N'Huyện Tam Đường', N'Huyện', N'12', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (73, N'107', N'Huyện Mường Tè', N'Huyện', N'12', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (74, N'108', N'Huyện Sìn Hồ', N'Huyện', N'12', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (75, N'109', N'Huyện Phong Thổ', N'Huyện', N'12', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (76, N'110', N'Huyện Than Uyên', N'Huyện', N'12', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (77, N'111', N'Huyện Tân Uyên', N'Huyện', N'12', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (78, N'112', N'Huyện Nậm Nhùn', N'Huyện', N'12', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (79, N'116', N'Thành phố Sơn La', N'Thành phố', N'14', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (80, N'118', N'Huyện Quỳnh Nhai', N'Huyện', N'14', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (81, N'119', N'Huyện Thuận Châu', N'Huyện', N'14', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (82, N'120', N'Huyện Mường La', N'Huyện', N'14', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (83, N'121', N'Huyện Bắc Yên', N'Huyện', N'14', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (84, N'122', N'Huyện Phù Yên', N'Huyện', N'14', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (85, N'123', N'Huyện Mộc Châu', N'Huyện', N'14', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (86, N'124', N'Huyện Yên Châu', N'Huyện', N'14', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (87, N'125', N'Huyện Mai Sơn', N'Huyện', N'14', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (88, N'126', N'Huyện Sông Mã', N'Huyện', N'14', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (89, N'127', N'Huyện Sốp Cộp', N'Huyện', N'14', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (90, N'128', N'Huyện Vân Hồ', N'Huyện', N'14', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (91, N'132', N'Thành phố Yên Bái', N'Thành phố', N'15', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (92, N'133', N'Thị xã Nghĩa Lộ', N'Thị xã', N'15', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (93, N'135', N'Huyện Lục Yên', N'Huyện', N'15', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (94, N'136', N'Huyện Văn Yên', N'Huyện', N'15', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (95, N'137', N'Huyện Mù Căng Chải', N'Huyện', N'15', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (96, N'138', N'Huyện Trấn Yên', N'Huyện', N'15', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (97, N'139', N'Huyện Trạm Tấu', N'Huyện', N'15', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (98, N'140', N'Huyện Văn Chấn', N'Huyện', N'15', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (99, N'141', N'Huyện Yên Bình', N'Huyện', N'15', 1, 0)
GO
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (100, N'148', N'Thành phố Hòa Bình', N'Thành phố', N'17', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (101, N'150', N'Huyện Đà Bắc', N'Huyện', N'17', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (102, N'152', N'Huyện Lương Sơn', N'Huyện', N'17', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (103, N'153', N'Huyện Kim Bôi', N'Huyện', N'17', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (104, N'154', N'Huyện Cao Phong', N'Huyện', N'17', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (105, N'155', N'Huyện Tân Lạc', N'Huyện', N'17', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (106, N'156', N'Huyện Mai Châu', N'Huyện', N'17', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (107, N'157', N'Huyện Lạc Sơn', N'Huyện', N'17', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (108, N'158', N'Huyện Yên Thủy', N'Huyện', N'17', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (109, N'159', N'Huyện Lạc Thủy', N'Huyện', N'17', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (110, N'164', N'Thành phố Thái Nguyên', N'Thành phố', N'19', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (111, N'165', N'Thành phố Sông Công', N'Thành phố', N'19', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (112, N'167', N'Huyện Định Hóa', N'Huyện', N'19', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (113, N'168', N'Huyện Phú Lương', N'Huyện', N'19', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (114, N'169', N'Huyện Đồng Hỷ', N'Huyện', N'19', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (115, N'170', N'Huyện Võ Nhai', N'Huyện', N'19', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (116, N'171', N'Huyện Đại Từ', N'Huyện', N'19', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (117, N'172', N'Thị xã Phổ Yên', N'Thị xã', N'19', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (118, N'173', N'Huyện Phú Bình', N'Huyện', N'19', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (119, N'178', N'Thành phố Lạng Sơn', N'Thành phố', N'20', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (120, N'180', N'Huyện Tràng Định', N'Huyện', N'20', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (121, N'181', N'Huyện Bình Gia', N'Huyện', N'20', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (122, N'182', N'Huyện Văn Lãng', N'Huyện', N'20', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (123, N'183', N'Huyện Cao Lộc', N'Huyện', N'20', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (124, N'184', N'Huyện Văn Quan', N'Huyện', N'20', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (125, N'185', N'Huyện Bắc Sơn', N'Huyện', N'20', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (126, N'186', N'Huyện Hữu Lũng', N'Huyện', N'20', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (127, N'187', N'Huyện Chi Lăng', N'Huyện', N'20', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (128, N'188', N'Huyện Lộc Bình', N'Huyện', N'20', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (129, N'189', N'Huyện Đình Lập', N'Huyện', N'20', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (130, N'193', N'Thành phố Hạ Long', N'Thành phố', N'22', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (131, N'194', N'Thành phố Móng Cái', N'Thành phố', N'22', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (132, N'195', N'Thành phố Cẩm Phả', N'Thành phố', N'22', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (133, N'196', N'Thành phố Uông Bí', N'Thành phố', N'22', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (134, N'198', N'Huyện Bình Liêu', N'Huyện', N'22', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (135, N'199', N'Huyện Tiên Yên', N'Huyện', N'22', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (136, N'200', N'Huyện Đầm Hà', N'Huyện', N'22', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (137, N'201', N'Huyện Hải Hà', N'Huyện', N'22', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (138, N'202', N'Huyện Ba Chẽ', N'Huyện', N'22', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (139, N'203', N'Huyện Vân Đồn', N'Huyện', N'22', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (140, N'205', N'Thị xã Đông Triều', N'Thị xã', N'22', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (141, N'206', N'Thị xã Quảng Yên', N'Thị xã', N'22', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (142, N'207', N'Huyện Cô Tô', N'Huyện', N'22', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (143, N'213', N'Thành phố Bắc Giang', N'Thành phố', N'24', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (144, N'215', N'Huyện Yên Thế', N'Huyện', N'24', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (145, N'216', N'Huyện Tân Yên', N'Huyện', N'24', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (146, N'217', N'Huyện Lạng Giang', N'Huyện', N'24', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (147, N'218', N'Huyện Lục Nam', N'Huyện', N'24', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (148, N'219', N'Huyện Lục Ngạn', N'Huyện', N'24', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (149, N'220', N'Huyện Sơn Động', N'Huyện', N'24', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (150, N'221', N'Huyện Yên Dũng', N'Huyện', N'24', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (151, N'222', N'Huyện Việt Yên', N'Huyện', N'24', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (152, N'223', N'Huyện Hiệp Hòa', N'Huyện', N'24', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (153, N'227', N'Thành phố Việt Trì', N'Thành phố', N'25', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (154, N'228', N'Thị xã Phú Thọ', N'Thị xã', N'25', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (155, N'230', N'Huyện Đoan Hùng', N'Huyện', N'25', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (156, N'231', N'Huyện Hạ Hoà', N'Huyện', N'25', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (157, N'232', N'Huyện Thanh Ba', N'Huyện', N'25', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (158, N'233', N'Huyện Phù Ninh', N'Huyện', N'25', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (159, N'234', N'Huyện Yên Lập', N'Huyện', N'25', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (160, N'235', N'Huyện Cẩm Khê', N'Huyện', N'25', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (161, N'236', N'Huyện Tam Nông', N'Huyện', N'25', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (162, N'237', N'Huyện Lâm Thao', N'Huyện', N'25', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (163, N'238', N'Huyện Thanh Sơn', N'Huyện', N'25', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (164, N'239', N'Huyện Thanh Thuỷ', N'Huyện', N'25', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (165, N'240', N'Huyện Tân Sơn', N'Huyện', N'25', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (166, N'243', N'Thành phố Vĩnh Yên', N'Thành phố', N'26', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (167, N'244', N'Thành phố Phúc Yên', N'Thành phố', N'26', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (168, N'246', N'Huyện Lập Thạch', N'Huyện', N'26', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (169, N'247', N'Huyện Tam Dương', N'Huyện', N'26', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (170, N'248', N'Huyện Tam Đảo', N'Huyện', N'26', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (171, N'249', N'Huyện Bình Xuyên', N'Huyện', N'26', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (172, N'250', N'Huyện Mê Linh', N'Huyện', N'01', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (173, N'251', N'Huyện Yên Lạc', N'Huyện', N'26', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (174, N'252', N'Huyện Vĩnh Tường', N'Huyện', N'26', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (175, N'253', N'Huyện Sông Lô', N'Huyện', N'26', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (176, N'256', N'Thành phố Bắc Ninh', N'Thành phố', N'27', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (177, N'258', N'Huyện Yên Phong', N'Huyện', N'27', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (178, N'259', N'Huyện Quế Võ', N'Huyện', N'27', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (179, N'260', N'Huyện Tiên Du', N'Huyện', N'27', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (180, N'261', N'Thị xã Từ Sơn', N'Thị xã', N'27', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (181, N'262', N'Huyện Thuận Thành', N'Huyện', N'27', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (182, N'263', N'Huyện Gia Bình', N'Huyện', N'27', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (183, N'264', N'Huyện Lương Tài', N'Huyện', N'27', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (184, N'268', N'Quận Hà Đông', N'Quận', N'01', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (185, N'269', N'Thị xã Sơn Tây', N'Thị xã', N'01', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (186, N'271', N'Huyện Ba Vì', N'Huyện', N'01', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (187, N'272', N'Huyện Phúc Thọ', N'Huyện', N'01', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (188, N'273', N'Huyện Đan Phượng', N'Huyện', N'01', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (189, N'274', N'Huyện Hoài Đức', N'Huyện', N'01', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (190, N'275', N'Huyện Quốc Oai', N'Huyện', N'01', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (191, N'276', N'Huyện Thạch Thất', N'Huyện', N'01', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (192, N'277', N'Huyện Chương Mỹ', N'Huyện', N'01', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (193, N'278', N'Huyện Thanh Oai', N'Huyện', N'01', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (194, N'279', N'Huyện Thường Tín', N'Huyện', N'01', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (195, N'280', N'Huyện Phú Xuyên', N'Huyện', N'01', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (196, N'281', N'Huyện Ứng Hòa', N'Huyện', N'01', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (197, N'282', N'Huyện Mỹ Đức', N'Huyện', N'01', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (198, N'288', N'Thành phố Hải Dương', N'Thành phố', N'30', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (199, N'290', N'Thành phố Chí Linh', N'Thành phố', N'30', 1, 0)
GO
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (200, N'291', N'Huyện Nam Sách', N'Huyện', N'30', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (201, N'292', N'Thị xã Kinh Môn', N'Thị xã', N'30', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (202, N'293', N'Huyện Kim Thành', N'Huyện', N'30', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (203, N'294', N'Huyện Thanh Hà', N'Huyện', N'30', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (204, N'295', N'Huyện Cẩm Giàng', N'Huyện', N'30', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (205, N'296', N'Huyện Bình Giang', N'Huyện', N'30', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (206, N'297', N'Huyện Gia Lộc', N'Huyện', N'30', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (207, N'298', N'Huyện Tứ Kỳ', N'Huyện', N'30', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (208, N'299', N'Huyện Ninh Giang', N'Huyện', N'30', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (209, N'300', N'Huyện Thanh Miện', N'Huyện', N'30', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (210, N'303', N'Quận Hồng Bàng', N'Quận', N'31', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (211, N'304', N'Quận Ngô Quyền', N'Quận', N'31', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (212, N'305', N'Quận Lê Chân', N'Quận', N'31', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (213, N'306', N'Quận Hải An', N'Quận', N'31', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (214, N'307', N'Quận Kiến An', N'Quận', N'31', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (215, N'308', N'Quận Đồ Sơn', N'Quận', N'31', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (216, N'309', N'Quận Dương Kinh', N'Quận', N'31', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (217, N'311', N'Huyện Thuỷ Nguyên', N'Huyện', N'31', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (218, N'312', N'Huyện An Dương', N'Huyện', N'31', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (219, N'313', N'Huyện An Lão', N'Huyện', N'31', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (220, N'314', N'Huyện Kiến Thuỵ', N'Huyện', N'31', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (221, N'315', N'Huyện Tiên Lãng', N'Huyện', N'31', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (222, N'316', N'Huyện Vĩnh Bảo', N'Huyện', N'31', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (223, N'317', N'Huyện Cát Hải', N'Huyện', N'31', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (224, N'318', N'Huyện Bạch Long Vĩ', N'Huyện', N'31', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (225, N'323', N'Thành phố Hưng Yên', N'Thành phố', N'33', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (226, N'325', N'Huyện Văn Lâm', N'Huyện', N'33', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (227, N'326', N'Huyện Văn Giang', N'Huyện', N'33', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (228, N'327', N'Huyện Yên Mỹ', N'Huyện', N'33', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (229, N'328', N'Thị xã Mỹ Hào', N'Thị xã', N'33', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (230, N'329', N'Huyện Ân Thi', N'Huyện', N'33', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (231, N'330', N'Huyện Khoái Châu', N'Huyện', N'33', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (232, N'331', N'Huyện Kim Động', N'Huyện', N'33', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (233, N'332', N'Huyện Tiên Lữ', N'Huyện', N'33', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (234, N'333', N'Huyện Phù Cừ', N'Huyện', N'33', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (235, N'336', N'Thành phố Thái Bình', N'Thành phố', N'34', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (236, N'338', N'Huyện Quỳnh Phụ', N'Huyện', N'34', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (237, N'339', N'Huyện Hưng Hà', N'Huyện', N'34', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (238, N'340', N'Huyện Đông Hưng', N'Huyện', N'34', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (239, N'341', N'Huyện Thái Thụy', N'Huyện', N'34', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (240, N'342', N'Huyện Tiền Hải', N'Huyện', N'34', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (241, N'343', N'Huyện Kiến Xương', N'Huyện', N'34', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (242, N'344', N'Huyện Vũ Thư', N'Huyện', N'34', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (243, N'347', N'Thành phố Phủ Lý', N'Thành phố', N'35', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (244, N'349', N'Thị xã Duy Tiên', N'Thị xã', N'35', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (245, N'350', N'Huyện Kim Bảng', N'Huyện', N'35', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (246, N'351', N'Huyện Thanh Liêm', N'Huyện', N'35', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (247, N'352', N'Huyện Bình Lục', N'Huyện', N'35', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (248, N'353', N'Huyện Lý Nhân', N'Huyện', N'35', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (249, N'356', N'Thành phố Nam Định', N'Thành phố', N'36', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (250, N'358', N'Huyện Mỹ Lộc', N'Huyện', N'36', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (251, N'359', N'Huyện Vụ Bản', N'Huyện', N'36', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (252, N'360', N'Huyện Ý Yên', N'Huyện', N'36', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (253, N'361', N'Huyện Nghĩa Hưng', N'Huyện', N'36', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (254, N'362', N'Huyện Nam Trực', N'Huyện', N'36', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (255, N'363', N'Huyện Trực Ninh', N'Huyện', N'36', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (256, N'364', N'Huyện Xuân Trường', N'Huyện', N'36', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (257, N'365', N'Huyện Giao Thủy', N'Huyện', N'36', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (258, N'366', N'Huyện Hải Hậu', N'Huyện', N'36', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (259, N'369', N'Thành phố Ninh Bình', N'Thành phố', N'37', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (260, N'370', N'Thành phố Tam Điệp', N'Thành phố', N'37', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (261, N'372', N'Huyện Nho Quan', N'Huyện', N'37', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (262, N'373', N'Huyện Gia Viễn', N'Huyện', N'37', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (263, N'374', N'Huyện Hoa Lư', N'Huyện', N'37', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (264, N'375', N'Huyện Yên Khánh', N'Huyện', N'37', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (265, N'376', N'Huyện Kim Sơn', N'Huyện', N'37', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (266, N'377', N'Huyện Yên Mô', N'Huyện', N'37', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (267, N'380', N'Thành phố Thanh Hóa', N'Thành phố', N'38', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (268, N'381', N'Thị xã Bỉm Sơn', N'Thị xã', N'38', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (269, N'382', N'Thành phố Sầm Sơn', N'Thành phố', N'38', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (270, N'384', N'Huyện Mường Lát', N'Huyện', N'38', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (271, N'385', N'Huyện Quan Hóa', N'Huyện', N'38', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (272, N'386', N'Huyện Bá Thước', N'Huyện', N'38', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (273, N'387', N'Huyện Quan Sơn', N'Huyện', N'38', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (274, N'388', N'Huyện Lang Chánh', N'Huyện', N'38', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (275, N'389', N'Huyện Ngọc Lặc', N'Huyện', N'38', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (276, N'390', N'Huyện Cẩm Thủy', N'Huyện', N'38', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (277, N'391', N'Huyện Thạch Thành', N'Huyện', N'38', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (278, N'392', N'Huyện Hà Trung', N'Huyện', N'38', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (279, N'393', N'Huyện Vĩnh Lộc', N'Huyện', N'38', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (280, N'394', N'Huyện Yên Định', N'Huyện', N'38', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (281, N'395', N'Huyện Thọ Xuân', N'Huyện', N'38', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (282, N'396', N'Huyện Thường Xuân', N'Huyện', N'38', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (283, N'397', N'Huyện Triệu Sơn', N'Huyện', N'38', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (284, N'398', N'Huyện Thiệu Hóa', N'Huyện', N'38', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (285, N'399', N'Huyện Hoằng Hóa', N'Huyện', N'38', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (286, N'400', N'Huyện Hậu Lộc', N'Huyện', N'38', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (287, N'401', N'Huyện Nga Sơn', N'Huyện', N'38', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (288, N'402', N'Huyện Như Xuân', N'Huyện', N'38', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (289, N'403', N'Huyện Như Thanh', N'Huyện', N'38', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (290, N'404', N'Huyện Nông Cống', N'Huyện', N'38', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (291, N'405', N'Huyện Đông Sơn', N'Huyện', N'38', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (292, N'406', N'Huyện Quảng Xương', N'Huyện', N'38', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (293, N'407', N'Thị xã Nghi Sơn', N'Thị xã', N'38', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (294, N'412', N'Thành phố Vinh', N'Thành phố', N'40', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (295, N'413', N'Thị xã Cửa Lò', N'Thị xã', N'40', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (296, N'414', N'Thị xã Thái Hoà', N'Thị xã', N'40', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (297, N'415', N'Huyện Quế Phong', N'Huyện', N'40', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (298, N'416', N'Huyện Quỳ Châu', N'Huyện', N'40', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (299, N'417', N'Huyện Kỳ Sơn', N'Huyện', N'40', 1, 0)
GO
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (300, N'418', N'Huyện Tương Dương', N'Huyện', N'40', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (301, N'419', N'Huyện Nghĩa Đàn', N'Huyện', N'40', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (302, N'420', N'Huyện Quỳ Hợp', N'Huyện', N'40', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (303, N'421', N'Huyện Quỳnh Lưu', N'Huyện', N'40', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (304, N'422', N'Huyện Con Cuông', N'Huyện', N'40', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (305, N'423', N'Huyện Tân Kỳ', N'Huyện', N'40', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (306, N'424', N'Huyện Anh Sơn', N'Huyện', N'40', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (307, N'425', N'Huyện Diễn Châu', N'Huyện', N'40', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (308, N'426', N'Huyện Yên Thành', N'Huyện', N'40', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (309, N'427', N'Huyện Đô Lương', N'Huyện', N'40', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (310, N'428', N'Huyện Thanh Chương', N'Huyện', N'40', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (311, N'429', N'Huyện Nghi Lộc', N'Huyện', N'40', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (312, N'430', N'Huyện Nam Đàn', N'Huyện', N'40', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (313, N'431', N'Huyện Hưng Nguyên', N'Huyện', N'40', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (314, N'432', N'Thị xã Hoàng Mai', N'Thị xã', N'40', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (315, N'436', N'Thành phố Hà Tĩnh', N'Thành phố', N'42', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (316, N'437', N'Thị xã Hồng Lĩnh', N'Thị xã', N'42', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (317, N'439', N'Huyện Hương Sơn', N'Huyện', N'42', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (318, N'440', N'Huyện Đức Thọ', N'Huyện', N'42', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (319, N'441', N'Huyện Vũ Quang', N'Huyện', N'42', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (320, N'442', N'Huyện Nghi Xuân', N'Huyện', N'42', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (321, N'443', N'Huyện Can Lộc', N'Huyện', N'42', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (322, N'444', N'Huyện Hương Khê', N'Huyện', N'42', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (323, N'445', N'Huyện Thạch Hà', N'Huyện', N'42', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (324, N'446', N'Huyện Cẩm Xuyên', N'Huyện', N'42', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (325, N'447', N'Huyện Kỳ Anh', N'Huyện', N'42', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (326, N'448', N'Huyện Lộc Hà', N'Huyện', N'42', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (327, N'449', N'Thị xã Kỳ Anh', N'Thị xã', N'42', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (328, N'450', N'Thành Phố Đồng Hới', N'Thành phố', N'44', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (329, N'452', N'Huyện Minh Hóa', N'Huyện', N'44', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (330, N'453', N'Huyện Tuyên Hóa', N'Huyện', N'44', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (331, N'454', N'Huyện Quảng Trạch', N'Huyện', N'44', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (332, N'455', N'Huyện Bố Trạch', N'Huyện', N'44', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (333, N'456', N'Huyện Quảng Ninh', N'Huyện', N'44', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (334, N'457', N'Huyện Lệ Thủy', N'Huyện', N'44', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (335, N'458', N'Thị xã Ba Đồn', N'Thị xã', N'44', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (336, N'461', N'Thành phố Đông Hà', N'Thành phố', N'45', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (337, N'462', N'Thị xã Quảng Trị', N'Thị xã', N'45', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (338, N'464', N'Huyện Vĩnh Linh', N'Huyện', N'45', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (339, N'465', N'Huyện Hướng Hóa', N'Huyện', N'45', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (340, N'466', N'Huyện Gio Linh', N'Huyện', N'45', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (341, N'467', N'Huyện Đa Krông', N'Huyện', N'45', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (342, N'468', N'Huyện Cam Lộ', N'Huyện', N'45', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (343, N'469', N'Huyện Triệu Phong', N'Huyện', N'45', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (344, N'470', N'Huyện Hải Lăng', N'Huyện', N'45', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (345, N'471', N'Huyện Cồn Cỏ', N'Huyện', N'45', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (346, N'474', N'Thành phố Huế', N'Thành phố', N'46', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (347, N'476', N'Huyện Phong Điền', N'Huyện', N'46', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (348, N'477', N'Huyện Quảng Điền', N'Huyện', N'46', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (349, N'478', N'Huyện Phú Vang', N'Huyện', N'46', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (350, N'479', N'Thị xã Hương Thủy', N'Thị xã', N'46', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (351, N'480', N'Thị xã Hương Trà', N'Thị xã', N'46', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (352, N'481', N'Huyện A Lưới', N'Huyện', N'46', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (353, N'482', N'Huyện Phú Lộc', N'Huyện', N'46', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (354, N'483', N'Huyện Nam Đông', N'Huyện', N'46', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (355, N'490', N'Quận Liên Chiểu', N'Quận', N'48', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (356, N'491', N'Quận Thanh Khê', N'Quận', N'48', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (357, N'492', N'Quận Hải Châu', N'Quận', N'48', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (358, N'493', N'Quận Sơn Trà', N'Quận', N'48', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (359, N'494', N'Quận Ngũ Hành Sơn', N'Quận', N'48', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (360, N'495', N'Quận Cẩm Lệ', N'Quận', N'48', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (361, N'497', N'Huyện Hòa Vang', N'Huyện', N'48', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (362, N'498', N'Huyện Hoàng Sa', N'Huyện', N'48', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (363, N'502', N'Thành phố Tam Kỳ', N'Thành phố', N'49', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (364, N'503', N'Thành phố Hội An', N'Thành phố', N'49', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (365, N'504', N'Huyện Tây Giang', N'Huyện', N'49', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (366, N'505', N'Huyện Đông Giang', N'Huyện', N'49', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (367, N'506', N'Huyện Đại Lộc', N'Huyện', N'49', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (368, N'507', N'Thị xã Điện Bàn', N'Thị xã', N'49', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (369, N'508', N'Huyện Duy Xuyên', N'Huyện', N'49', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (370, N'509', N'Huyện Quế Sơn', N'Huyện', N'49', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (371, N'510', N'Huyện Nam Giang', N'Huyện', N'49', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (372, N'511', N'Huyện Phước Sơn', N'Huyện', N'49', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (373, N'512', N'Huyện Hiệp Đức', N'Huyện', N'49', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (374, N'513', N'Huyện Thăng Bình', N'Huyện', N'49', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (375, N'514', N'Huyện Tiên Phước', N'Huyện', N'49', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (376, N'515', N'Huyện Bắc Trà My', N'Huyện', N'49', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (377, N'516', N'Huyện Nam Trà My', N'Huyện', N'49', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (378, N'517', N'Huyện Núi Thành', N'Huyện', N'49', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (379, N'518', N'Huyện Phú Ninh', N'Huyện', N'49', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (380, N'519', N'Huyện Nông Sơn', N'Huyện', N'49', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (381, N'522', N'Thành phố Quảng Ngãi', N'Thành phố', N'51', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (382, N'524', N'Huyện Bình Sơn', N'Huyện', N'51', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (383, N'525', N'Huyện Trà Bồng', N'Huyện', N'51', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (384, N'527', N'Huyện Sơn Tịnh', N'Huyện', N'51', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (385, N'528', N'Huyện Tư Nghĩa', N'Huyện', N'51', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (386, N'529', N'Huyện Sơn Hà', N'Huyện', N'51', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (387, N'530', N'Huyện Sơn Tây', N'Huyện', N'51', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (388, N'531', N'Huyện Minh Long', N'Huyện', N'51', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (389, N'532', N'Huyện Nghĩa Hành', N'Huyện', N'51', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (390, N'533', N'Huyện Mộ Đức', N'Huyện', N'51', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (391, N'534', N'Thị xã Đức Phổ', N'Thị xã', N'51', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (392, N'535', N'Huyện Ba Tơ', N'Huyện', N'51', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (393, N'536', N'Huyện Lý Sơn', N'Huyện', N'51', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (394, N'540', N'Thành phố Qui Nhơn', N'Thành phố', N'52', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (395, N'542', N'Huyện An Lão', N'Huyện', N'52', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (396, N'543', N'Thị xã Hoài Nhơn', N'Thị xã', N'52', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (397, N'544', N'Huyện Hoài Ân', N'Huyện', N'52', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (398, N'545', N'Huyện Phù Mỹ', N'Huyện', N'52', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (399, N'546', N'Huyện Vĩnh Thạnh', N'Huyện', N'52', 1, 0)
GO
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (400, N'547', N'Huyện Tây Sơn', N'Huyện', N'52', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (401, N'548', N'Huyện Phù Cát', N'Huyện', N'52', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (402, N'549', N'Thị xã An Nhơn', N'Thị xã', N'52', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (403, N'550', N'Huyện Tuy Phước', N'Huyện', N'52', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (404, N'551', N'Huyện Vân Canh', N'Huyện', N'52', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (405, N'555', N'Thành phố Tuy Hoà', N'Thành phố', N'54', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (406, N'557', N'Thị xã Sông Cầu', N'Thị xã', N'54', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (407, N'558', N'Huyện Đồng Xuân', N'Huyện', N'54', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (408, N'559', N'Huyện Tuy An', N'Huyện', N'54', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (409, N'560', N'Huyện Sơn Hòa', N'Huyện', N'54', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (410, N'561', N'Huyện Sông Hinh', N'Huyện', N'54', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (411, N'562', N'Huyện Tây Hoà', N'Huyện', N'54', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (412, N'563', N'Huyện Phú Hoà', N'Huyện', N'54', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (413, N'564', N'Thị xã Đông Hòa', N'Thị xã', N'54', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (414, N'568', N'Thành phố Nha Trang', N'Thành phố', N'56', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (415, N'569', N'Thành phố Cam Ranh', N'Thành phố', N'56', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (416, N'570', N'Huyện Cam Lâm', N'Huyện', N'56', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (417, N'571', N'Huyện Vạn Ninh', N'Huyện', N'56', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (418, N'572', N'Thị xã Ninh Hòa', N'Thị xã', N'56', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (419, N'573', N'Huyện Khánh Vĩnh', N'Huyện', N'56', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (420, N'574', N'Huyện Diên Khánh', N'Huyện', N'56', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (421, N'575', N'Huyện Khánh Sơn', N'Huyện', N'56', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (422, N'576', N'Huyện Trường Sa', N'Huyện', N'56', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (423, N'582', N'Thành phố Phan Rang-Tháp Chàm', N'Thành phố', N'58', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (424, N'584', N'Huyện Bác Ái', N'Huyện', N'58', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (425, N'585', N'Huyện Ninh Sơn', N'Huyện', N'58', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (426, N'586', N'Huyện Ninh Hải', N'Huyện', N'58', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (427, N'587', N'Huyện Ninh Phước', N'Huyện', N'58', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (428, N'588', N'Huyện Thuận Bắc', N'Huyện', N'58', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (429, N'589', N'Huyện Thuận Nam', N'Huyện', N'58', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (430, N'593', N'Thành phố Phan Thiết', N'Thành phố', N'60', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (431, N'594', N'Thị xã La Gi', N'Thị xã', N'60', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (432, N'595', N'Huyện Tuy Phong', N'Huyện', N'60', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (433, N'596', N'Huyện Bắc Bình', N'Huyện', N'60', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (434, N'597', N'Huyện Hàm Thuận Bắc', N'Huyện', N'60', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (435, N'598', N'Huyện Hàm Thuận Nam', N'Huyện', N'60', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (436, N'599', N'Huyện Tánh Linh', N'Huyện', N'60', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (437, N'600', N'Huyện Đức Linh', N'Huyện', N'60', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (438, N'601', N'Huyện Hàm Tân', N'Huyện', N'60', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (439, N'602', N'Huyện Phú Quí', N'Huyện', N'60', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (440, N'608', N'Thành phố Kon Tum', N'Thành phố', N'62', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (441, N'610', N'Huyện Đắk Glei', N'Huyện', N'62', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (442, N'611', N'Huyện Ngọc Hồi', N'Huyện', N'62', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (443, N'612', N'Huyện Đắk Tô', N'Huyện', N'62', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (444, N'613', N'Huyện Kon Plông', N'Huyện', N'62', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (445, N'614', N'Huyện Kon Rẫy', N'Huyện', N'62', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (446, N'615', N'Huyện Đắk Hà', N'Huyện', N'62', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (447, N'616', N'Huyện Sa Thầy', N'Huyện', N'62', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (448, N'617', N'Huyện Tu Mơ Rông', N'Huyện', N'62', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (449, N'618', N'Huyện Ia HDrai', N'Huyện', N'62', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (450, N'622', N'Thành phố Pleiku', N'Thành phố', N'64', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (451, N'623', N'Thị xã An Khê', N'Thị xã', N'64', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (452, N'624', N'Thị xã Ayun Pa', N'Thị xã', N'64', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (453, N'625', N'Huyện KBang', N'Huyện', N'64', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (454, N'626', N'Huyện Đăk Đoa', N'Huyện', N'64', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (455, N'627', N'Huyện Chư Păh', N'Huyện', N'64', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (456, N'628', N'Huyện Ia Grai', N'Huyện', N'64', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (457, N'629', N'Huyện Mang Yang', N'Huyện', N'64', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (458, N'630', N'Huyện Kông Chro', N'Huyện', N'64', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (459, N'631', N'Huyện Đức Cơ', N'Huyện', N'64', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (460, N'632', N'Huyện Chư Prông', N'Huyện', N'64', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (461, N'633', N'Huyện Chư Sê', N'Huyện', N'64', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (462, N'634', N'Huyện Đăk Pơ', N'Huyện', N'64', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (463, N'635', N'Huyện Ia Pa', N'Huyện', N'64', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (464, N'637', N'Huyện Krông Pa', N'Huyện', N'64', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (465, N'638', N'Huyện Phú Thiện', N'Huyện', N'64', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (466, N'639', N'Huyện Chư Pưh', N'Huyện', N'64', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (467, N'643', N'Thành phố Buôn Ma Thuột', N'Thành phố', N'66', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (468, N'644', N'Thị Xã Buôn Hồ', N'Thị xã', N'66', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (469, N'645', N'Huyện Ea H''leo', N'Huyện', N'66', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (470, N'646', N'Huyện Ea Súp', N'Huyện', N'66', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (471, N'647', N'Huyện Buôn Đôn', N'Huyện', N'66', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (472, N'648', N'Huyện Cư M''gar', N'Huyện', N'66', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (473, N'649', N'Huyện Krông Búk', N'Huyện', N'66', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (474, N'650', N'Huyện Krông Năng', N'Huyện', N'66', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (475, N'651', N'Huyện Ea Kar', N'Huyện', N'66', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (476, N'652', N'Huyện M''Đrắk', N'Huyện', N'66', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (477, N'653', N'Huyện Krông Bông', N'Huyện', N'66', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (478, N'654', N'Huyện Krông Pắc', N'Huyện', N'66', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (479, N'655', N'Huyện Krông A Na', N'Huyện', N'66', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (480, N'656', N'Huyện Lắk', N'Huyện', N'66', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (481, N'657', N'Huyện Cư Kuin', N'Huyện', N'66', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (482, N'660', N'Thành phố Gia Nghĩa', N'Thành phố', N'67', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (483, N'661', N'Huyện Đăk Glong', N'Huyện', N'67', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (484, N'662', N'Huyện Cư Jút', N'Huyện', N'67', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (485, N'663', N'Huyện Đắk Mil', N'Huyện', N'67', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (486, N'664', N'Huyện Krông Nô', N'Huyện', N'67', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (487, N'665', N'Huyện Đắk Song', N'Huyện', N'67', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (488, N'666', N'Huyện Đắk R''Lấp', N'Huyện', N'67', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (489, N'667', N'Huyện Tuy Đức', N'Huyện', N'67', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (490, N'672', N'Thành phố Đà Lạt', N'Thành phố', N'68', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (491, N'673', N'Thành phố Bảo Lộc', N'Thành phố', N'68', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (492, N'674', N'Huyện Đam Rông', N'Huyện', N'68', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (493, N'675', N'Huyện Lạc Dương', N'Huyện', N'68', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (494, N'676', N'Huyện Lâm Hà', N'Huyện', N'68', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (495, N'677', N'Huyện Đơn Dương', N'Huyện', N'68', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (496, N'678', N'Huyện Đức Trọng', N'Huyện', N'68', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (497, N'679', N'Huyện Di Linh', N'Huyện', N'68', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (498, N'680', N'Huyện Bảo Lâm', N'Huyện', N'68', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (499, N'681', N'Huyện Đạ Huoai', N'Huyện', N'68', 1, 0)
GO
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (500, N'682', N'Huyện Đạ Tẻh', N'Huyện', N'68', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (501, N'683', N'Huyện Cát Tiên', N'Huyện', N'68', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (502, N'688', N'Thị xã Phước Long', N'Thị xã', N'70', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (503, N'689', N'Thành phố Đồng Xoài', N'Thành phố', N'70', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (504, N'690', N'Thị xã Bình Long', N'Thị xã', N'70', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (505, N'691', N'Huyện Bù Gia Mập', N'Huyện', N'70', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (506, N'692', N'Huyện Lộc Ninh', N'Huyện', N'70', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (507, N'693', N'Huyện Bù Đốp', N'Huyện', N'70', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (508, N'694', N'Huyện Hớn Quản', N'Huyện', N'70', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (509, N'695', N'Huyện Đồng Phú', N'Huyện', N'70', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (510, N'696', N'Huyện Bù Đăng', N'Huyện', N'70', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (511, N'697', N'Huyện Chơn Thành', N'Huyện', N'70', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (512, N'698', N'Huyện Phú Riềng', N'Huyện', N'70', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (513, N'703', N'Thành phố Tây Ninh', N'Thành phố', N'72', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (514, N'705', N'Huyện Tân Biên', N'Huyện', N'72', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (515, N'706', N'Huyện Tân Châu', N'Huyện', N'72', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (516, N'707', N'Huyện Dương Minh Châu', N'Huyện', N'72', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (517, N'708', N'Huyện Châu Thành', N'Huyện', N'72', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (518, N'709', N'Thị xã Hòa Thành', N'Thị xã', N'72', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (519, N'710', N'Huyện Gò Dầu', N'Huyện', N'72', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (520, N'711', N'Huyện Bến Cầu', N'Huyện', N'72', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (521, N'712', N'Thị xã Trảng Bàng', N'Thị xã', N'72', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (522, N'718', N'Thành phố Thủ Dầu Một', N'Thành phố', N'74', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (523, N'719', N'Huyện Bàu Bàng', N'Huyện', N'74', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (524, N'720', N'Huyện Dầu Tiếng', N'Huyện', N'74', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (525, N'721', N'Thị xã Bến Cát', N'Thị xã', N'74', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (526, N'722', N'Huyện Phú Giáo', N'Huyện', N'74', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (527, N'723', N'Thị xã Tân Uyên', N'Thị xã', N'74', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (528, N'724', N'Thành phố Dĩ An', N'Thành phố', N'74', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (529, N'725', N'Thành phố Thuận An', N'Thành phố', N'74', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (530, N'726', N'Huyện Bắc Tân Uyên', N'Huyện', N'74', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (531, N'731', N'Thành phố Biên Hòa', N'Thành phố', N'75', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (532, N'732', N'Thành phố Long Khánh', N'Thành phố', N'75', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (533, N'734', N'Huyện Tân Phú', N'Huyện', N'75', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (534, N'735', N'Huyện Vĩnh Cửu', N'Huyện', N'75', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (535, N'736', N'Huyện Định Quán', N'Huyện', N'75', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (536, N'737', N'Huyện Trảng Bom', N'Huyện', N'75', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (537, N'738', N'Huyện Thống Nhất', N'Huyện', N'75', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (538, N'739', N'Huyện Cẩm Mỹ', N'Huyện', N'75', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (539, N'740', N'Huyện Long Thành', N'Huyện', N'75', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (540, N'741', N'Huyện Xuân Lộc', N'Huyện', N'75', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (541, N'742', N'Huyện Nhơn Trạch', N'Huyện', N'75', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (542, N'747', N'Thành phố Vũng Tàu', N'Thành phố', N'77', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (543, N'748', N'Thành phố Bà Rịa', N'Thành phố', N'77', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (544, N'750', N'Huyện Châu Đức', N'Huyện', N'77', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (545, N'751', N'Huyện Xuyên Mộc', N'Huyện', N'77', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (546, N'752', N'Huyện Long Điền', N'Huyện', N'77', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (547, N'753', N'Huyện Đất Đỏ', N'Huyện', N'77', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (548, N'754', N'Thị xã Phú Mỹ', N'Thị xã', N'77', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (549, N'755', N'Huyện Côn Đảo', N'Huyện', N'77', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (550, N'760', N'Quận 1', N'Quận', N'79', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (551, N'761', N'Quận 12', N'Quận', N'79', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (552, N'762', N'Quận Thủ Đức', N'Quận', N'79', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (553, N'763', N'Quận 9', N'Quận', N'79', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (554, N'764', N'Quận Gò Vấp', N'Quận', N'79', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (555, N'765', N'Quận Bình Thạnh', N'Quận', N'79', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (556, N'766', N'Quận Tân Bình', N'Quận', N'79', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (557, N'767', N'Quận Tân Phú', N'Quận', N'79', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (558, N'768', N'Quận Phú Nhuận', N'Quận', N'79', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (559, N'769', N'Quận 2', N'Quận', N'79', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (560, N'770', N'Quận 3', N'Quận', N'79', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (561, N'771', N'Quận 10', N'Quận', N'79', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (562, N'772', N'Quận 11', N'Quận', N'79', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (563, N'773', N'Quận 4', N'Quận', N'79', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (564, N'774', N'Quận 5', N'Quận', N'79', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (565, N'775', N'Quận 6', N'Quận', N'79', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (566, N'776', N'Quận 8', N'Quận', N'79', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (567, N'777', N'Quận Bình Tân', N'Quận', N'79', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (568, N'778', N'Quận 7', N'Quận', N'79', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (569, N'783', N'Huyện Củ Chi', N'Huyện', N'79', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (570, N'784', N'Huyện Hóc Môn', N'Huyện', N'79', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (571, N'785', N'Huyện Bình Chánh', N'Huyện', N'79', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (572, N'786', N'Huyện Nhà Bè', N'Huyện', N'79', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (573, N'787', N'Huyện Cần Giờ', N'Huyện', N'79', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (574, N'794', N'Thành phố Tân An', N'Thành phố', N'80', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (575, N'795', N'Thị xã Kiến Tường', N'Thị xã', N'80', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (576, N'796', N'Huyện Tân Hưng', N'Huyện', N'80', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (577, N'797', N'Huyện Vĩnh Hưng', N'Huyện', N'80', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (578, N'798', N'Huyện Mộc Hóa', N'Huyện', N'80', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (579, N'799', N'Huyện Tân Thạnh', N'Huyện', N'80', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (580, N'800', N'Huyện Thạnh Hóa', N'Huyện', N'80', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (581, N'801', N'Huyện Đức Huệ', N'Huyện', N'80', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (582, N'802', N'Huyện Đức Hòa', N'Huyện', N'80', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (583, N'803', N'Huyện Bến Lức', N'Huyện', N'80', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (584, N'804', N'Huyện Thủ Thừa', N'Huyện', N'80', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (585, N'805', N'Huyện Tân Trụ', N'Huyện', N'80', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (586, N'806', N'Huyện Cần Đước', N'Huyện', N'80', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (587, N'807', N'Huyện Cần Giuộc', N'Huyện', N'80', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (588, N'808', N'Huyện Châu Thành', N'Huyện', N'80', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (589, N'815', N'Thành phố Mỹ Tho', N'Thành phố', N'82', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (590, N'816', N'Thị xã Gò Công', N'Thị xã', N'82', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (591, N'817', N'Thị xã Cai Lậy', N'Thị xã', N'82', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (592, N'818', N'Huyện Tân Phước', N'Huyện', N'82', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (593, N'819', N'Huyện Cái Bè', N'Huyện', N'82', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (594, N'820', N'Huyện Cai Lậy', N'Huyện', N'82', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (595, N'821', N'Huyện Châu Thành', N'Huyện', N'82', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (596, N'822', N'Huyện Chợ Gạo', N'Huyện', N'82', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (597, N'823', N'Huyện Gò Công Tây', N'Huyện', N'82', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (598, N'824', N'Huyện Gò Công Đông', N'Huyện', N'82', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (599, N'825', N'Huyện Tân Phú Đông', N'Huyện', N'82', 1, 0)
GO
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (600, N'829', N'Thành phố Bến Tre', N'Thành phố', N'83', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (601, N'831', N'Huyện Châu Thành', N'Huyện', N'83', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (602, N'832', N'Huyện Chợ Lách', N'Huyện', N'83', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (603, N'833', N'Huyện Mỏ Cày Nam', N'Huyện', N'83', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (604, N'834', N'Huyện Giồng Trôm', N'Huyện', N'83', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (605, N'835', N'Huyện Bình Đại', N'Huyện', N'83', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (606, N'836', N'Huyện Ba Tri', N'Huyện', N'83', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (607, N'837', N'Huyện Thạnh Phú', N'Huyện', N'83', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (608, N'838', N'Huyện Mỏ Cày Bắc', N'Huyện', N'83', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (609, N'842', N'Thành phố Trà Vinh', N'Thành phố', N'84', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (610, N'844', N'Huyện Càng Long', N'Huyện', N'84', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (611, N'845', N'Huyện Cầu Kè', N'Huyện', N'84', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (612, N'846', N'Huyện Tiểu Cần', N'Huyện', N'84', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (613, N'847', N'Huyện Châu Thành', N'Huyện', N'84', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (614, N'848', N'Huyện Cầu Ngang', N'Huyện', N'84', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (615, N'849', N'Huyện Trà Cú', N'Huyện', N'84', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (616, N'850', N'Huyện Duyên Hải', N'Huyện', N'84', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (617, N'851', N'Thị xã Duyên Hải', N'Thị xã', N'84', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (618, N'855', N'Thành phố Vĩnh Long', N'Thành phố', N'86', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (619, N'857', N'Huyện Long Hồ', N'Huyện', N'86', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (620, N'858', N'Huyện Mang Thít', N'Huyện', N'86', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (621, N'859', N'Huyện  Vũng Liêm', N'Huyện', N'86', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (622, N'860', N'Huyện Tam Bình', N'Huyện', N'86', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (623, N'861', N'Thị xã Bình Minh', N'Thị xã', N'86', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (624, N'862', N'Huyện Trà Ôn', N'Huyện', N'86', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (625, N'863', N'Huyện Bình Tân', N'Huyện', N'86', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (626, N'866', N'Thành phố Cao Lãnh', N'Thành phố', N'87', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (627, N'867', N'Thành phố Sa Đéc', N'Thành phố', N'87', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (628, N'868', N'Thị xã Hồng Ngự', N'Thị xã', N'87', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (629, N'869', N'Huyện Tân Hồng', N'Huyện', N'87', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (630, N'870', N'Huyện Hồng Ngự', N'Huyện', N'87', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (631, N'871', N'Huyện Tam Nông', N'Huyện', N'87', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (632, N'872', N'Huyện Tháp Mười', N'Huyện', N'87', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (633, N'873', N'Huyện Cao Lãnh', N'Huyện', N'87', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (634, N'874', N'Huyện Thanh Bình', N'Huyện', N'87', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (635, N'875', N'Huyện Lấp Vò', N'Huyện', N'87', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (636, N'876', N'Huyện Lai Vung', N'Huyện', N'87', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (637, N'877', N'Huyện Châu Thành', N'Huyện', N'87', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (638, N'883', N'Thành phố Long Xuyên', N'Thành phố', N'89', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (639, N'884', N'Thành phố Châu Đốc', N'Thành phố', N'89', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (640, N'886', N'Huyện An Phú', N'Huyện', N'89', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (641, N'887', N'Thị xã Tân Châu', N'Thị xã', N'89', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (642, N'888', N'Huyện Phú Tân', N'Huyện', N'89', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (643, N'889', N'Huyện Châu Phú', N'Huyện', N'89', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (644, N'890', N'Huyện Tịnh Biên', N'Huyện', N'89', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (645, N'891', N'Huyện Tri Tôn', N'Huyện', N'89', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (646, N'892', N'Huyện Châu Thành', N'Huyện', N'89', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (647, N'893', N'Huyện Chợ Mới', N'Huyện', N'89', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (648, N'894', N'Huyện Thoại Sơn', N'Huyện', N'89', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (649, N'899', N'Thành phố Rạch Giá', N'Thành phố', N'91', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (650, N'900', N'Thành phố Hà Tiên', N'Thành phố', N'91', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (651, N'902', N'Huyện Kiên Lương', N'Huyện', N'91', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (652, N'903', N'Huyện Hòn Đất', N'Huyện', N'91', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (653, N'904', N'Huyện Tân Hiệp', N'Huyện', N'91', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (654, N'905', N'Huyện Châu Thành', N'Huyện', N'91', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (655, N'906', N'Huyện Giồng Riềng', N'Huyện', N'91', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (656, N'907', N'Huyện Gò Quao', N'Huyện', N'91', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (657, N'908', N'Huyện An Biên', N'Huyện', N'91', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (658, N'909', N'Huyện An Minh', N'Huyện', N'91', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (659, N'910', N'Huyện Vĩnh Thuận', N'Huyện', N'91', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (660, N'911', N'Huyện Phú Quốc', N'Huyện', N'91', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (661, N'912', N'Huyện Kiên Hải', N'Huyện', N'91', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (662, N'913', N'Huyện U Minh Thượng', N'Huyện', N'91', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (663, N'914', N'Huyện Giang Thành', N'Huyện', N'91', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (664, N'916', N'Quận Ninh Kiều', N'Quận', N'92', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (665, N'917', N'Quận Ô Môn', N'Quận', N'92', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (666, N'918', N'Quận Bình Thuỷ', N'Quận', N'92', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (667, N'919', N'Quận Cái Răng', N'Quận', N'92', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (668, N'923', N'Quận Thốt Nốt', N'Quận', N'92', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (669, N'924', N'Huyện Vĩnh Thạnh', N'Huyện', N'92', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (670, N'925', N'Huyện Cờ Đỏ', N'Huyện', N'92', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (671, N'926', N'Huyện Phong Điền', N'Huyện', N'92', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (672, N'927', N'Huyện Thới Lai', N'Huyện', N'92', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (673, N'930', N'Thành phố Vị Thanh', N'Thành phố', N'93', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (674, N'931', N'Thành phố Ngã Bảy', N'Thành phố', N'93', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (675, N'932', N'Huyện Châu Thành A', N'Huyện', N'93', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (676, N'933', N'Huyện Châu Thành', N'Huyện', N'93', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (677, N'934', N'Huyện Phụng Hiệp', N'Huyện', N'93', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (678, N'935', N'Huyện Vị Thuỷ', N'Huyện', N'93', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (679, N'936', N'Huyện Long Mỹ', N'Huyện', N'93', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (680, N'937', N'Thị xã Long Mỹ', N'Thị xã', N'93', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (681, N'941', N'Thành phố Sóc Trăng', N'Thành phố', N'94', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (682, N'942', N'Huyện Châu Thành', N'Huyện', N'94', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (683, N'943', N'Huyện Kế Sách', N'Huyện', N'94', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (684, N'944', N'Huyện Mỹ Tú', N'Huyện', N'94', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (685, N'945', N'Huyện Cù Lao Dung', N'Huyện', N'94', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (686, N'946', N'Huyện Long Phú', N'Huyện', N'94', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (687, N'947', N'Huyện Mỹ Xuyên', N'Huyện', N'94', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (688, N'948', N'Thị xã Ngã Năm', N'Thị xã', N'94', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (689, N'949', N'Huyện Thạnh Trị', N'Huyện', N'94', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (690, N'950', N'Thị xã Vĩnh Châu', N'Thị xã', N'94', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (691, N'951', N'Huyện Trần Đề', N'Huyện', N'94', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (692, N'954', N'Thành phố Bạc Liêu', N'Thành phố', N'95', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (693, N'956', N'Huyện Hồng Dân', N'Huyện', N'95', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (694, N'957', N'Huyện Phước Long', N'Huyện', N'95', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (695, N'958', N'Huyện Vĩnh Lợi', N'Huyện', N'95', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (696, N'959', N'Thị xã Giá Rai', N'Thị xã', N'95', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (697, N'960', N'Huyện Đông Hải', N'Huyện', N'95', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (698, N'961', N'Huyện Hoà Bình', N'Huyện', N'95', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (699, N'964', N'Thành phố Cà Mau', N'Thành phố', N'96', 1, 0)
GO
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (700, N'966', N'Huyện U Minh', N'Huyện', N'96', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (701, N'967', N'Huyện Thới Bình', N'Huyện', N'96', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (702, N'968', N'Huyện Trần Văn Thời', N'Huyện', N'96', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (703, N'969', N'Huyện Cái Nước', N'Huyện', N'96', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (704, N'970', N'Huyện Đầm Dơi', N'Huyện', N'96', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (705, N'971', N'Huyện Năm Căn', N'Huyện', N'96', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (706, N'972', N'Huyện Phú Tân', N'Huyện', N'96', 1, 0)
INSERT [dbo].[District] ([Stt], [ID], [Name], [Type], [ProvinceID], [Status], [IsDelete]) VALUES (707, N'973', N'Huyện Ngọc Hiển', N'Huyện', N'96', 1, 0)
SET IDENTITY_INSERT [dbo].[District] OFF
GO
SET IDENTITY_INSERT [dbo].[Footer] ON 

INSERT [dbo].[Footer] ([ID], [Name], [Image], [Description], [Position], [Status], [CreatedDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsDelete]) VALUES (1, N'VẬN CHUYỂN', N'/Upload/Image/20210427182949truck.png', N'Luôn Luôn Nhanh', 4, 1, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Footer] ([ID], [Name], [Image], [Description], [Position], [Status], [CreatedDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsDelete]) VALUES (2, N'GIÁ THÀNH', N'/Upload/Image/20210427182838price.png', N'Luôn Cạnh Tranh', 2, 1, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Footer] ([ID], [Name], [Image], [Description], [Position], [Status], [CreatedDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsDelete]) VALUES (3, N'THANH TOÁN', N'/Upload/Image/20210402145137Screenshot (2).png', N'Luôn An Toàn', 5, 1, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Footer] ([ID], [Name], [Image], [Description], [Position], [Status], [CreatedDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsDelete]) VALUES (4, N'CHẤT LƯỢNG', N'/Upload/Image/20210427182846achieve.png', N'Luôn Cao Cấp', 1, 1, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Footer] ([ID], [Name], [Image], [Description], [Position], [Status], [CreatedDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsDelete]) VALUES (5, N'sang', N'/Upload/Image/20210402145137Screenshot (2).png', N'ảnh iphone 12 Pro Max', 5, 0, CAST(N'2021-04-10T16:20:35.467' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[Footer] ([ID], [Name], [Image], [Description], [Position], [Status], [CreatedDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsDelete]) VALUES (6, N'sang', N'/Upload/Image/20210413165422anhnen.jpg', N'ảnh iphone 12 Pro Max', 2, 1, CAST(N'2021-04-10T16:47:09.163' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[Footer] ([ID], [Name], [Image], [Description], [Position], [Status], [CreatedDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsDelete]) VALUES (7, N'sang', NULL, NULL, NULL, 1, CAST(N'2021-04-27T18:32:25.437' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[Footer] ([ID], [Name], [Image], [Description], [Position], [Status], [CreatedDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsDelete]) VALUES (8, N'sang', NULL, NULL, NULL, 1, CAST(N'2021-04-27T18:32:46.233' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[Footer] ([ID], [Name], [Image], [Description], [Position], [Status], [CreatedDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsDelete]) VALUES (9, N'sang', NULL, NULL, NULL, 1, CAST(N'2021-04-27T18:39:44.833' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[Footer] ([ID], [Name], [Image], [Description], [Position], [Status], [CreatedDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsDelete]) VALUES (10, N'HỖ TRỢ', N'/Upload/Image/20210427182851clock.png', N'Luôn Sẵn Sàng', 3, 1, CAST(N'2021-04-27T18:41:46.753' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[Footer] ([ID], [Name], [Image], [Description], [Position], [Status], [CreatedDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsDelete]) VALUES (11, N'DFD', NULL, NULL, NULL, 1, CAST(N'2021-04-27T18:46:06.873' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[Footer] ([ID], [Name], [Image], [Description], [Position], [Status], [CreatedDate], [CreatedBy], [UpdateDate], [UpdateBy], [IsDelete]) VALUES (12, N'sang', N'/Upload/Image/20210413224035thumb_IP12Pro_3.jpg', N'ảnh iphone 12 Pro Max', 0, 1, CAST(N'2021-05-11T21:50:52.577' AS DateTime), NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[Footer] OFF
GO
SET IDENTITY_INSERT [dbo].[ImageInPage] ON 

INSERT [dbo].[ImageInPage] ([ID], [Name], [Image], [Title], [LocationID], [Position], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (1, N'sang', N'/Upload/Image/20210402145137Screenshot (2).png', NULL, 4, 1, 1, CAST(N'2021-04-11T01:22:24.993' AS DateTime), N'Nguyễn Sáng', NULL, N'Nguyễn Sáng', 1)
INSERT [dbo].[ImageInPage] ([ID], [Name], [Image], [Title], [LocationID], [Position], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (2, N'Image1', N'/Upload/Image/20210416141155san-pham-hot-ip-mini.png', NULL, 4, 0, 1, CAST(N'2021-04-13T00:09:20.487' AS DateTime), N'Nguyễn Sáng', CAST(N'2021-04-16T14:12:00.187' AS DateTime), N'Nguyễn Sáng', 0)
INSERT [dbo].[ImageInPage] ([ID], [Name], [Image], [Title], [LocationID], [Position], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (3, N'Image2', N'/Upload/Image/20210416141326san-pham-hot-apple-watch.png', NULL, 4, 1, 1, CAST(N'2021-04-16T14:13:31.843' AS DateTime), N'Nguyễn Sáng', NULL, N'Nguyễn Sáng', 0)
INSERT [dbo].[ImageInPage] ([ID], [Name], [Image], [Title], [LocationID], [Position], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (4, N'Image3', N'/Upload/Image/20210416141354san-pham-hot-8290.png', NULL, 4, 2, 1, CAST(N'2021-04-16T14:13:59.613' AS DateTime), N'Nguyễn Sáng', CAST(N'2021-04-16T16:35:14.153' AS DateTime), N'Nguyễn Sáng', 0)
INSERT [dbo].[ImageInPage] ([ID], [Name], [Image], [Title], [LocationID], [Position], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (5, N'Image4', N'/Upload/Image/202104161553162_1.jpg', NULL, 4, 3, 1, CAST(N'2021-04-16T15:53:23.870' AS DateTime), N'Nguyễn Sáng', CAST(N'2021-04-16T16:35:23.750' AS DateTime), N'Nguyễn Sáng', 0)
INSERT [dbo].[ImageInPage] ([ID], [Name], [Image], [Title], [LocationID], [Position], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (6, N'Image5', N'/Upload/Image/202104161553492_2.jpg', NULL, 4, 4, 1, CAST(N'2021-04-16T15:53:55.617' AS DateTime), N'Nguyễn Sáng', CAST(N'2021-04-16T16:35:29.297' AS DateTime), N'Nguyễn Sáng', 0)
INSERT [dbo].[ImageInPage] ([ID], [Name], [Image], [Title], [LocationID], [Position], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (7, N'Khuyễn Mãi', N'/Upload/Image/20210503164318banner-chuyen-muc.png', NULL, 6, 0, 1, CAST(N'2021-05-03T16:43:23.420' AS DateTime), N'Nguyễn Sáng', NULL, N'Nguyễn Sáng', 0)
INSERT [dbo].[ImageInPage] ([ID], [Name], [Image], [Title], [LocationID], [Position], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (8, N'Image6', N'/Upload/Image/20210503164624realme-c20.jpg', NULL, 4, 5, 1, CAST(N'2021-05-03T16:46:28.593' AS DateTime), N'Nguyễn Sáng', NULL, N'Nguyễn Sáng', 0)
SET IDENTITY_INSERT [dbo].[ImageInPage] OFF
GO
SET IDENTITY_INSERT [dbo].[MasterData] ON 

INSERT [dbo].[MasterData] ([ID], [Name], [ParentID], [Position], [Status]) VALUES (1, N'Trang hiển thị', 0, NULL, 1)
INSERT [dbo].[MasterData] ([ID], [Name], [ParentID], [Position], [Status]) VALUES (2, N'Màu sắc', 0, NULL, 1)
INSERT [dbo].[MasterData] ([ID], [Name], [ParentID], [Position], [Status]) VALUES (3, N'Thương hiệu', 0, NULL, 1)
INSERT [dbo].[MasterData] ([ID], [Name], [ParentID], [Position], [Status]) VALUES (4, N'Trang chủ', 1, NULL, 1)
INSERT [dbo].[MasterData] ([ID], [Name], [ParentID], [Position], [Status]) VALUES (5, N'Tin tức', 1, NULL, 1)
INSERT [dbo].[MasterData] ([ID], [Name], [ParentID], [Position], [Status]) VALUES (6, N'Sản phẩm', 1, NULL, 1)
INSERT [dbo].[MasterData] ([ID], [Name], [ParentID], [Position], [Status]) VALUES (7, N'Chi tiết tin tức', 1, NULL, 1)
INSERT [dbo].[MasterData] ([ID], [Name], [ParentID], [Position], [Status]) VALUES (8, N'Chi tiết sản phẩm', 1, NULL, 1)
INSERT [dbo].[MasterData] ([ID], [Name], [ParentID], [Position], [Status]) VALUES (9, N'Chính sách', 1, NULL, 1)
INSERT [dbo].[MasterData] ([ID], [Name], [ParentID], [Position], [Status]) VALUES (12, N'Đen', 2, NULL, 1)
INSERT [dbo].[MasterData] ([ID], [Name], [ParentID], [Position], [Status]) VALUES (13, N'Apple', 3, 5, 1)
INSERT [dbo].[MasterData] ([ID], [Name], [ParentID], [Position], [Status]) VALUES (15, N'Vsmart', 3, 1, 1)
INSERT [dbo].[MasterData] ([ID], [Name], [ParentID], [Position], [Status]) VALUES (16, N'Samsung', 3, 2, 1)
INSERT [dbo].[MasterData] ([ID], [Name], [ParentID], [Position], [Status]) VALUES (17, N'Yellow', 2, 1, 1)
INSERT [dbo].[MasterData] ([ID], [Name], [ParentID], [Position], [Status]) VALUES (18, N'white', 2, 2, 1)
SET IDENTITY_INSERT [dbo].[MasterData] OFF
GO
SET IDENTITY_INSERT [dbo].[Menu] ON 

INSERT [dbo].[Menu] ([ID], [Name], [Slug], [ParentID], [Position], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (1, NULL, NULL, 0, NULL, NULL, NULL, NULL, CAST(N'2021-04-02T22:18:08.163' AS DateTime), NULL, 1)
INSERT [dbo].[Menu] ([ID], [Name], [Slug], [ParentID], [Position], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (2, N'Tin tức', N'/', 0, 1, 1, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Menu] ([ID], [Name], [Slug], [ParentID], [Position], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (3, N'Điện thoại', N'dien-thoai', 0, 1, 1, CAST(N'2021-04-02T22:12:48.693' AS DateTime), N'Nguyễn Sáng', CAST(N'2021-04-13T22:13:01.420' AS DateTime), NULL, 0)
INSERT [dbo].[Menu] ([ID], [Name], [Slug], [ParentID], [Position], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (4, N'trang chủ', N'trang chủ', 0, 0, 1, CAST(N'2021-04-02T22:18:40.620' AS DateTime), N'Nguyễn Sáng', CAST(N'2021-04-02T22:21:47.667' AS DateTime), N'Nguyễn Sáng', 1)
INSERT [dbo].[Menu] ([ID], [Name], [Slug], [ParentID], [Position], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (5, N'Trang chủ', N'trang-chu', 0, 0, 1, CAST(N'2021-04-02T22:22:08.457' AS DateTime), N'Nguyễn Sáng', CAST(N'2021-04-13T22:10:04.290' AS DateTime), NULL, 0)
INSERT [dbo].[Menu] ([ID], [Name], [Slug], [ParentID], [Position], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (6, N'tin hay', N'tiin-hay', 5, 1, 1, CAST(N'2021-04-02T22:31:36.147' AS DateTime), N'Nguyễn Sáng', NULL, N'Nguyễn Sáng', 1)
INSERT [dbo].[Menu] ([ID], [Name], [Slug], [ParentID], [Position], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (7, N'Phụ Kiện', N'phu-kien', 0, 2, 1, CAST(N'2021-04-04T14:00:28.903' AS DateTime), N'Nguyễn Sáng', CAST(N'2021-04-13T22:13:43.023' AS DateTime), NULL, 0)
INSERT [dbo].[Menu] ([ID], [Name], [Slug], [ParentID], [Position], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (8, N'Tin Tức', N'tin-tuc', 0, 3, 1, CAST(N'2021-04-13T22:14:18.403' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[Menu] ([ID], [Name], [Slug], [ParentID], [Position], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (9, N'Chính Sách', N'chinh-sach', 0, 4, 1, CAST(N'2021-04-13T22:14:42.267' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[Menu] ([ID], [Name], [Slug], [ParentID], [Position], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (10, N'Tin hot', N'tin-tuc', 8, 0, 1, CAST(N'2021-04-25T12:43:29.623' AS DateTime), N'Nguyễn Sáng', CAST(N'2021-04-25T12:46:31.130' AS DateTime), N'Nguyễn Sáng', 0)
INSERT [dbo].[Menu] ([ID], [Name], [Slug], [ParentID], [Position], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (11, N'2', N'1', 0, 3, 1, CAST(N'2021-05-11T21:47:46.627' AS DateTime), N'Nguyễn Sáng', NULL, N'Nguyễn Sáng', 1)
SET IDENTITY_INSERT [dbo].[Menu] OFF
GO
SET IDENTITY_INSERT [dbo].[New] ON 

INSERT [dbo].[New] ([ID], [Name], [Image], [Slug], [Views], [Description], [Content], [ParentID], [Position], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdateBy], [IsDelete]) VALUES (1, N'Tin hot', NULL, N'tin-hot', NULL, N'a', NULL, 0, 0, 1, NULL, NULL, CAST(N'2021-04-25T14:00:29.967' AS DateTime), N'Nguyễn Sáng', 0)
INSERT [dbo].[New] ([ID], [Name], [Image], [Slug], [Views], [Description], [Content], [ParentID], [Position], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdateBy], [IsDelete]) VALUES (2, N'sang', N'/Upload/Image/20210402145137Screenshot (2).png', N'sang', 0, N'dfsdfdsf', N'<p>dfdsfdsfsdf</p>
', 0, NULL, 1, CAST(N'2021-04-10T22:44:07.817' AS DateTime), N'Nguyễn Sáng', CAST(N'2021-04-10T23:51:52.550' AS DateTime), N'Nguyễn Sáng', 1)
INSERT [dbo].[New] ([ID], [Name], [Image], [Slug], [Views], [Description], [Content], [ParentID], [Position], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdateBy], [IsDelete]) VALUES (3, N'Tin công nghệ', NULL, N'tin-cong-nghe', 0, N'a', NULL, 0, 1, 1, CAST(N'2021-04-10T22:44:26.143' AS DateTime), N'Nguyễn Sáng', CAST(N'2021-04-25T14:00:51.607' AS DateTime), N'Nguyễn Sáng', 0)
INSERT [dbo].[New] ([ID], [Name], [Image], [Slug], [Views], [Description], [Content], [ParentID], [Position], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdateBy], [IsDelete]) VALUES (4, N'Apple chính thức phát hành iOS 14.5, mời bạn cập nhật ngay để dùng tính năng mới!', N'/Upload/Image/2021042715233314.5-on-iPhone-12-feature-2-696x391.jpg', N'apple-chinh-thuc-phat-hanh-ios-14.5,-moi-ban-cap-nhat-ngay-de-dung-tinh-nang-moi!', 1200, N'gh', N'<p>Sự cải tiến lớn nhất tr&ecirc;n phi&ecirc;n bản n&agrave;y ch&iacute;nh l&agrave; mở kh&oacute;a iPhone của m&igrave;nh qua Apple Watch, tr&aacute;nh phải nhập m&atilde; pin hoặc th&aacute;o khẩu trang v&agrave; đeo lại. iOS 14.5 cũng giới thiệu t&iacute;nh năng thay đổi giọng n&oacute;i của Siri v&agrave; c&aacute;c t&ugrave;y chọn t&ocirc;ng m&agrave;u da mới cho một số biểu tượng cảm x&uacute;c.</p>

<p>Ngo&agrave;i ra, bản cập nhật bổ sung rất nhiều t&iacute;nh năng mới, như cập nhật cho Podcast, Apple News v&agrave; hỗ trợ cho c&aacute;c bộ điều khiển m&aacute;y chơi game mới nhất. V&agrave; T&aacute;o khuyết cũng đ&atilde; sửa kh&aacute; nhiều lỗi trong bản cập nhật mới n&agrave;y</p>
', 1, 0, 1, NULL, NULL, CAST(N'2021-04-27T15:28:31.903' AS DateTime), N'Nguyễn Sáng', 0)
INSERT [dbo].[New] ([ID], [Name], [Image], [Slug], [Views], [Description], [Content], [ParentID], [Position], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdateBy], [IsDelete]) VALUES (5, N'Tin tức ', NULL, N'tin-tuc', NULL, N'fd', NULL, 0, 2, 1, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[New] ([ID], [Name], [Image], [Slug], [Views], [Description], [Content], [ParentID], [Position], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdateBy], [IsDelete]) VALUES (6, N'Phân biệt kháng nước và chống nước trước khi điện thoại “tèo” vì lỗi ngớ ngẩn', N'/Upload/Image/20210427152928Vsmart-sau-tet-02-3-696x392.jpg', N'phan-biet-khang-nuoc-va-chong-nuoc-truoc-khi-dien-thoai-“teo”-vi-loi-ngo-ngan', 0, N'Hầu hết smartphone ngày nay đều có khả năng kháng nước nhất định. Tuy nhiên bạn cần phân biệt kháng nước, chống nước vì chúng không giống nhau đâu nhé. Đừng để điện thoại “tập bơi” vì lí do này.  ', N'<p><strong>Hầu hết smartphone ng&agrave;y nay đều c&oacute; khả năng kh&aacute;ng nước nhất định. Tuy nhi&ecirc;n bạn cần ph&acirc;n biệt kh&aacute;ng nước, chống nước v&igrave; ch&uacute;ng kh&ocirc;ng giống nhau đ&acirc;u nh&eacute;. Đừng để điện thoại &ldquo;tập bơi&rdquo; v&igrave; l&iacute; do n&agrave;y.&nbsp;&nbsp;</strong></p>

<h2><strong>Ph&acirc;n biệt kh&aacute;ng nước v&agrave; chống nước</strong></h2>

<p>Nếu bạn để &yacute; kỹ th&igrave; tr&ecirc;n phần giới thiệu của một số điện thoại thường c&oacute; phần &ldquo;đạt chuẩn IP67&rdquo;. Nhưng điều đ&oacute; kh&ocirc;ng c&oacute; nghĩa l&agrave; bạn c&oacute; thể nh&uacute;ng nước smartphone thoải m&aacute;i đ&acirc;u. Vậy th&igrave; hai kh&aacute;i niệm n&agrave;y kh&aacute;c nhau thế n&agrave;o? Chống nước tức l&agrave; điện thoại ho&agrave;n kh&ocirc;ng bị ảnh hưởng khi trong m&ocirc;i trường nước. N&oacute;i c&aacute;ch kh&aacute;c c&aacute;c linh kiện b&ecirc;n trong sẽ kh&ocirc;ng chịu t&aacute;c động g&igrave; khi ng&acirc;m trong nước.</p>

<p><img alt="phân biệt kháng nước chống nước" src="https://hoanghamobile.com/tin-tuc/wp-content/uploads/2021/04/Apple-Watch-Series-6-The-Best-Smartwatch-for-women-5.jpg" style="height:450px; width:800px" /></p>

<p>Trong khi đ&oacute; kh&aacute;ng nước đề cập đến khả năng chống chịu của thiết bị dưới m&ocirc;i trường nước. V&agrave; n&oacute; chỉ được t&iacute;nh trong một khoảng thời gian nhất định. V&iacute; dụ ti&ecirc;u chuẩn IP67 nghĩa l&agrave; thiết bị c&oacute; thể sống s&oacute;t trong khoảng 30 ph&uacute;t với độ s&acirc;u 1m nước. Trong khi ti&ecirc;u chuẩn IP68 th&igrave; smartphone c&oacute; thể ng&acirc;m nước ở độ s&acirc;u 1.5m trong 30 ph&uacute;t.</p>

<p><img alt="phân biệt kháng nước chống nước" src="https://hoanghamobile.com/tin-tuc/wp-content/uploads/2021/04/Garmin-1200x628-3.jpg" style="height:454px; width:800px" /></p>

<p>Tuy nhi&ecirc;n, khả năng kh&aacute;ng nước của điện thoại cũng chỉ bảo vệ đến một mức độ n&agrave;o đ&oacute; th&ocirc;i. Sau một thời gian sử dụng n&oacute; cũng c&oacute; thể giảm bớt khả năng bảo vệ. C&aacute;c nh&agrave; sản xuất trang bị t&iacute;nh năng n&agrave;y để ph&ograve;ng c&aacute;c trường hợp người d&ugrave;ng v&ocirc; t&igrave;nh l&agrave;m rơi điện thoại xuống nước. C&ograve;n nếu người d&ugrave;ng cố &yacute; nh&uacute;ng nước hoặc ng&acirc;m điện thoại qu&aacute; l&acirc;u th&igrave; kh&ocirc;ng ổn đ&acirc;u nh&eacute;. Nếu điện thoại của bạn v&ocirc; t&igrave;nh rơi xuống nước th&igrave; tham khảo ngay một c&aacute;ch đơn giản&nbsp;<a href="https://hoanghamobile.com/tin-tuc/cach-day-nuoc-ra-khoi-iphone-cuc-de-nhung-khong-phai-ai-cung-biet">tại đ&acirc;y</a>&nbsp;nh&eacute;.</p>

<p>Tr&ecirc;n đ&acirc;y l&agrave; th&ocirc;ng tin ph&acirc;n biệt kh&aacute;ng nước chống nước. Bạn đọc c&oacute; suy nghĩ g&igrave; về th&ocirc;ng tin n&agrave;y? H&atilde;y để lại comment dưới phần b&igrave;nh luận v&agrave; đừng qu&ecirc;n theo d&otilde;i&nbsp;<a href="http://tintuc.hoanghamobile.com/tin-tuc/"><strong>Ho&agrave;ng H&agrave; Mobile</strong></a>&nbsp;để cập nhật c&aacute;c tin tức c&ocirc;ng nghệ mới nhất nh&eacute;.</p>

<div id="gtx-trans" style="left:3px; position:absolute; top:38px">
<div class="gtx-trans-icon">&nbsp;</div>
</div>
', 1, 1, 1, CAST(N'2021-04-11T00:15:59.133' AS DateTime), N'Nguyễn Sáng', CAST(N'2021-04-27T15:29:31.530' AS DateTime), N'Nguyễn Sáng', 0)
INSERT [dbo].[New] ([ID], [Name], [Image], [Slug], [Views], [Description], [Content], [ParentID], [Position], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdateBy], [IsDelete]) VALUES (10, N'Đây là concept iPhone 13 Pro trong mơ của mọi iFan', N'/Upload/Image/20210427162212concept-iphone-13-pro-1.png', N'day-la-concept-iphone-13-pro-trong-mo-cua-moi-ifan', 0, N'Mặc dù chưa đến thời điểm ra mắt nhưng những ý tưởng thiết kế của iPhone hế hệ mới liên tục xuất hiện. .', N'<p>Mặc d&ugrave; chưa đến thời điểm ra mắt nhưng những &yacute; tưởng thiết kế của iPhone hế hệ mới li&ecirc;n tục xuất hiện. Trong concept vừa được ConceptsiPhone chia sẻ l&agrave; chiếc iPhone 13 Pro với m&agrave;n h&igrave;nh tr&agrave;n viền cực bắt mắt. Kh&ocirc;ng c&ograve;n tai thỏ nữa m&agrave; l&agrave; camera &ldquo;đục lỗ&rdquo; nhỏ gọn.</p>

<h2><strong>Đ&acirc;y l&agrave; concept iPhone 13 Pro trong mơ của mọi iFan</strong></h2>

<p>Thiết kế Infinity-O chưa từng xuất hiện tr&ecirc;n bất kỳ thế hệ iPhone n&agrave;o. Thế nhưng nếu iPhone 13 ra mắt với thiết kế n&agrave;y th&igrave; chắc chắn sẽ g&acirc;y b&atilde;o giống như thời điểm Apple tr&igrave;nh l&agrave;ng iPhone X. Camera &ldquo;đục lỗ&rdquo; v&agrave; loa nhỏ xinh ngay b&ecirc;n dưới sẽ thay thế vị tr&iacute; của &ldquo;tai thỏ&rdquo;.</p>

<p><img alt="concept-iphone-13-pro-2" src="https://hoanghamobile.com/tin-tuc/wp-content/uploads/2021/04/concept-iphone-13-pro-2-1.png" style="height:592px; width:1173px" /></p>

<p>Trong video, iPhone 13 Pro sở hữu m&agrave;n h&igrave;nh ProMotion LTPO c&ocirc;ng nghệ cao với tốc độ l&agrave;m mới 120Hz. Đặc biệt, chiếc smartphone n&agrave;y c&ograve;n được trang bị chế độ Always on Screen tức l&agrave; m&agrave;n h&igrave;nh lu&ocirc;n bật để hiển thị giờ v&agrave; th&ocirc;ng b&aacute;o. Touch-ID dưới m&agrave;n h&igrave;nh cũng sẽ xuất hiện.</p>

<p><img alt="concept-iphone-13-pro-3" src="https://hoanghamobile.com/tin-tuc/wp-content/uploads/2021/04/concept-iphone-13-pro-3.png" style="height:606px; width:1172px" /></p>

<p>Mặt lưng của iPhone 13 Pro vẫn giống với iPhone 12 series. Vẫn l&agrave; thiết kế vu&ocirc;ng vức c&ugrave;ng bộ ba camera quen thuộc. Trong đ&oacute; c&oacute; một ống k&iacute;nh g&oacute;c si&ecirc;u rộng với khả năng thay đổi khẩu độ từ f/2.4 đến f/1.8 v&agrave; lấy n&eacute;t tự động.</p>

<p>Ngo&agrave;i ra, concept mới c&ograve;n giới thiệu ba phi&ecirc;n bản m&agrave;u sắc bao gồm trắng, đen v&agrave; v&agrave;ng. Mặc d&ugrave; chỉ l&agrave; tin đồn nhưng nhiều khả năng thế hệ iPhone tiếp theo sẽ c&oacute; vi xử l&yacute; Bionic A15.</p>
', 3, 0, 1, CAST(N'2021-04-27T16:22:46.057' AS DateTime), N'Nguyễn Sáng', NULL, N'', 0)
INSERT [dbo].[New] ([ID], [Name], [Image], [Slug], [Views], [Description], [Content], [ParentID], [Position], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdateBy], [IsDelete]) VALUES (11, N'Mở khóa iPhone khi đeo khẩu trang cực đơn giản', N'/Upload/Image/20210427163906mo-khoa-iphone-1-696x364.jpg', N'mo-khoa-iphone-khi-deo-khau-trang-cuc-don-gian', 0, N'Apple đã chính thức phát hành iOS 14.5 và watchOS 7.4. Sự thay đổi lớn của bản cập nhật này là tích hợp iPhone và Apple Watch. ', N'<p>Apple đ&atilde; ch&iacute;nh thức ph&aacute;t h&agrave;nh iOS 14.5 v&agrave; watchOS 7.4. Sự thay đổi lớn của bản cập nhật n&agrave;y l&agrave; t&iacute;ch hợp iPhone v&agrave; Apple Watch. Giờ đ&acirc;y, người d&ugrave;ng c&oacute; thể sử dụng Apple Watch để mở kh&oacute;a iPhone khi đeo khẩu trang.</p>

<h2><strong>C&aacute;ch mở kh&oacute;a iPhone bằng Apple Watch</strong></h2>

<p>Để bật t&iacute;nh năng Mở kh&oacute;a bằng Apple Watch, h&atilde;y v&agrave;o C&agrave;i đặt tr&ecirc;n iPhone, sau đ&oacute; bật &ldquo;Face ID &amp; Mật m&atilde;&rdquo;. Apple Watch sẽ x&aacute;c thực iPhone khi đ&aacute;p ứng đủ c&aacute;c điều kiện sau:</p>

<ul>
	<li>Face ID ph&aacute;t hiện người d&ugrave;ng đang đeo khẩu trang</li>
	<li>Apple Watch đang ở gần iPhone</li>
	<li>Apple Watch đang ở tr&ecirc;n cổ tay của người d&ugrave;ng</li>
	<li>Apple Watch đ&atilde; được mở kh&oacute;a</li>
	<li>Apple Watch đ&atilde; bật mật m&atilde;</li>
</ul>

<p><img alt="mo-khoa-iphone-2" src="https://hoanghamobile.com/tin-tuc/wp-content/uploads/2021/04/mo-khoa-iphone-2.jpg" style="height:520px; width:780px" /></p>

<p>Lưu &yacute;: nếu tắt t&iacute;nh năng ph&aacute;t hiện Apple Watch tr&ecirc;n cổ tay th&igrave; bạn sẽ kh&ocirc;ng thể mở kh&oacute;a bằng Apple Watch.</p>

<h2><strong>Mở kh&oacute;a bằng Apple Watch c&oacute; an to&agrave;n kh&ocirc;ng?</strong></h2>

<p>Sau khi bật t&iacute;nh năng n&agrave;y, nếu bạn đeo khẩu trang th&igrave; iPhone sẽ tự động mở kh&oacute;a bằng Apple Watch v&agrave;o những lần tiếp theo. Khi mở kh&oacute;a, bạn sẽ nhận được th&ocirc;ng b&aacute;o phản hồi x&uacute;c gi&aacute;c tr&ecirc;n Apple Watch. Nếu kh&ocirc;ng muốn th&igrave; bạn c&ograve;n c&oacute; thể &ldquo;Kh&oacute;a iPhone&rdquo; ngay tại th&ocirc;ng b&aacute;o đ&oacute;.</p>

<p>Mở kh&oacute;a iPhone bằng Apple Watch cũng tương tự như mở kh&oacute;a Mac bằng Apple Watch. Tuy nhi&ecirc;n nếu tr&ecirc;n Mac, Apple Watch c&oacute; thể x&aacute;c thực nhiều t&aacute;c vụ kh&aacute;c nhau như t&ugrave;y chọn hệ thống, mua h&agrave;ng qua Apple Pay&hellip; th&igrave; tr&ecirc;n iPhone, t&iacute;nh năng n&agrave;y chỉ giới hạn ở việc mở kh&oacute;a iPhone khi đeo khẩu trang. N&oacute; sẽ kh&ocirc;ng hoạt động trong trường hợp iPhone nhận thấy bạn kh&ocirc;ng đeo khẩu trang.</p>

<p><img alt="mo-khoa-iphone-3" src="https://hoanghamobile.com/tin-tuc/wp-content/uploads/2021/04/mo-khoa-iphone-3.jpg" style="height:1268px; width:2048px" /></p>

<p>Nếu người kh&aacute;c đeo khẩu trang v&agrave; cố t&igrave;nh mở iPhone của bạn th&igrave; n&uacute;t &ldquo;Kh&oacute;a iPhone&rdquo; tr&ecirc;n Apple Watch sẽ cho ph&eacute;p bạn kh&oacute;a ngay lập tức. Đ&acirc;y l&agrave; một bước bảo mật quan trọng. Mặc d&ugrave; mở kh&oacute;a bằng Apple Watch kh&ocirc;ng an to&agrave;n như Face ID hay mật m&atilde; nhưng n&oacute; lại rất thuận tiện trong thời điểm đại dịch Covid-19 ho&agrave;nh h&agrave;nh.</p>

<p>Bạn đ&atilde; thử chưa? H&atilde;y b&igrave;nh luận b&ecirc;n dưới v&agrave; tham khảo sản phẩm iPhone 12 tại&nbsp;<strong><a href="https://hoanghamobile.com/iphone-12-series-c2651.html">Ho&agrave;ng H&agrave; Mobile</a></strong>&nbsp;nh&eacute;!</p>
', 3, 1, 1, CAST(N'2021-04-27T16:39:24.143' AS DateTime), N'Nguyễn Sáng', NULL, N'', 0)
INSERT [dbo].[New] ([ID], [Name], [Image], [Slug], [Views], [Description], [Content], [ParentID], [Position], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdateBy], [IsDelete]) VALUES (12, N'Tại sao Apple bán iPhone 12 giá cao ngất ngưởng nhưng người dùng vẫn đổ xô đi mua', N'/Upload/Image/20210427164025Thumb-Realme8-Series-1-696x475.jpg', N'tai-sao-apple-ban-iphone-12-gia-cao-ngat-nguong-nhung-nguoi-dung-van-do-xo-di-mua', 0, N'Dòng iPhone 12 vẫn chưa hề hạ nhiệt tại nhiều quốc gia trên thế giới. Bạn có tò mò tại sao giá bán iPhone 12 cao ngất ngưởng mà người dùng vẫn đổ xô mua không? ', N'<p><strong>D&ograve;ng iPhone 12 vẫn chưa hề hạ nhiệt tại nhiều quốc gia tr&ecirc;n thế giới. Bạn c&oacute; t&ograve; m&ograve; tại sao gi&aacute; b&aacute;n iPhone 12 cao ngất ngưởng m&agrave; người d&ugrave;ng vẫn đổ x&ocirc; mua kh&ocirc;ng?&nbsp;</strong></p>

<h2><strong>Gi&aacute; b&aacute;n iPhone 12 cao nhưng vẫn lu&ocirc;n h&uacute;t người mua</strong></h2>

<p>Đ&atilde; bao giờ bạn tự hỏi tại sao Apple đặt gi&aacute; cao nhưng c&aacute;c mẫu điện thoại của họ vẫn lu&ocirc;n đắt h&agrave;ng kh&ocirc;ng? Kể cả khi d&ograve;ng iPhone 12 kh&ocirc;ng đi k&egrave;m bộ sạc v&agrave; tai nghe, n&oacute; vẫn đạt doanh số b&aacute;n ấn tượng. Vậy th&igrave; nguy&ecirc;n nh&acirc;n l&agrave; do đ&acirc;u? Đối với những người đ&atilde; một lần bước ch&acirc;n v&agrave;o hệ sinh th&aacute;i của Apple th&igrave; rất kh&oacute; để quay lại. Th&agrave;nh thật đi, bạn chắc chắn sẽ cảm thấy kh&ocirc;ng thể quen nổi những trải nghiệm tr&ecirc;n Android. Người d&ugrave;ng kh&ocirc;ng thể &ldquo;h&ograve;a nhập&rdquo; với hệ điều h&agrave;nh kh&aacute;c iOS chứ chưa b&agrave;n đến thiết kế b&ecirc;n ngo&agrave;i.</p>

<p><img alt="giá bán iPhone 12" src="https://hoanghamobile.com/tin-tuc/wp-content/uploads/2021/04/Thumb-Realme8-Series-1-1.jpg" style="height:600px; width:1000px" /></p>

<p>Nguy&ecirc;n nh&acirc;n n&agrave;y nghe c&oacute; vẻ v&ocirc; l&yacute; nhưng đ&acirc;y l&agrave; c&aacute;ch Apple giữ ch&acirc;n người d&ugrave;ng của m&igrave;nh. V&agrave; gần như 90% chiếc điện thoại mới tiếp theo của họ vẫn l&agrave; một chiếc iPhone. Năm 2017 Apple ch&iacute;nh thức đặt ch&acirc;n v&agrave;o ph&acirc;n kh&uacute;c gi&aacute; cao cấp với chiếc iPhone X. Khi đ&oacute;, doanh số của họ kh&ocirc;ng hề giảm s&uacute;t m&agrave; ngược lại c&ograve;n cao hơn trước. Ngay cả trong thời điểm dịch Covid-19 l&agrave;m ảnh hưởng nền kinh tế, doanh số iPhone 12 vẫn cực ổn &aacute;p.</p>

<h2><strong>Sự kh&aacute;c biệt tạo n&ecirc;n vị tr&iacute; vững chắc</strong></h2>

<p>C&oacute; một sự thật l&agrave; c&aacute;c nh&agrave; sản xuất lu&ocirc;n tạo ra c&aacute;c điểm kh&aacute;c biệt trải nghiệm để giữ ch&acirc;n người d&ugrave;ng. Giống như việc n&uacute;t tắt tab của m&aacute;y t&iacute;nh Windows nằm b&ecirc;n phải v&agrave; Macbook ở b&ecirc;n tr&aacute;i. Những th&oacute;i quen d&ugrave;ng rất nhỏ n&agrave;y nhưng người d&ugrave;ng cũng kh&oacute; để từ bỏ. Hay c&aacute;c trải nghiệm vuốt, lướt cực tiện lợi tr&ecirc;n iPhone. Chưa kể đến việc bạn đang d&ugrave;ng đồng bộ c&aacute;c thiết bị, bạn cũng kh&ocirc;ng muốn từ bỏ rồi.</p>

<p><img alt="giá bán iPhone 12" src="https://hoanghamobile.com/tin-tuc/wp-content/uploads/2021/04/Garmin-1200x628-4.jpg" style="height:533px; width:799px" /></p>

<p>Apple kh&ocirc;ng phải nh&agrave; sản xuất duy nhất đẩy mức gi&aacute; l&ecirc;n cao. Trước đ&oacute; Galaxy Fold ra mắt như một chiếc điện thoại gập đầu ti&ecirc;n tr&ecirc;n thế giới. V&agrave; n&oacute; cũng được &ldquo;h&eacute;t&rdquo; gi&aacute; cao ngất ngưởng. Sự kh&aacute;c biệt đ&atilde; tạo n&ecirc;n vị thế của Apple như h&ocirc;m nay. C&ograve;n bạn th&igrave; sao, l&yacute; do bạn y&ecirc;u th&iacute;ch c&aacute;c sản phẩm Apple l&agrave; g&igrave;?</p>

<p>Tr&ecirc;n đ&acirc;y l&agrave; th&ocirc;ng tin gi&aacute; b&aacute;n iPhone 12. Bạn đọc c&oacute; suy nghĩ g&igrave; về th&ocirc;ng tin n&agrave;y? H&atilde;y để lại comment dưới phần b&igrave;nh luận v&agrave; đừng qu&ecirc;n theo d&otilde;i&nbsp;<a href="http://tintuc.hoanghamobile.com/tin-tuc/"><strong>Ho&agrave;ng H&agrave; Mobile</strong></a>&nbsp;để cập nhật c&aacute;c tin tức c&ocirc;ng nghệ mới nhất nh&eacute;.</p>
', 3, 3, 1, CAST(N'2021-04-27T16:40:36.473' AS DateTime), N'Nguyễn Sáng', CAST(N'2021-04-27T17:33:27.483' AS DateTime), N'Nguyễn Sáng', 0)
INSERT [dbo].[New] ([ID], [Name], [Image], [Slug], [Views], [Description], [Content], [ParentID], [Position], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdateBy], [IsDelete]) VALUES (13, N'Không chịu thua Xiaomi, Samsung sẽ ra mắt Galaxy S22 Ultra với camera 200MP', N'/Upload/Image/20210427164123Thumb-1-696x391.jpg', N'khong-chiu-thua-xiaomi,-samsung-se-ra-mat-galaxy-s22-ultra-voi-camera-200mp', 0, N'Vài ngày trước, có thông tin Xiaomi chuẩn bị giới thiệu điện thoại với cảm biến 200MP. Mới đây, rò rỉ tiết lộ Galaxy S22 Ultra sắp ra mắt cũng sở hữu cảm biến khổng lồ này.', N'<p><strong>V&agrave;i ng&agrave;y trước, c&oacute; th&ocirc;ng tin Xiaomi chuẩn bị giới thiệu điện thoại với cảm biến 200MP. Mới đ&acirc;y, r&ograve; rỉ tiết lộ Galaxy S22 Ultra sắp ra mắt cũng sở hữu cảm biến khổng lồ n&agrave;y. C&oacute; vẻ đ&acirc;y sẽ l&agrave; một cuộc đối đầu của hai &ocirc;ng lớn tr&ecirc;n thị trường.&nbsp;</strong></p>

<h2><strong>Samsung sẽ ra mắt Galaxy S22 Ultra với camera 200MP</strong></h2>

<p>C&oacute; vẻ như c&aacute;c nh&agrave; sản xuất vẫn đang nỗ lực đầu tư v&agrave;o bộ phận camera của điện thoại. V&agrave; Samsung cũng kh&ocirc;ng ngoại lệ. G&atilde; khổng lồ c&ocirc;ng nghệ H&agrave;n Quốc dự kiến sẽ ra mắt smartphone với camera 200MP. Bạn đo&aacute;n ra c&aacute;i t&ecirc;n n&agrave;o sẽ được lựa chọn kh&ocirc;ng? Đ&oacute; ch&iacute;nh l&agrave; Galaxy S22 Ultra. Th&ocirc;ng tin n&agrave;y được tiết lộ từ b&agrave;i đăng tr&ecirc;n Weibo của&nbsp;Ice Universe v&agrave; Digital Chat Station.</p>

<p><img alt="ra mắt Galaxy S22 Ultra" src="https://hoanghamobile.com/tin-tuc/wp-content/uploads/2021/04/Thumb-2.jpg" style="height:672px; width:1280px" /></p>

<p>Trước đ&oacute;, bộ phận sản xuất chip của Samsung đ&atilde; tiết lộ cảm biến 200MP sẽ sớm ra mắt. Trong khi đ&oacute;, Xiaomi cũng cho biết họ sẽ tung ra điện thoại camera 200MP trước Samsung. C&ocirc;ng ty cho biết họ sẽ c&ocirc;ng bố cảm biến ISOCELL GN2 50MP.&nbsp;Về mặt l&yacute; thuyết, pixel lớn hơn c&oacute; thể thu thập nhiều th&ocirc;ng tin vật thể hơn. Samsung sử dụng&nbsp;c&ocirc;ng nghệ pixel -binning để thu thập nhiều &aacute;nh s&aacute;ng hơn trong m&ocirc;i trường thiếu s&aacute;ng.&nbsp;Cảm biến 200MP được đồn đại c&oacute; điểm ảnh 0,64&micro;m. Tuy nhi&ecirc;n điều n&agrave;y vẫn chưa được x&aacute;c nhận v&igrave; Samsung đang xem x&eacute;t lại chiến lược của m&igrave;nh. C&oacute; lẽ những camera với pixel cao kh&ocirc;ng thực sự ấn tượng với người d&ugrave;ng.&nbsp;</p>

<h2><strong>Th&ocirc;ng số kỹ thuật dự kiến của Galaxy S22 Ultra</strong></h2>

<p>R&otilde; r&agrave;ng, Samsung đang đặt rất nhiều kỳ vọng v&agrave;o d&ograve;ng Galaxy S22 năm sau. N&oacute; sẽ tạo ra sự kh&aacute;c biệt v&agrave; cải thiện doanh số hơn nhiều so với năm nay. Theo r&ograve; rỉ, Galaxy S22 kh&ocirc;ng được trang bị cảm biến ToF. C&ocirc;ng nghệ n&agrave;y dường như kh&ocirc;ng thực sự được ch&uacute; &yacute; tr&ecirc;n Galaxy Note 20 v&agrave; Galaxy S21.</p>

<p><img alt="ra mắt Galaxy S22 Ultra" src="https://hoanghamobile.com/tin-tuc/wp-content/uploads/2021/04/m%C3%A1y-l%E1%BB%8Dc-kk-2.png" style="height:603px; width:1211px" /></p>

<p>Ngo&agrave;i ra, Galaxy S22 sẽ đi k&egrave;m với c&aacute;c cảm biến của nh&atilde;n hiệu Olympus. Samsung đ&atilde; hợp t&aacute;c với c&ocirc;ng ty m&aacute;y ảnh Nhật Bản n&agrave;y trong thời gian gần đ&acirc;y. C&aacute;c flagship tiếp theo của d&ograve;ng S cũng c&oacute; thể trang bị camera dưới m&agrave;n h&igrave;nh. Cuối c&ugrave;ng, Galaxy S22 sẽ đi k&egrave;m với con chip Exynos dựa tr&ecirc;n AMD. Ho&agrave;ng H&agrave; Mobile sẽ tiếp tục cập nhật th&ocirc;ng tin trong thời gian tới.</p>

<p>Tr&ecirc;n đ&acirc;y l&agrave; th&ocirc;ng tin ra mắt Galaxy S22 Ultra. Bạn đọc c&oacute; suy nghĩ g&igrave; về th&ocirc;ng tin n&agrave;y? H&atilde;y để lại comment dưới phần b&igrave;nh luận v&agrave; đừng qu&ecirc;n theo d&otilde;i&nbsp;<a href="http://tintuc.hoanghamobile.com/tin-tuc/"><strong>Ho&agrave;ng H&agrave; Mobile</strong></a>&nbsp;để cập nhật c&aacute;c tin tức c&ocirc;ng nghệ mới nhất nh&eacute;.</p>
', 1, 3, 1, CAST(N'2021-04-27T16:41:38.980' AS DateTime), N'Nguyễn Sáng', NULL, N'', 0)
INSERT [dbo].[New] ([ID], [Name], [Image], [Slug], [Views], [Description], [Content], [ParentID], [Position], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdateBy], [IsDelete]) VALUES (14, N'Đu trend nhanh như Anker: Ra ngay bộ sạc tím mộng mơ cực hợp màu iPhone 12 mới', N'/Upload/Image/20210427164321ankerpurple.jpg', N'du-trend-nhanh-nhu-anker:-ra-ngay-bo-sac-tim-mong-mo-cuc-hop-mau-iphone-12-moi', 0, N'Sau sự kiện Spring Loaded hôm 21/04, người dùng toàn thế giới hiện đang “phát sốt” trước sự xuất hiện của iPhone 12 phiên bản màu tím hoàn toàn mới. Ít lâu sau, hãng phụ kiện nổi tiếng của Mỹ –', N'<p>Sau sự kiện Spring Loaded h&ocirc;m 21/04, người d&ugrave;ng to&agrave;n thế giới hiện đang &ldquo;ph&aacute;t sốt&rdquo; trước sự xuất hiện của iPhone 12 phi&ecirc;n bản m&agrave;u t&iacute;m ho&agrave;n to&agrave;n mới. &Iacute;t l&acirc;u sau, h&atilde;ng phụ kiện nổi tiếng của Mỹ &ndash; Anker cũng nhanh ch&oacute;ng bắt trend, cho ra mắt củ sạc c&ugrave;ng m&agrave;u để hợp với chiếc iPhone n&agrave;y.</p>

<h2><strong>Anker ra ngay bộ sạc t&iacute;m mộng mơ hợp m&agrave;u iPhone 12 mới</strong></h2>

<p>Theo trang Gizmochina, bộ sạc Anker Nano (Anker PowerPort III Nano 20W) hiện nay đ&atilde; c&oacute; th&ecirc;m nhiều m&agrave;u mới thay v&igrave; chỉ 1 sắc trắng quen thuộc như những d&ograve;ng cũ. Ngo&agrave;i phi&ecirc;n bản xanh mint, m&agrave;u t&iacute;m cũng đang được d&acirc;n t&igrave;nh th&iacute;ch th&uacute; v&igrave; rất hợp concept iPhone 12 mới ra mắt.</p>

<p><img alt="178038792_1843695572477053_8488732206778816819_n" src="https://hoanghamobile.com/tin-tuc/wp-content/uploads/2021/04/178038792_1843695572477053_8488732206778816819_n.jpeg" style="height:506px; width:498px" /></p>

<p><img alt="178173018_1901790666639922_1283314426639134371_n" src="https://hoanghamobile.com/tin-tuc/wp-content/uploads/2021/04/178173018_1901790666639922_1283314426639134371_n.jpeg" style="height:497px; width:491px" /></p>

<p>Bộ sạc của Anker nhỏ hơn 50% so với bộ sạc USB-C 20W của iPhone 12 của Apple. N&oacute; cũng nhanh hơn 3 lần so với bộ sạc 5W v&agrave; sẽ sạc iPhone 12 từ 0 đến 50% trong 25 ph&uacute;t.</p>

<p>Hiện sản phẩm n&agrave;y mới chỉ đang được b&aacute;n ở thị trường Trung Quốc với gi&aacute; k&egrave;m c&aacute;p khoảng 45 USD (tương đương 1 triệu đồng). Chưa r&otilde; thời gian tới, bộ sạc Anker Nano m&agrave;u t&iacute;m xinh xắn ấy c&oacute; xuất hiện tại c&aacute;c nước kh&aacute;c nữa kh&ocirc;ng. C&ugrave;ng chờ xem nh&eacute;!</p>

<p>C&ograve;n đọc c&oacute; suy nghĩ g&igrave; về m&agrave;u sắc củ sạc mới của Anker? H&atilde;y để lại comment dưới phần b&igrave;nh luận v&agrave; đừng qu&ecirc;n theo d&otilde;i&nbsp;<a href="http://tintuc.hoanghamobile.com/tin-tuc/"><strong>Ho&agrave;ng H&agrave; Mobile</strong></a>&nbsp;để cập nhật c&aacute;c tin tức c&ocirc;ng nghệ mới nhất.</p>
', 1, 4, 1, CAST(N'2021-04-27T16:43:32.983' AS DateTime), N'Nguyễn Sáng', NULL, N'', 0)
INSERT [dbo].[New] ([ID], [Name], [Image], [Slug], [Views], [Description], [Content], [ParentID], [Position], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdateBy], [IsDelete]) VALUES (17, N'Chipset Snapdragon 888 Pro đang được thử nghiệm, sẽ ra mắt vào nửa cuối 2021', N'/Upload/Image/20210427164558snapdragon888pro-696x364.jpg', N'chipset-snapdragon-888-pro-dang-duoc-thu-nghiem,-se-ra-mat-vao-nua-cuoi-2021', 0, N'Trong các chipset dành cho smartphone, Snapdragon của Qualcomm được đánh giá là có hiệu năng vô cùng mạnh mẽ. Sắp tới, người dùng có thể sẽ chào đón chip Snapdragon 888 Pro ', N'<p>Trong c&aacute;c chipset d&agrave;nh cho smartphone, Snapdragon của Qualcomm được đ&aacute;nh gi&aacute; l&agrave; c&oacute; hiệu năng v&ocirc; c&ugrave;ng mạnh mẽ. Sắp tới, người d&ugrave;ng c&oacute; thể sẽ ch&agrave;o đ&oacute;n chip Snapdragon 888 Pro (t&ecirc;n dự kiến) khả năng được lộ diện nửa cuối năm nay.</p>

<h2><strong>Chipset Snapdragon 888 Pro đang được thử nghiệm</strong></h2>

<p>Theo Digital Chat Station &ndash; leaker nổi tiếng người Trung Quốc cho hay, Qualcomm đang ph&aacute;t triển một phi&ecirc;n bản cải tiến của Snapdragon 888. N&oacute; dự kiến c&oacute; t&ecirc;n l&agrave; Snapdragon 888 Pro.</p>

<p>C&aacute;c nh&agrave; sản xuất điện thoại th&ocirc;ng minh nước n&agrave;y đang bước đầu thử nghiệm chip mới v&agrave;o sản phẩm của m&igrave;nh. B&ecirc;n cạnh đ&oacute;, Digital Chat Station cũng tiết lộ rằng smartphone được cung cấp chipset Snapdragon 888 Pro sẽ ra mắt v&agrave;o qu&yacute; 3 năm nay.</p>

<p><img alt="chipset-snapdragon-888-pro-dang-duoc-thu-nghiem-se-xuat-hien-vao-q3-2021-161939548237707" src="https://hoanghamobile.com/tin-tuc/wp-content/uploads/2021/04/chipset-snapdragon-888-pro-dang-duoc-thu-nghiem-se-xuat-hien-vao-q3-2021-161939548237707.jpeg" style="height:305px; width:900px" /></p>

<p>Về th&ocirc;ng số kỹ thuật, l&otilde;i ch&iacute;nh của Snapdragon 888 Pro l&agrave; Cortex-X1 sẽ c&oacute; tốc độ xung nhịp cao hơn so với Snapdragon 888. Tuy nhi&ecirc;n, ngo&agrave;i việc hiệu năng mạnh mẽ th&igrave; người d&ugrave;ng c&ograve;n quan t&acirc;m một vấn đề kh&aacute;c. Đ&oacute; ch&iacute;nh l&agrave; việc Qualcomm c&oacute; khắc phục t&igrave;nh trạng qu&aacute; nhiệt đang xảy ra ở Snapdragon 888 tr&ecirc;n phi&ecirc;n bản &ldquo;Pro&rdquo; hay kh&ocirc;ng?</p>

<p>C&ograve;n bạn nghĩ sao về chipset mới n&agrave;y? H&atilde;y c&ugrave;ng chờ đ&oacute;n xem v&agrave; đừng qu&ecirc;n theo d&otilde;i&nbsp;<a href="http://tintuc.hoanghamobile.com/tin-tuc/">Ho&agrave;ng H&agrave; Mobile</a>&nbsp;để cập nhật c&aacute;c tin tức c&ocirc;ng nghệ mới nhất nh&eacute;!</p>
', 1, 5, 1, CAST(N'2021-04-27T16:46:17.137' AS DateTime), N'Nguyễn Sáng', NULL, N'', 0)
INSERT [dbo].[New] ([ID], [Name], [Image], [Slug], [Views], [Description], [Content], [ParentID], [Position], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdateBy], [IsDelete]) VALUES (18, N'Samsung 3 màn hình sắp được tung ra, sẽ thay thế Galaxy Note 21', N'/Upload/Image/20210427164704f9gEkDvhwAHkAPXB5HrJhL-1200-80-6086-1608874056-696x561.jpg', N'samsung-3-man-hinh-sap-duoc-tung-ra,-se-thay-the-galaxy-note-21', 0, N'Theo hình ảnh hé lộ, Samsung sẽ tung ra smartphone có 3 màn hình, trong đó màn hình trung tâm rộng hơn trong khi hai màn hình còn lại hẹp.', N'<p><strong>Theo h&igrave;nh ảnh h&eacute; lộ, Samsung sẽ tung ra smartphone c&oacute; 3 m&agrave;n h&igrave;nh, trong đ&oacute; m&agrave;n h&igrave;nh trung t&acirc;m rộng hơn trong khi hai m&agrave;n h&igrave;nh c&ograve;n lại hẹp.</strong></p>

<h2>Samsung 3 m&agrave;n h&igrave;nh mới l&agrave; smartphone đ&aacute;ng được tr&ocirc;ng đợi nhất</h2>

<p>Samsung dường như đang l&agrave;m việc chăm chỉ tr&ecirc;n nhiều loại thiết bị c&oacute; thể gập lại. Mới đ&acirc;y, Samsung lại được cấp th&ecirc;m bằng s&aacute;ng chế từ Văn ph&ograve;ng Sở hữu Tr&iacute; tuệ Li&ecirc;n minh Ch&acirc;u &Acirc;u (EUIPO)về chiếc điện thoại gập lại với 3 m&agrave;n h&igrave;nh, hỗ trợ sạc nhanh cho b&uacute;t S Pen từ t&iacute;nh, củng cố cho quyết t&acirc;m tr&igrave;nh l&agrave;ng smartphone đ&aacute;ng tr&ocirc;ng đợi nhất.</p>

<p><img alt="samsung-3-man-hinh-sap-duoc-tung-ra-con-dang-trong-doi-hon-ca-galaxy-note-21-1" src="https://hoanghamobile.com/tin-tuc/wp-content/uploads/2021/04/samsung-3-man-hinh-sap-duoc-tung-ra-con-dang-trong-doi-hon-ca-galaxy-note-21-1.jpg" style="height:450px; width:800px" /></p>

<p>H&igrave;nh ảnh h&eacute; lộ thiết kế của Samsung gập 3 m&agrave;n h&igrave;nh</p>

<p>Theo nguồn tin LetsGoDigital, t&agrave;i liệu về bằng s&aacute;ng chế mới nhất c&oacute; 52 trang, c&oacute; ti&ecirc;u đề &ldquo;Thiết bị điện tử c&oacute; thể gập lại bao gồm cả b&uacute;t S-pen&rdquo;. Điều th&uacute; vị ở đ&acirc;y l&agrave; bằng s&aacute;ng chế cho thấy một chiếc điện thoại gập đ&ocirc;i c&oacute; ba m&agrave;n h&igrave;nh. G&atilde; khổng lồ H&agrave;n Quốc cũng gọi n&oacute; l&agrave; &ldquo;thiết bị c&oacute; thể gập lại nhiều lần&rdquo;.</p>

<h2>Cơ chế hoạt động của Samsung 3 m&agrave;n h&igrave;nh</h2>

<p>Nh&igrave;n từ bề ngo&agrave;i, m&agrave;n h&igrave;nh trung t&acirc;m rộng hơn trong khi hai m&agrave;n h&igrave;nh c&ograve;n lại hẹp. Do đ&oacute;, khi hai m&agrave;n h&igrave;nh lề được gập lại, ch&uacute;ng nằm vừa vặn che to&agrave;n bộ m&agrave;n h&igrave;nh ch&iacute;nh. B&uacute;t cảm ứng nằm gọn trong một hốc nhỏ tạo bởi hai m&agrave;n h&igrave;nh gập. Khi b&uacute;t S Pen được kẹp v&agrave;o vị tr&iacute;, một chế độ sạc tốc độ cao sẽ bật l&ecirc;n.</p>

<p><img alt="samsung-3-man-hinh-sap-duoc-tung-ra-con-dang-trong-doi-hon-ca-galaxy-note-21-2" src="https://hoanghamobile.com/tin-tuc/wp-content/uploads/2021/04/samsung-3-man-hinh-sap-duoc-tung-ra-con-dang-trong-doi-hon-ca-galaxy-note-21-2.jpg" style="height:450px; width:800px" /></p>

<p>H&igrave;nh ảnh h&eacute; lộ thiết kế của Samsung gập 3 m&agrave;n h&igrave;nh</p>

<p>Trong trường hợp điện thoại kh&ocirc;ng được gập lại ho&agrave;n to&agrave;n m&agrave; b&uacute;t S Pen vẫn nằm đ&oacute;, n&oacute; sẽ ở chế độ sạc ti&ecirc;u chuẩn. Ngo&agrave;i ra, thiết bị c&ograve;n c&oacute; hai camera selfie được đặt trong thiết kế k&eacute;p, cảm biến v&acirc;n tay trong m&agrave;n h&igrave;nh tr&ecirc;n bo mạch, hệ thống loa &aacute;p điện được đặt dưới m&agrave;n h&igrave;nh dẻo v&agrave; hệ thống camera k&eacute;p ở ph&iacute;a sau.</p>

<h2>Tạm kết</h2>

<p>D&ugrave; Samsung vẫn chưa x&aacute;c nhận sẽ tung ra mẫu smartphone n&agrave;y, nhưng nếu l&agrave; thật, liệu thiết bị n&agrave;y c&oacute; thể thay thế Galaxy Note 21?&nbsp;H&atilde;y để lại &yacute; kiến c&aacute; nh&acirc;n ở phần b&igrave;nh luận v&agrave; cũng đừng qu&ecirc;n theo d&otilde;i&nbsp;<a href="http://tintuc.hoanghamobile.com/tin-tuc/">Ho&agrave;ng H&agrave; Mobile</a>&nbsp;để cập nhật c&aacute;c tin tức c&ocirc;ng nghệ mới nhất nh&eacute;!</p>
', 1, 6, 1, CAST(N'2021-04-27T16:47:13.683' AS DateTime), N'Nguyễn Sáng', CAST(N'2021-04-27T17:32:35.790' AS DateTime), N'Nguyễn Sáng', 0)
INSERT [dbo].[New] ([ID], [Name], [Image], [Slug], [Views], [Description], [Content], [ParentID], [Position], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdateBy], [IsDelete]) VALUES (19, N'Rò rỉ cấu hình Realme Watch 2 sắp ra mắt: Pin khủng tới đâu mà dùng 12 ngày không cần sạc', N'/Upload/Image/20210427164814Realmewacth2-696x364.jpg', N'ro-ri-cau-hinh-realme-watch-2-sap-ra-mat:-pin-khung-toi-dau-ma-dung-12-ngay-khong-can-sac', 0, N'Cách đây vài tháng, rò rỉ tin Realme sẽ sớm trình làng thế hộ đồng hồ thông minh thứ 2 trong năm nay. Giờ đây, thông số kỹ thuật cũng như tính năng của Watch 2 đã được bật mí.', N'<p><a href="https://hoanghamobile.com/tin-tuc/wp-content/uploads/2021/04/Realmewacth2.jpg"><img alt="Realmewacth2" src="https://hoanghamobile.com/tin-tuc/wp-content/uploads/2021/04/Realmewacth2-696x364.jpg" style="height:364px; width:696px" title="Realmewacth2" /></a></p>

<p>C&aacute;ch đ&acirc;y v&agrave;i th&aacute;ng, r&ograve; rỉ tin Realme sẽ sớm tr&igrave;nh l&agrave;ng thế hộ đồng hồ th&ocirc;ng minh thứ 2 trong năm nay. Giờ đ&acirc;y, th&ocirc;ng số kỹ thuật cũng như t&iacute;nh năng của Watch 2 đ&atilde; được bật m&iacute;. Tuy nhi&ecirc;n, ng&agrave;y ra mắt ch&iacute;nh thức vẫn chưa được h&atilde;ng tiết lộ.</p>

<h2><strong>Một số th&ocirc;ng tin về Realme Watch 2</strong></h2>

<p>Theo trang&nbsp;<em>Gizmochina</em>, smartwatch thế hệ thứ 2 của Realme cũng sẽ c&oacute; thiết kế mặt vu&ocirc;ng như đời tiền nhiệm. Phần d&acirc;y đeo được in mờ khẩu hiệu &ldquo;Dare to Leap&rdquo; quen thuộc của h&atilde;ng.</p>

<p>Về phần cấu h&igrave;nh, Realme Watch 2 sử dụng m&agrave;n h&igrave;nh m&agrave;u TFT 1.4 inch c&oacute; độ ph&acirc;n giải 320 x 320 pixel. N&oacute; được trang bị hỗ trợ kh&aacute;ng nước, chống bụi theo ti&ecirc;u chuẩn IP68. Ngo&agrave;i ra, sản phẩm cũng&nbsp;tương th&iacute;ch với tất cả c&aacute;c thiết bị chạy Android 5.0 trở l&ecirc;n.</p>

<p><img alt="Realme-Watch-2-2" src="https://hoanghamobile.com/tin-tuc/wp-content/uploads/2021/04/Realme-Watch-2-2.jpeg" style="height:565px; width:960px" /></p>

<p>Một điểm cộng kh&aacute;c l&agrave; dung lượng pin của Realme Watch 2 tăng gần gấp đ&ocirc;i so với thế hệ cũ (305mAh). Người d&ugrave;ng c&oacute; thể thoải m&aacute;i sử dụng trong v&ograve;ng 12 ng&agrave;y li&ecirc;n tục m&agrave; kh&ocirc;ng cần sạc.</p>

<p>Về phần t&iacute;nh năng, Realme Watch 2 c&oacute; thể theo d&otilde;i nhịp tim 24 giờ, theo d&otilde;i nồng độ oxy trong m&aacute;u, điều khiển nhạc, hỗ trợ cảnh b&aacute;o ứng dụng,&hellip;</p>

<p><img alt="Realme-Watch-2-1" src="https://hoanghamobile.com/tin-tuc/wp-content/uploads/2021/04/Realme-Watch-2-1.jpeg" style="height:943px; width:960px" /></p>

<p>Đặc biệt, thay v&igrave; chỉ hỗ trợ 14 chế độ luyện tập như Watch 1, Realme Watch 2 sẽ hỗ trợ tới 90 chế độ thể thao kh&aacute;c nhau. Trong số đ&oacute; c&oacute; cả c&aacute;c bộ m&ocirc;n như khi&ecirc;u vũ, c&acirc;u c&aacute; v&agrave; bowling.</p>

<h2><strong>Tạm kết&nbsp;</strong></h2>

<p>Ngo&agrave;i th&ocirc;ng tin về cấu h&igrave;nh v&agrave; t&iacute;nh năng nổi trội, hiện Realme vẫn chưa tiết lộ gi&aacute; b&aacute;n cũng như ng&agrave;y sản phẩm n&agrave;y l&ecirc;n kệ. C&ograve;n bạn nghĩ sao về chiếc đồng hồ th&ocirc;ng minh mới của Realme? H&atilde;y để lại &yacute; kiến c&aacute; nh&acirc;n ở phần b&igrave;nh luận v&agrave; cũng đừng qu&ecirc;n theo d&otilde;i&nbsp;<a href="http://tintuc.hoanghamobile.com/tin-tuc/">Ho&agrave;ng H&agrave; Mobile</a>&nbsp;để cập nhật c&aacute;c tin tức c&ocirc;ng nghệ mới nhất nh&eacute;!</p>
', 1, 7, 1, CAST(N'2021-04-27T16:48:30.967' AS DateTime), N'Nguyễn Sáng', CAST(N'2021-04-27T17:33:11.583' AS DateTime), N'Nguyễn Sáng', 0)
INSERT [dbo].[New] ([ID], [Name], [Image], [Slug], [Views], [Description], [Content], [ParentID], [Position], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdateBy], [IsDelete]) VALUES (20, N'Rò rỉ cấu hình Realme Watch 2 sắp ra mắt: Pin khủng tới đâu mà dùng 12 ngày không cần sạc', N'/Upload/Image/20210427164814Realmewacth2-696x364.jpg', N'ro-ri-cau-hinh-realme-watch-2-sap-ra-mat:-pin-khung-toi-dau-ma-dung-12-ngay-khong-can-sac', 0, N'Cách đây vài tháng, rò rỉ tin Realme sẽ sớm trình làng thế hộ đồng hồ thông minh thứ 2 trong năm nay. Giờ đây, thông số kỹ thuật cũng như tính năng của Watch 2 đã được bật mí.', N'<p><a href="https://hoanghamobile.com/tin-tuc/wp-content/uploads/2021/04/Realmewacth2.jpg"><img alt="Realmewacth2" src="https://hoanghamobile.com/tin-tuc/wp-content/uploads/2021/04/Realmewacth2-696x364.jpg" style="height:364px; width:696px" title="Realmewacth2" /></a></p>

<p>C&aacute;ch đ&acirc;y v&agrave;i th&aacute;ng, r&ograve; rỉ tin Realme sẽ sớm tr&igrave;nh l&agrave;ng thế hộ đồng hồ th&ocirc;ng minh thứ 2 trong năm nay. Giờ đ&acirc;y, th&ocirc;ng số kỹ thuật cũng như t&iacute;nh năng của Watch 2 đ&atilde; được bật m&iacute;. Tuy nhi&ecirc;n, ng&agrave;y ra mắt ch&iacute;nh thức vẫn chưa được h&atilde;ng tiết lộ.</p>

<h2><strong>Một số th&ocirc;ng tin về Realme Watch 2</strong></h2>

<p>Theo trang&nbsp;<em>Gizmochina</em>, smartwatch thế hệ thứ 2 của Realme cũng sẽ c&oacute; thiết kế mặt vu&ocirc;ng như đời tiền nhiệm. Phần d&acirc;y đeo được in mờ khẩu hiệu &ldquo;Dare to Leap&rdquo; quen thuộc của h&atilde;ng.</p>

<p>Về phần cấu h&igrave;nh, Realme Watch 2 sử dụng m&agrave;n h&igrave;nh m&agrave;u TFT 1.4 inch c&oacute; độ ph&acirc;n giải 320 x 320 pixel. N&oacute; được trang bị hỗ trợ kh&aacute;ng nước, chống bụi theo ti&ecirc;u chuẩn IP68. Ngo&agrave;i ra, sản phẩm cũng&nbsp;tương th&iacute;ch với tất cả c&aacute;c thiết bị chạy Android 5.0 trở l&ecirc;n.</p>

<p><img alt="Realme-Watch-2-2" src="https://hoanghamobile.com/tin-tuc/wp-content/uploads/2021/04/Realme-Watch-2-2.jpeg" style="height:565px; width:960px" /></p>

<p>Một điểm cộng kh&aacute;c l&agrave; dung lượng pin của Realme Watch 2 tăng gần gấp đ&ocirc;i so với thế hệ cũ (305mAh). Người d&ugrave;ng c&oacute; thể thoải m&aacute;i sử dụng trong v&ograve;ng 12 ng&agrave;y li&ecirc;n tục m&agrave; kh&ocirc;ng cần sạc.</p>

<p>Về phần t&iacute;nh năng, Realme Watch 2 c&oacute; thể theo d&otilde;i nhịp tim 24 giờ, theo d&otilde;i nồng độ oxy trong m&aacute;u, điều khiển nhạc, hỗ trợ cảnh b&aacute;o ứng dụng,&hellip;</p>

<p><img alt="Realme-Watch-2-1" src="https://hoanghamobile.com/tin-tuc/wp-content/uploads/2021/04/Realme-Watch-2-1.jpeg" style="height:943px; width:960px" /></p>

<p>Đặc biệt, thay v&igrave; chỉ hỗ trợ 14 chế độ luyện tập như Watch 1, Realme Watch 2 sẽ hỗ trợ tới 90 chế độ thể thao kh&aacute;c nhau. Trong số đ&oacute; c&oacute; cả c&aacute;c bộ m&ocirc;n như khi&ecirc;u vũ, c&acirc;u c&aacute; v&agrave; bowling.</p>

<h2><strong>Tạm kết&nbsp;</strong></h2>

<p>Ngo&agrave;i th&ocirc;ng tin về cấu h&igrave;nh v&agrave; t&iacute;nh năng nổi trội, hiện Realme vẫn chưa tiết lộ gi&aacute; b&aacute;n cũng như ng&agrave;y sản phẩm n&agrave;y l&ecirc;n kệ. C&ograve;n bạn nghĩ sao về chiếc đồng hồ th&ocirc;ng minh mới của Realme? H&atilde;y để lại &yacute; kiến c&aacute; nh&acirc;n ở phần b&igrave;nh luận v&agrave; cũng đừng qu&ecirc;n theo d&otilde;i&nbsp;<a href="http://tintuc.hoanghamobile.com/tin-tuc/">Ho&agrave;ng H&agrave; Mobile</a>&nbsp;để cập nhật c&aacute;c tin tức c&ocirc;ng nghệ mới nhất nh&eacute;!</p>
', 0, 7, 1, CAST(N'2021-04-27T17:31:08.067' AS DateTime), NULL, NULL, N'', 1)
INSERT [dbo].[New] ([ID], [Name], [Image], [Slug], [Views], [Description], [Content], [ParentID], [Position], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdateBy], [IsDelete]) VALUES (21, N'a', NULL, N'a', 0, NULL, NULL, 0, 2, 1, CAST(N'2021-05-11T12:49:15.280' AS DateTime), N'Nguyễn Sáng', NULL, N'', 1)
SET IDENTITY_INSERT [dbo].[New] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([ID], [Code], [AdminID], [CustomerID], [FullName], [Email], [Phone], [Note], [OrderStatusID], [Address], [DistrictID], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (3, N'LH1', 1, 4, N'Sáng', N'nguyensang@gmail.com', N'0123456789', N'sang love', 2, N'mê linh', N'340', 1, NULL, N'a', CAST(N'2021-04-20T22:23:49.917' AS DateTime), N'', 1)
INSERT [dbo].[Order] ([ID], [Code], [AdminID], [CustomerID], [FullName], [Email], [Phone], [Note], [OrderStatusID], [Address], [DistrictID], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (4, N'LH4', 1, 5, N'nguyen van sang', N'123@gmail.com', N'0312587959', N'giao buổi chiều', 1, N'Phương canh', N'019', 1, CAST(N'2021-04-20T22:24:32.497' AS DateTime), NULL, NULL, N'Nguyễn Sáng', 1)
INSERT [dbo].[Order] ([ID], [Code], [AdminID], [CustomerID], [FullName], [Email], [Phone], [Note], [OrderStatusID], [Address], [DistrictID], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (5, NULL, NULL, NULL, N'nguyen van sang', N'nguyenngocsang15991999@gmail.com', N'0312587959', NULL, NULL, N'thái bình', N'0', NULL, CAST(N'2021-05-07T22:54:40.890' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Order] ([ID], [Code], [AdminID], [CustomerID], [FullName], [Email], [Phone], [Note], [OrderStatusID], [Address], [DistrictID], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (6, NULL, NULL, NULL, N'nguyen van sang', N'123@gmail.com', N'0312587959', NULL, NULL, N'thái bình', N'0', NULL, CAST(N'2021-05-07T23:05:31.857' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Order] ([ID], [Code], [AdminID], [CustomerID], [FullName], [Email], [Phone], [Note], [OrderStatusID], [Address], [DistrictID], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (7, NULL, NULL, 10, NULL, NULL, NULL, NULL, 1, NULL, N'0', 1, CAST(N'2021-05-07T23:10:25.017' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[Order] ([ID], [Code], [AdminID], [CustomerID], [FullName], [Email], [Phone], [Note], [OrderStatusID], [Address], [DistrictID], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (8, NULL, NULL, 10, NULL, NULL, NULL, NULL, 1, NULL, N'0', 1, CAST(N'2021-05-07T23:23:19.267' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[Order] ([ID], [Code], [AdminID], [CustomerID], [FullName], [Email], [Phone], [Note], [OrderStatusID], [Address], [DistrictID], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (9, NULL, NULL, 10, N'nguyen van sang', N'123@gmail.com', N'0312587959', NULL, 1, N'thái bình', N'026', 1, CAST(N'2021-05-07T23:24:23.267' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[Order] ([ID], [Code], [AdminID], [CustomerID], [FullName], [Email], [Phone], [Note], [OrderStatusID], [Address], [DistrictID], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (10, NULL, NULL, 10, N'nguyen van sang', N'123@gmail.com', N'0312587959', NULL, 1, N'thái bình', N'202', 1, CAST(N'2021-05-07T23:33:12.483' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[Order] ([ID], [Code], [AdminID], [CustomerID], [FullName], [Email], [Phone], [Note], [OrderStatusID], [Address], [DistrictID], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (11, N'LH11', 1, 4, N'nguyen van sang', N'abc@gmail.com', N'0312587959', N'gffdg', 1, N'thái bình', N'021', 1, CAST(N'2021-05-11T10:57:41.787' AS DateTime), NULL, CAST(N'2021-05-11T10:57:50.483' AS DateTime), N'', 0)
INSERT [dbo].[Order] ([ID], [Code], [AdminID], [CustomerID], [FullName], [Email], [Phone], [Note], [OrderStatusID], [Address], [DistrictID], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (12, NULL, NULL, 10, NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, CAST(N'2021-05-11T15:25:24.707' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[Order] ([ID], [Code], [AdminID], [CustomerID], [FullName], [Email], [Phone], [Note], [OrderStatusID], [Address], [DistrictID], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (13, NULL, NULL, 10, NULL, NULL, NULL, NULL, 1, NULL, N'0', 1, CAST(N'2021-05-11T15:30:46.227' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[Order] ([ID], [Code], [AdminID], [CustomerID], [FullName], [Email], [Phone], [Note], [OrderStatusID], [Address], [DistrictID], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (14, NULL, NULL, 10, NULL, NULL, NULL, NULL, 1, NULL, N'0', 1, CAST(N'2021-05-11T15:32:43.537' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[Order] ([ID], [Code], [AdminID], [CustomerID], [FullName], [Email], [Phone], [Note], [OrderStatusID], [Address], [DistrictID], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (15, NULL, NULL, 10, NULL, NULL, NULL, NULL, 1, NULL, N'0', 1, CAST(N'2021-05-11T16:00:43.740' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[Order] ([ID], [Code], [AdminID], [CustomerID], [FullName], [Email], [Phone], [Note], [OrderStatusID], [Address], [DistrictID], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (16, NULL, NULL, 10, NULL, NULL, NULL, NULL, 1, NULL, N'0', 1, CAST(N'2021-05-11T16:02:25.543' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[Order] ([ID], [Code], [AdminID], [CustomerID], [FullName], [Email], [Phone], [Note], [OrderStatusID], [Address], [DistrictID], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (17, NULL, NULL, 10, NULL, N'123@gmail.com', NULL, NULL, 1, NULL, N'0', 1, CAST(N'2021-05-11T16:03:36.930' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[Order] ([ID], [Code], [AdminID], [CustomerID], [FullName], [Email], [Phone], [Note], [OrderStatusID], [Address], [DistrictID], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (18, NULL, NULL, 10, NULL, NULL, NULL, NULL, 1, NULL, N'0', 1, CAST(N'2021-05-11T17:16:27.597' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[Order] ([ID], [Code], [AdminID], [CustomerID], [FullName], [Email], [Phone], [Note], [OrderStatusID], [Address], [DistrictID], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (19, NULL, NULL, 10, N'nguyen van sang', N'123@gmail.com', N'0312587959', NULL, 1, N'thái bình', N'0', 1, CAST(N'2021-05-11T18:02:00.707' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[Order] ([ID], [Code], [AdminID], [CustomerID], [FullName], [Email], [Phone], [Note], [OrderStatusID], [Address], [DistrictID], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (20, NULL, NULL, 10, N'nguyen van sang', N'123@gmail.com', N'0312587959', NULL, 1, N'thái bình', N'0', 1, CAST(N'2021-05-11T18:04:52.660' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[Order] ([ID], [Code], [AdminID], [CustomerID], [FullName], [Email], [Phone], [Note], [OrderStatusID], [Address], [DistrictID], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (21, N'LH0', NULL, 10, N'nguyen van sang', N'123@gmail.com', N'0312587959', NULL, 1, N'thái bình', N'231', 1, CAST(N'2021-05-11T18:13:53.450' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[Order] ([ID], [Code], [AdminID], [CustomerID], [FullName], [Email], [Phone], [Note], [OrderStatusID], [Address], [DistrictID], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (22, N'LH002', NULL, 10, N'nguyen van sang', N'nguyenngocsang15991999@gmail.com', N'0312587959', NULL, 1, N'thái bình', N'0', 1, CAST(N'2021-05-11T18:22:22.553' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[Order] ([ID], [Code], [AdminID], [CustomerID], [FullName], [Email], [Phone], [Note], [OrderStatusID], [Address], [DistrictID], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (23, N'LH2', NULL, 10, N'nguyen van sang', N'trungtv@gmail.com', N'0312587959', NULL, 1, N'thái bình', N'0', 1, CAST(N'2021-05-11T18:25:38.133' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[Order] ([ID], [Code], [AdminID], [CustomerID], [FullName], [Email], [Phone], [Note], [OrderStatusID], [Address], [DistrictID], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (24, N'LH216', NULL, 10, N'nguyen van sang', N'1234@gmail.com', N'0312587959', NULL, 1, N'thái bình', N'0', 1, CAST(N'2021-05-11T21:18:34.750' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[Order] ([ID], [Code], [AdminID], [CustomerID], [FullName], [Email], [Phone], [Note], [OrderStatusID], [Address], [DistrictID], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (25, N'LH056', NULL, 10, N'nguyen van sang', N'123@gmail.com', N'0312587959', NULL, 1, N'thái bình', N'0', 1, CAST(N'2021-05-11T23:37:25.307' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[Order] ([ID], [Code], [AdminID], [CustomerID], [FullName], [Email], [Phone], [Note], [OrderStatusID], [Address], [DistrictID], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (26, N'LH164', NULL, 10, N'nguyen van sang', N'123@gmail.com', N'0312587959', NULL, 1, N'thái bình', N'0', 1, CAST(N'2021-05-11T23:40:03.647' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[Order] ([ID], [Code], [AdminID], [CustomerID], [FullName], [Email], [Phone], [Note], [OrderStatusID], [Address], [DistrictID], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (27, N'LH654', NULL, 10, N'nguyen van sang', N'123@gmail.com', N'0312587959', NULL, 1, N'thái bình', N'0', 1, CAST(N'2021-05-12T11:10:30.043' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[Order] ([ID], [Code], [AdminID], [CustomerID], [FullName], [Email], [Phone], [Note], [OrderStatusID], [Address], [DistrictID], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (28, N'LH804', NULL, 10, N'nguyen van sang', N'123@gmail.com', N'0312587959', NULL, 1, N'thái bình', N'0', 1, CAST(N'2021-05-12T12:15:36.587' AS DateTime), NULL, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([ID], [OrderID], [ProductID], [ColorID], [Quantity], [Price], [PriceShip], [TotalPrice]) VALUES (26, 27, 11, NULL, 1, CAST(15950000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(15950000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ID], [OrderID], [ProductID], [ColorID], [Quantity], [Price], [PriceShip], [TotalPrice]) VALUES (27, 28, 11, 17, 1, CAST(15950000 AS Decimal(18, 0)), NULL, NULL)
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderStatus] ON 

INSERT [dbo].[OrderStatus] ([ID], [Name]) VALUES (1, N'Mới')
INSERT [dbo].[OrderStatus] ([ID], [Name]) VALUES (2, N'Đang xử lý')
INSERT [dbo].[OrderStatus] ([ID], [Name]) VALUES (3, N'Hoàn thành')
INSERT [dbo].[OrderStatus] ([ID], [Name]) VALUES (4, N'Hủy')
SET IDENTITY_INSERT [dbo].[OrderStatus] OFF
GO
SET IDENTITY_INSERT [dbo].[Policy] ON 

INSERT [dbo].[Policy] ([ID], [Name], [Slug], [Content], [Image], [Position], [ParentID], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (1, N'Vận Chuyển', NULL, NULL, N'/Upload/Image/20210413175738logo-devmaster.png', 1, 0, 1, NULL, NULL, CAST(N'2021-04-13T17:57:52.093' AS DateTime), N'Nguyễn Sáng', 1)
INSERT [dbo].[Policy] ([ID], [Name], [Slug], [Content], [Image], [Position], [ParentID], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (2, N'Mua hang', NULL, N'a', NULL, 1, 1, 1, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Policy] ([ID], [Name], [Slug], [Content], [Image], [Position], [ParentID], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (3, N'sang', NULL, NULL, N'/Upload/Image/20210402145137Screenshot (2).png', 0, 0, 1, CAST(N'2021-04-10T21:00:00.503' AS DateTime), N'Nguyễn Sáng', NULL, N'Nguyễn Sáng', 1)
INSERT [dbo].[Policy] ([ID], [Name], [Slug], [Content], [Image], [Position], [ParentID], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (4, N'sang', NULL, NULL, N'/Upload/Image/20210402145137Screenshot (2).png', 5, 0, 1, CAST(N'2021-04-10T21:00:41.703' AS DateTime), N'Nguyễn Sáng', NULL, N'Nguyễn Sáng', 1)
INSERT [dbo].[Policy] ([ID], [Name], [Slug], [Content], [Image], [Position], [ParentID], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (5, N'd', NULL, NULL, N'/Upload/Image/20210413175738logo-devmaster.png', 3, 0, 1, CAST(N'2021-04-10T21:06:48.530' AS DateTime), N'Nguyễn Sáng', CAST(N'2021-04-13T17:58:02.950' AS DateTime), N'Nguyễn Sáng', 1)
INSERT [dbo].[Policy] ([ID], [Name], [Slug], [Content], [Image], [Position], [ParentID], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (6, N'Chính sách bảo hành', N'chinh-sach-bao-hanh', NULL, N'/Upload/Image/20210509005337Vsmart-sau-tet-02-3-696x392.jpg', 0, 0, 1, CAST(N'2021-04-10T21:14:58.050' AS DateTime), N'Nguyễn Sáng', CAST(N'2021-05-09T00:53:40.150' AS DateTime), N'Nguyễn Sáng', 0)
INSERT [dbo].[Policy] ([ID], [Name], [Slug], [Content], [Image], [Position], [ParentID], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (7, N'Dùng thử', N'dung-thu', N'<h1>Ch&iacute;nh s&aacute;ch bảo h&agrave;nh</h1>

<p><strong>Lan Hằng Mobile</strong>&nbsp;rất lấy l&agrave;m tiếc v&agrave; th&agrave;nh thật xin lỗi qu&yacute; kh&aacute;ch h&agrave;ng trong trường hợp điện thoại, m&aacute;y t&iacute;nh bảng của qu&yacute; kh&aacute;ch bị hỏng v&agrave; phải mang đi bảo h&agrave;nh. Hệ thống Di Động Việt mang đến 02 ch&iacute;nh s&aacute;ch bảo h&agrave;nh: bảo h&agrave;nh ti&ecirc;u chuẩn v&agrave; bảo h&agrave;nh mở rộng.</p>

<p><strong>Bảo h&agrave;nh ti&ecirc;u chuẩn</strong>&nbsp;nổi bật với chế độ&nbsp;<strong>d&ugrave;ng thử 07 ng&agrave;y</strong>,&nbsp;<strong>1 đổi 1 trong 33 ng&agrave;y</strong>.&nbsp;<strong>Bảo h&agrave;nh mở rộng</strong>&nbsp;nổi bật với ch&iacute;nh s&aacute;ch&nbsp;<strong>1 đổi 1 rơi vỡ</strong>,&nbsp;<strong>rớt nước</strong>. Cả 2 ch&iacute;nh s&aacute;ch đều được Di Động Việt hỗ trợ tiếp nhận niềm nở, xử l&yacute; nhanh ch&oacute;ng, đem đến sự h&agrave;i l&ograve;ng cho kh&aacute;ch h&agrave;ng.</p>

<p><strong>Chi tiết ch&iacute;nh s&aacute;ch bảo h&agrave;nh tại hệ thống Lan Hằng:</strong></p>

<p>I. D&Ugrave;NG THỬ 7 NG&Agrave;Y MIỄN PH&Iacute;</p>

<p>II. CH&Iacute;NH S&Aacute;CH BẢO H&Agrave;NH TI&Ecirc;U CHUẨN</p>

<p>III. BẢO H&Agrave;NH MỞ RỘNG</p>

<h3>I. D&Ugrave;NG THỬ 7 NG&Agrave;Y MIỄN PH&Iacute;</h3>

<ul>
	<li>Tất cả điện thoại, m&aacute;y t&iacute;nh bảng đ&atilde; qua sử dụng.</li>
	<li>Qu&yacute; kh&aacute;ch ho&agrave;n to&agrave;n thoải m&aacute;i trải nghiệm sản phẩm trong 7 ng&agrave;y đầu ti&ecirc;n.</li>
	<li>Nếu sản phẩm bị lỗi hoặc kh&ocirc;ng ph&ugrave; hợp với nhu cầu sử dụng, Qu&yacute; kh&aacute;ch c&oacute; thể y&ecirc;u cầu đổi 1 sản phẩm kh&aacute;c hoặc nhận lại tiền 100% gi&aacute; trị sản phẩm.</li>
</ul>

<p><strong>Lưu &yacute;</strong>:&nbsp;M&aacute;y đổi trả phải giữ nguy&ecirc;n hiện trạng ban đầu, kh&ocirc;ng c&oacute; dấu hiệu trầy cấn, m&oacute;p, rơi vỡ, v&agrave;o nước, d&iacute;nh t&agrave;i khoản, mất v&acirc;n tay v&agrave; c&ograve;n đầy đủ phụ kiện đi k&egrave;m.</p>

<h3>&nbsp;</h3>
', NULL, 0, 6, 1, CAST(N'2021-04-10T23:17:49.510' AS DateTime), NULL, CAST(N'2021-04-25T17:06:59.650' AS DateTime), NULL, 0)
INSERT [dbo].[Policy] ([ID], [Name], [Slug], [Content], [Image], [Position], [ParentID], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (8, N'Luôn luôn nhanh', NULL, N'<p>DFDSFDS</p>
', NULL, 2, 6, 1, CAST(N'2021-04-10T23:34:42.443' AS DateTime), NULL, CAST(N'2021-04-10T23:42:30.793' AS DateTime), NULL, 1)
INSERT [dbo].[Policy] ([ID], [Name], [Slug], [Content], [Image], [Position], [ParentID], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (9, N'Chính sách đổi trả', N'chinh-sach-doi-tra', NULL, N'/Upload/Image/202104161305244_12.jpg', 1, 0, 1, CAST(N'2021-04-10T23:40:42.553' AS DateTime), N'Nguyễn Sáng', CAST(N'2021-05-09T00:53:49.353' AS DateTime), N'Nguyễn Sáng', 0)
INSERT [dbo].[Policy] ([ID], [Name], [Slug], [Content], [Image], [Position], [ParentID], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (10, N'Chính sách đổi trả dành cho sản phẩm mới', NULL, N'<p><img src="https://didongviet.vn/pub/media/wysiwyg/Chinh-sach/chinh-sach-doi-tra/chinh-sach-doi-tra-1-didongviet_1.jpg" title="chinh-sach-doi-tra-ddv-1" /></p>

<p><strong>Ghi ch&uacute;:</strong></p>

<p>1. Di Động Việt c&oacute; quyền từ chối thu lại một số sản phẩm Di Động Việt đ&aacute;nh gi&aacute; l&agrave; kh&ocirc;ng thể thu lại được.</p>

<p>&nbsp;</p>

<p>2. Trong th&aacute;ng đầu ti&ecirc;n, nếu m&aacute;y kh&ocirc;ng c&ograve;n đủ hộp, phụ kiện sẽ t&iacute;nh ph&iacute; 5% mỗi phụ kiện thiếu (Tai nghe, sạc, c&aacute;p) v&agrave; 2% nếu kh&ocirc;ng c&oacute; hộp</p>

<p>3. Ch&iacute;nh s&aacute;ch đổi trả n&agrave;y kh&ocirc;ng &aacute;p dụng đối với sản phẩm iPhone ch&iacute;nh h&atilde;ng m&atilde; VN/A. (Sản phẩm iPhone m&aacute;y c&ocirc;ng ty c&oacute; ch&iacute;nh s&aacute;ch ri&ecirc;ng.)</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<h3>&nbsp;</h3>

<h3>&nbsp;</h3>

<h3>2. Ch&iacute;nh s&aacute;ch đổi trả d&agrave;nh cho sản phẩm đ&atilde; qua sử dụng</h3>

<p><img src="https://didongviet.vn/pub/media/wysiwyg/Chinh-sach/chinh-sach-doi-tra/chinh-sach-doi-tra-2-didongviet_1.jpg" title="chinh-sach-doi-tra-2" /></p>

<p><strong>Ghi ch&uacute;:</strong></p>

<p>1. Di Động Việt c&oacute; quyền từ chối thu lại 01 số sản phẩm Di Động Việt đ&aacute;nh gi&aacute; l&agrave; kh&ocirc;ng thể thu lại được.</p>

<p>2. Trong th&aacute;ng đầu ti&ecirc;n, nếu m&aacute;y kh&ocirc;ng c&ograve;n đủ hộp, phụ kiện sẽ t&iacute;nh ph&iacute; 5% mỗi phụ kiện thiếu (Tai nghe, sạc, c&aacute;p) v&agrave; 2% nếu kh&ocirc;ng c&oacute; hộp</p>

<p>3. Ch&iacute;nh s&aacute;ch đổi trả n&agrave;y kh&ocirc;ng &aacute;p dụng đối với sản phẩm iPhone ch&iacute;nh h&atilde;ng m&atilde; VN/A. (Sản phẩm iPhone m&aacute;y c&ocirc;ng ty c&oacute; ch&iacute;nh s&aacute;ch ri&ecirc;ng.)</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<h3>3. Điều kiện đổi trả sản phẩm:</h3>

<p>1. Với c&aacute;c sản phẩm mua trả g&oacute;p, trước khi tiến h&agrave;nh trả m&aacute;y, vui l&ograve;ng thanh l&yacute; hợp đồng trả g&oacute;p với c&ocirc;ng ty t&agrave;i ch&iacute;nh.</p>

<p>2. Đối với c&aacute;c sản phẩm lỗi do người sử dụng: Di Động Việt c&oacute; quyền từ chối đổi trả với sản phẩm bị va chạm, cấn m&oacute;p, v&agrave;o nước...kh&ocirc;ng đủ điều kiện bảo h&agrave;nh, Di Động Việt tiếp nhận bảo h&agrave;nh c&oacute; t&iacute;nh ph&iacute;.</p>

<p>3. M&aacute;y c&ograve;n như l&uacute;c mới mua, kh&ocirc;ng trầy xướt, cấn m&oacute;p, đầy đủ phụ kiện đi k&egrave;m, đ&atilde; đăng xuất c&aacute;c t&agrave;i khoản bảo mật như iCloud, Micloud, Samsung Cloud...</p>

<p>4. Trong trường hợp m&aacute;y bị trầy xướt, cấn m&oacute;p, kh&ocirc;ng như t&igrave;nh trạng ban đầu, Di Động Việt hỗ trợ thu lại theo mức gi&aacute; thoả thuận (C&oacute; t&iacute;nh ph&iacute; hao m&ograve;n h&igrave;nh thức)</p>
', NULL, 0, 9, 1, CAST(N'2021-04-25T17:29:07.930' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[Policy] ([ID], [Name], [Slug], [Content], [Image], [Position], [ParentID], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (11, N'Tiêu chuẩn', N'tieu-chuan', N'<h3>II. CH&Iacute;NH S&Aacute;CH BẢO H&Agrave;NH TI&Ecirc;U CHUẨN</h3>

<p>C&aacute;c sản phẩm ch&iacute;nh h&atilde;ng, Qu&yacute; kh&aacute;ch h&agrave;ng c&oacute; thể tới trực tiếp c&aacute;c TTBH ch&iacute;nh h&atilde;ng; Trung t&acirc;m Bảo h&agrave;nh ủy quyền Viện Di Động hoặc c&oacute; thể đến trực tiếp c&aacute;c cửa h&agrave;ng của Di Động Việt để được tiếp nhận gửi m&aacute;y bảo h&agrave;nh ch&iacute;nh h&atilde;ng.</p>

<p>Y&ecirc;u cầu tiếp nhận bảo h&agrave;nh t&ugrave;y theo quy định của từng h&atilde;ng, chi tiết c&oacute; trong bảng sau:</p>

<p><img alt="" src="https://didongviet.vn/pub/media/wysiwyg/bao-hanh/bhc.png" /></p>

<p><strong>Điều kiện đổi trả</strong></p>

<ul>
	<li>M&aacute;y: Giữ nguy&ecirc;n hiện trạng ban đầu, kh&ocirc;ng trầy xướt, kh&ocirc;ng d&aacute;n decal, h&igrave;nh trang tr&iacute;. M&aacute;y cũ c&oacute; t&igrave;nh trạng sản phẩm như l&uacute;c mới mua.&nbsp;</li>
	<li>Đối với c&aacute;c sản phẩm Apple Watch: kh&ocirc;ng bảo h&agrave;nh c&aacute;c trường hợp về&nbsp;nguồn, m&agrave;n h&igrave;nh, rơi vỡ, v&agrave;o nước, cấn m&oacute;p, c&oacute; t&aacute;c động ngoại lực...</li>
	<li>Hộp: Như mới, kh&ocirc;ng m&oacute;p m&eacute;o, r&aacute;ch, vỡ, bị viết, vẽ, quấn băng d&iacute;nh, keo; c&oacute; Serial/IMEI tr&ecirc;n hộp tr&ugrave;ng với th&acirc;n m&aacute;y (mất hộp trừ ph&iacute; 2%).&nbsp;</li>
	<li>Phụ kiện v&agrave; qu&agrave; tặng: C&ograve;n đầy đủ, nguy&ecirc;n vẹn, kh&ocirc;ng m&oacute;p m&eacute;o trầy xước hoặc bị hư hại trong qu&aacute; tr&igrave;nh sử dụng.&nbsp;</li>
	<li>T&agrave;i khoản: M&aacute;y đ&atilde; đ&atilde; được đăng xuất khỏi tất cả c&aacute;c t&agrave;i khoản như: iCloud, Google Account, Mi Account&hellip;</li>
</ul>

<p><strong>Lưu &yacute;:&nbsp;</strong></p>

<ul>
	<li>Việc đổi m&aacute;y c&oacute; thể kh&ocirc;ng đ&uacute;ng với m&agrave;u sắc như sản phẩm ban đầu&nbsp;</li>
	<li>Di Động Việt từ chối bảo h&agrave;nh c&aacute;c lỗi kh&ocirc;ng thể khắc phục được: Mất dữ liệu, mất Touch ID, mất Face ID, d&iacute;nh t&agrave;i khoản iCloud, MiCloud, SamsungCloud. M&aacute;y bị cong sườn, cong main, dập n&aacute;t, ch&aacute;y nổ.&nbsp;</li>
	<li>C&aacute;c vấn đề về thẩm mỹ b&ecirc;n ngo&agrave;i như cấn, m&oacute;p, tr&oacute;c sơn, trầy xước, sẽ kh&ocirc;ng thuộc phạm vi bảo h&agrave;nh.&nbsp;</li>
	<li>M&aacute;y bị can thiệp phần cứng m&agrave; kh&ocirc;ng c&oacute; chỉ định từ NSX hoặc Di Động Việt/ Viện Di Động</li>
</ul>
', NULL, 1, 6, 1, CAST(N'2021-04-25T22:31:42.643' AS DateTime), NULL, CAST(N'2021-04-25T22:32:11.973' AS DateTime), NULL, 0)
SET IDENTITY_INSERT [dbo].[Policy] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ID], [Code], [Name], [Image], [Slug], [Price], [PriceSale], [Description], [Content], [IsHot], [OldNew], [Total], [Buyed], [Like], [View], [Position], [Gift], [CategoryID], [BrandID], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (1, N'SP1', N'Samsung A51', NULL, N'samsung', CAST(20000 AS Decimal(18, 0)), CAST(15000 AS Decimal(18, 0)), N'dfsd', N'dfdsfdsg', 1, 1, NULL, NULL, 1200, 200, 0, NULL, 1, 14, 1, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Product] ([ID], [Code], [Name], [Image], [Slug], [Price], [PriceSale], [Description], [Content], [IsHot], [OldNew], [Total], [Buyed], [Like], [View], [Position], [Gift], [CategoryID], [BrandID], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (2, N'002', N'Iphone12', N'/Upload/Image/20210402145137Screenshot (2).png', N'iphone12', CAST(22700000 AS Decimal(18, 0)), CAST(2100000 AS Decimal(18, 0)), N'<p>fgdfdsf</p>
', N'<p>dfdsfdsf</p>
', 1, 1, NULL, NULL, 0, 0, 1, NULL, 0, 13, 1, CAST(N'2021-04-04T22:09:04.910' AS DateTime), N'Nguyễn Sáng', NULL, N'Nguyễn Sáng', 1)
INSERT [dbo].[Product] ([ID], [Code], [Name], [Image], [Slug], [Price], [PriceSale], [Description], [Content], [IsHot], [OldNew], [Total], [Buyed], [Like], [View], [Position], [Gift], [CategoryID], [BrandID], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (3, N'003', N'sang', N'/Upload/Image/20210402145137Screenshot (2).png', N'sang', CAST(20490000 AS Decimal(18, 0)), CAST(2022424 AS Decimal(18, 0)), N'<p>rgtegfd</p>
', N'<p>fdsfdsfds</p>
', 1, 1, NULL, NULL, 0, 0, 1, NULL, 0, 13, 1, CAST(N'2021-04-04T22:15:07.990' AS DateTime), N'Nguyễn Sáng', NULL, N'Nguyễn Sáng', 1)
INSERT [dbo].[Product] ([ID], [Code], [Name], [Image], [Slug], [Price], [PriceSale], [Description], [Content], [IsHot], [OldNew], [Total], [Buyed], [Like], [View], [Position], [Gift], [CategoryID], [BrandID], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (4, N'002', N'sang', N'/Upload/Image/20210402145137Screenshot (2).png', N'sang', CAST(20490000 AS Decimal(18, 0)), CAST(2 AS Decimal(18, 0)), N'<p>dfdsfds</p>
', N'<p>dfdsf</p>
', 1, 1, NULL, NULL, 0, 0, 3, NULL, 1, 13, 1, CAST(N'2021-04-04T22:29:47.623' AS DateTime), N'Nguyễn Sáng', NULL, N'Nguyễn Sáng', 1)
INSERT [dbo].[Product] ([ID], [Code], [Name], [Image], [Slug], [Price], [PriceSale], [Description], [Content], [IsHot], [OldNew], [Total], [Buyed], [Like], [View], [Position], [Gift], [CategoryID], [BrandID], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (5, N'003', N'sang', N'/Upload/Image/20210402145137Screenshot (2).png', N'sang', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), N'<p>dfdsf</p>
', N'<p>dfdsf</p>
', 1, 1, NULL, NULL, 0, 0, 0, NULL, 1, 13, 1, CAST(N'2021-04-04T22:30:40.723' AS DateTime), N'Nguyễn Sáng', NULL, N'Nguyễn Sáng', 1)
INSERT [dbo].[Product] ([ID], [Code], [Name], [Image], [Slug], [Price], [PriceSale], [Description], [Content], [IsHot], [OldNew], [Total], [Buyed], [Like], [View], [Position], [Gift], [CategoryID], [BrandID], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (6, N'SP2', N'samsung Note 20 Ultra', N'/Upload/Image/20210402145137Screenshot (2).png', N'samsung-note-20-ultra', CAST(20490000 AS Decimal(18, 0)), CAST(20000 AS Decimal(18, 0)), N'<p>fdsffsdf</p>
', N'<p>dsfsdf</p>
', 1, 1, NULL, NULL, 0, 0, 1, NULL, 1, 14, 1, CAST(N'2021-04-04T22:33:50.063' AS DateTime), N'Nguyễn Sáng', CAST(N'2021-04-10T23:20:26.187' AS DateTime), N'Nguyễn Sáng', 1)
INSERT [dbo].[Product] ([ID], [Code], [Name], [Image], [Slug], [Price], [PriceSale], [Description], [Content], [IsHot], [OldNew], [Total], [Buyed], [Like], [View], [Position], [Gift], [CategoryID], [BrandID], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (7, N'SP04', N'Iphone 12 ProMax', N'/Upload/Image/20210402145137Screenshot (2).png', N'iphone-12-promax', CAST(20490000 AS Decimal(18, 0)), CAST(201242545 AS Decimal(18, 0)), N'<p>dfsdfdsf</p>
', N'<p>sdfsdfdsf</p>
', 1, 1, NULL, NULL, 0, 0, 3, NULL, 1, 13, 1, CAST(N'2021-04-04T22:45:40.217' AS DateTime), N'Nguyễn Sáng', CAST(N'2021-04-05T00:34:36.320' AS DateTime), N'Nguyễn Sáng', 1)
INSERT [dbo].[Product] ([ID], [Code], [Name], [Image], [Slug], [Price], [PriceSale], [Description], [Content], [IsHot], [OldNew], [Total], [Buyed], [Like], [View], [Position], [Gift], [CategoryID], [BrandID], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (8, N'S03', N'Samsung', N'/Upload/Image/20210402145137Screenshot (2).png', N'samsung', CAST(2124 AS Decimal(18, 0)), CAST(5745 AS Decimal(18, 0)), N'<p>cvxcvx</p>
', N'<p>vxcvcxv</p>
', 0, 0, NULL, NULL, 0, 0, 2, NULL, 1, 13, 1, CAST(N'2021-04-04T22:50:54.000' AS DateTime), N'Nguyễn Sáng', NULL, N'Nguyễn Sáng', 1)
INSERT [dbo].[Product] ([ID], [Code], [Name], [Image], [Slug], [Price], [PriceSale], [Description], [Content], [IsHot], [OldNew], [Total], [Buyed], [Like], [View], [Position], [Gift], [CategoryID], [BrandID], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (9, N'IP12', N'IPhone 12 Pro', N'/Upload/Image/20210413224035thumb_IP12Pro_3.jpg', N'iphone-12-pro', CAST(21000000 AS Decimal(18, 0)), CAST(20000000 AS Decimal(18, 0)), N'<p>Iphone 12 đẹp</p>
', N'<p>Iphone 12</p>
', 1, 1, NULL, NULL, 0, 0, 1, NULL, 5, 13, 1, CAST(N'2021-04-13T23:06:43.633' AS DateTime), N'Nguyễn Sáng', NULL, N'Nguyễn Sáng', 1)
INSERT [dbo].[Product] ([ID], [Code], [Name], [Image], [Slug], [Price], [PriceSale], [Description], [Content], [IsHot], [OldNew], [Total], [Buyed], [Like], [View], [Position], [Gift], [CategoryID], [BrandID], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (10, N'IP11PM', N'Iphone 11 promax', N'/Upload/Image/20210413224035thumb_IP12Pro_3.jpg', N'iphone-11-promax', CAST(19000000 AS Decimal(18, 0)), CAST(900000 AS Decimal(18, 0)), N'<p>gffdgdf</p>
', N'<p>fgfdgdfgd</p>
', 1, 1, NULL, NULL, 0, 0, 1, NULL, 5, 13, 1, CAST(N'2021-04-13T23:40:58.383' AS DateTime), N'Nguyễn Sáng', CAST(N'2021-04-13T23:59:14.630' AS DateTime), N'Nguyễn Sáng', 1)
INSERT [dbo].[Product] ([ID], [Code], [Name], [Image], [Slug], [Price], [PriceSale], [Description], [Content], [IsHot], [OldNew], [Total], [Buyed], [Like], [View], [Position], [Gift], [CategoryID], [BrandID], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (11, N'SP1', N'Apple iPhone 12 Mini - 64GB - Chính hãng VN/A', N'/Upload/Image/20210416144330aar-12-pro-black_10.jpg', N'apple-iphone-12-mini---64gb---chinh-hang-vn-a', CAST(20990000 AS Decimal(18, 0)), CAST(15950000 AS Decimal(18, 0)), N'<h2>Mua điện thoại iPhone 12 Mini gi&aacute; rẻ ch&iacute;nh h&atilde;ng tại Lan Hằng&nbsp;Mobile</h2>

<p>iPhone 12 Mini &ndash; chiếc điện thoại &ldquo;em &uacute;t&rdquo; trong thế hệ iPhone 12 năm nay đ&atilde; ch&iacute;nh thức được ra mắt. Mang trong m&igrave;nh những cải tiến vượt trội về hiệu năng trong một th&acirc;n h&igrave;nh nhỏ b&eacute;, iPhone 12 Mini hứa hẹn sẽ l&agrave;m b&ugrave;ng nổ thị trường di động trong thời gian tới.</p>
', N'<h2>Mua điện thoại iPhone 12 Mini gi&aacute; rẻ ch&iacute;nh h&atilde;ng tại Lan Hằng Mobile</h2>

<p>iPhone 12 Mini &ndash; chiếc điện thoại &ldquo;em &uacute;t&rdquo; trong thế hệ iPhone 12 năm nay đ&atilde; ch&iacute;nh thức được ra mắt. Mang trong m&igrave;nh những cải tiến vượt trội về hiệu năng trong một th&acirc;n h&igrave;nh nhỏ b&eacute;, iPhone 12 Mini hứa hẹn sẽ l&agrave;m b&ugrave;ng nổ thị trường di động trong thời gian tới.</p>
', 1, 1, NULL, NULL, 0, 361, 0, N'<p>Tặng bộ qu&agrave; tặng gi&aacute; trị l&ecirc;n tới&nbsp;<strong>900.000Đ</strong></p>

<p>&rArr;&nbsp;Bộ Sạc C&aacute;p Nhanh ch&iacute;nh h&atilde;ng&nbsp;trị gi&aacute;&nbsp;<strong>250.000Đ</strong><br />
&rArr;&nbsp;Tai Nghe samsung ch&iacute;nh h&atilde;ng&nbsp;trị gi&aacute;&nbsp;<strong>200.000Đ</strong><br />
&rArr;&nbsp;0TG chuyển đổi dữ liệu trị gi&aacute;&nbsp;<strong>150.000Đ</strong><br />
&rArr;&nbsp;Ốp ch&iacute;nh h&atilde;ng&nbsp;trị gi&aacute;&nbsp;<strong>100.000Đ</strong><br />
&rArr; D&aacute;n m&agrave;n h&igrave;nh trị gi&aacute;&nbsp;<strong>150.000Đ</strong><br />
&rArr; Que chọc sim trị gi&aacute;&nbsp;<strong>50.000Đ</strong><br />
__________________________________</p>

<p>Ch&iacute;nh s&aacute;ch chỉ c&oacute;&nbsp;<strong>DUY NHẤT</strong>&nbsp;tại&nbsp;<strong>LANHANGMOBILE:</strong></p>

<p>&rArr;&nbsp;Hỗ trợ thu cũ đổi mới&nbsp;-&nbsp;gi&aacute; thu lại cao<br />
&rArr;&nbsp;BH&nbsp;Nguồn - M&agrave;n h&igrave;nh - Cảm ứng&nbsp;trong 12 th&aacute;ng<br />
&rArr;&nbsp;Bao test&nbsp;trong 90 ng&agrave;y<br />
&rArr;&nbsp;Ho&agrave;n tiền 100%&nbsp;nếu ph&aacute;t hiện m&aacute;y kh&ocirc;ng c&ograve;n Zin<br />
&rArr; Miễn ph&iacute; ship&nbsp;to&agrave;n quốc</p>
', 7, 13, 1, CAST(N'2021-04-16T14:44:06.470' AS DateTime), N'Nguyễn Sáng', CAST(N'2021-05-12T11:57:35.010' AS DateTime), N'Nguyễn Sáng', 0)
INSERT [dbo].[Product] ([ID], [Code], [Name], [Image], [Slug], [Price], [PriceSale], [Description], [Content], [IsHot], [OldNew], [Total], [Buyed], [Like], [View], [Position], [Gift], [CategoryID], [BrandID], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (12, N'SP2', N'Apple iPhone 12 - 64GB - Chính hãng VN/A', N'/Upload/Image/20210416144821iphone-12-pro-vang_3.jpg', N'apple-iphone-12---64gb---chinh-hang-vn-a', CAST(24990000 AS Decimal(18, 0)), CAST(19890000 AS Decimal(18, 0)), N'<h2>Mua iPhone 12 gi&aacute; rẻ ch&iacute;nh h&atilde;ng tại Ho&agrave;ng H&agrave; Mobile</h2>

<p>V&agrave;o ng&agrave;y 13/10 vừa qua, Apple đ&atilde; ch&iacute;nh thức cho ra mắt thế hệ iPhone 12 mới với 4 phi&ecirc;n bản, v&agrave; trong đ&oacute; mẫu iPhone 12 ti&ecirc;u chuẩn, với nhiều cải tiến về cả b&ecirc;n ngo&agrave;i lẫn b&ecirc;n trong, hứa hẹn sẽ lại tiếp tục nối tiếp sự th&agrave;nh c&ocirc;ng từ chiếc iPhone 11 tiền nhiệm</p>
', N'<h2>Mua iPhone 12 gi&aacute; rẻ ch&iacute;nh h&atilde;ng tại Ho&agrave;ng H&agrave; Mobile</h2>

<p>V&agrave;o ng&agrave;y 13/10 vừa qua, Apple đ&atilde; ch&iacute;nh thức cho ra mắt thế hệ iPhone 12 mới với 4 phi&ecirc;n bản, v&agrave; trong đ&oacute; mẫu iPhone 12 ti&ecirc;u chuẩn, với nhiều cải tiến về cả b&ecirc;n ngo&agrave;i lẫn b&ecirc;n trong, hứa hẹn sẽ lại tiếp tục nối tiếp sự th&agrave;nh c&ocirc;ng từ chiếc iPhone 11 tiền nhiệm</p>
', 1, 1, NULL, NULL, 0, 173, 1, NULL, 7, 13, 1, CAST(N'2021-04-16T14:48:45.507' AS DateTime), N'Nguyễn Sáng', NULL, N'Nguyễn Sáng', 0)
INSERT [dbo].[Product] ([ID], [Code], [Name], [Image], [Slug], [Price], [PriceSale], [Description], [Content], [IsHot], [OldNew], [Total], [Buyed], [Like], [View], [Position], [Gift], [CategoryID], [BrandID], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (13, N'SP3', N'Samsung Galaxy S21 Ultra 128GB 5G - Chính hãng', N'/Upload/Image/20210416145541thumb_S21ultra-2.jpg', N'samsung-galaxy-s21-ultra-128gb-5g---chinh-hang', CAST(213900000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), N'<p>fgdfgdfgdfgd</p>
', N'<p>fdgdfgfdg</p>
', 1, 1, NULL, NULL, 0, 22, 3, NULL, 8, 16, 1, CAST(N'2021-04-16T14:56:11.250' AS DateTime), N'Nguyễn Sáng', CAST(N'2021-04-16T15:48:15.717' AS DateTime), N'Nguyễn Sáng', 0)
INSERT [dbo].[Product] ([ID], [Code], [Name], [Image], [Slug], [Price], [PriceSale], [Description], [Content], [IsHot], [OldNew], [Total], [Buyed], [Like], [View], [Position], [Gift], [CategoryID], [BrandID], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (14, N'SP4', N'Dây sạc Iphone ', N'/Upload/Image/20210416162113dâyC2L.jpg', N'day-sac-iphone-', CAST(210000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), N'<p>dfdsfdsf</p>
', N'<p>dfdsfsdfds</p>
', 0, 1, NULL, NULL, 0, 4, 6, NULL, 10, 13, 1, CAST(N'2021-04-16T16:51:28.913' AS DateTime), N'Nguyễn Sáng', NULL, N'Nguyễn Sáng', 0)
INSERT [dbo].[Product] ([ID], [Code], [Name], [Image], [Slug], [Price], [PriceSale], [Description], [Content], [IsHot], [OldNew], [Total], [Buyed], [Like], [View], [Position], [Gift], [CategoryID], [BrandID], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (15, N'SP5', N'Xiaomi Redmi Note 10 6GB/128GB - Chính hãng', N'/Upload/Image/20210416165422thumb_K40-1.jpg', N'xiaomi-redmi-note-10-6gb-128gb---chinh-hang', CAST(5490000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), N'<p>fdgdfg</p>
', N'<p>ghfh</p>
', 0, 1, NULL, NULL, 0, 1, 8, N'<p>gfdgfdg</p>
', 9, 15, 1, CAST(N'2021-04-16T16:54:30.820' AS DateTime), N'Nguyễn Sáng', CAST(N'2021-04-21T19:43:16.957' AS DateTime), N'Nguyễn Sáng', 0)
INSERT [dbo].[Product] ([ID], [Code], [Name], [Image], [Slug], [Price], [PriceSale], [Description], [Content], [IsHot], [OldNew], [Total], [Buyed], [Like], [View], [Position], [Gift], [CategoryID], [BrandID], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (16, N'SP6', N'Apple iPhone 12 - 64GB - Chính hãng VN/A', N'/Upload/Image/20210416144821iphone-12-pro-vang_3.jpg', NULL, CAST(24990000 AS Decimal(18, 0)), CAST(19890000 AS Decimal(18, 0)), NULL, NULL, 1, 1, NULL, NULL, 0, 4, 4, NULL, 7, 13, 1, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Product] ([ID], [Code], [Name], [Image], [Slug], [Price], [PriceSale], [Description], [Content], [IsHot], [OldNew], [Total], [Buyed], [Like], [View], [Position], [Gift], [CategoryID], [BrandID], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (17, N'SP7', N'Apple iPhone 12 - 64GB - Chính hãng VN/A', N'/Upload/Image/20210416144821iphone-12-pro-vang_3.jpg', NULL, CAST(24990000 AS Decimal(18, 0)), CAST(24990000 AS Decimal(18, 0)), NULL, NULL, 1, 1, NULL, NULL, 0, 0, 5, NULL, 7, 13, 1, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Product] ([ID], [Code], [Name], [Image], [Slug], [Price], [PriceSale], [Description], [Content], [IsHot], [OldNew], [Total], [Buyed], [Like], [View], [Position], [Gift], [CategoryID], [BrandID], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (18, N'SP7', N'Apple iPhone 12 - 64GB - Chính hãng VN/A', N'/Upload/Image/20210416144821iphone-12-pro-vang_3.jpg', NULL, CAST(24990000 AS Decimal(18, 0)), CAST(24990000 AS Decimal(18, 0)), NULL, NULL, 1, 1, NULL, NULL, 0, 1, 6, NULL, 7, 13, 1, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Product] ([ID], [Code], [Name], [Image], [Slug], [Price], [PriceSale], [Description], [Content], [IsHot], [OldNew], [Total], [Buyed], [Like], [View], [Position], [Gift], [CategoryID], [BrandID], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (19, N'SP8', N'Apple iPhone 12 - 64GB - Chính hãng VN/A', N'/Upload/Image/20210416144821iphone-12-pro-vang_3.jpg', NULL, CAST(24990000 AS Decimal(18, 0)), CAST(24990000 AS Decimal(18, 0)), NULL, NULL, 1, 1, NULL, NULL, 0, 0, 7, NULL, 7, 13, 1, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Product] ([ID], [Code], [Name], [Image], [Slug], [Price], [PriceSale], [Description], [Content], [IsHot], [OldNew], [Total], [Buyed], [Like], [View], [Position], [Gift], [CategoryID], [BrandID], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (20, N'SP9', N'Apple iPhone 12 - 64GB - Chính hãng VN/A', N'/Upload/Image/20210416144821iphone-12-pro-vang_3.jpg', NULL, CAST(24990000 AS Decimal(18, 0)), CAST(24990000 AS Decimal(18, 0)), NULL, NULL, 1, 1, NULL, NULL, 0, 0, 8, NULL, 7, 13, 1, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Product] ([ID], [Code], [Name], [Image], [Slug], [Price], [PriceSale], [Description], [Content], [IsHot], [OldNew], [Total], [Buyed], [Like], [View], [Position], [Gift], [CategoryID], [BrandID], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (21, N'SP10', N'Apple iPhone 12 - 64GB - Chính hãng VN/A', N'/Upload/Image/20210416144821iphone-12-pro-vang_3.jpg', NULL, CAST(24990000 AS Decimal(18, 0)), CAST(19890000 AS Decimal(18, 0)), NULL, NULL, 1, 1, NULL, NULL, 0, 0, 9, NULL, 7, 13, 1, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Product] ([ID], [Code], [Name], [Image], [Slug], [Price], [PriceSale], [Description], [Content], [IsHot], [OldNew], [Total], [Buyed], [Like], [View], [Position], [Gift], [CategoryID], [BrandID], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (22, N'SP11', N'Apple iPhone 12 - 64GB - Chính hãng VN/A', N'/Upload/Image/20210416144821iphone-12-pro-vang_3.jpg', NULL, CAST(24990000 AS Decimal(18, 0)), CAST(19890000 AS Decimal(18, 0)), NULL, NULL, 1, 1, NULL, NULL, 0, 0, 10, NULL, 7, 13, 1, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Product] ([ID], [Code], [Name], [Image], [Slug], [Price], [PriceSale], [Description], [Content], [IsHot], [OldNew], [Total], [Buyed], [Like], [View], [Position], [Gift], [CategoryID], [BrandID], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (23, N'SP12', N'Apple iPhone 12 - 64GB - Chính hãng VN/A', N'/Upload/Image/20210416144821iphone-12-pro-vang_3.jpg', NULL, CAST(24990000 AS Decimal(18, 0)), CAST(19890000 AS Decimal(18, 0)), NULL, NULL, 1, 1, NULL, NULL, 0, 1, 12, NULL, 7, 13, 1, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Product] ([ID], [Code], [Name], [Image], [Slug], [Price], [PriceSale], [Description], [Content], [IsHot], [OldNew], [Total], [Buyed], [Like], [View], [Position], [Gift], [CategoryID], [BrandID], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (24, N'SP13', N'Apple iPhone 12 - 64GB - Chính hãng VN/A', N'/Upload/Image/20210416144821iphone-12-pro-vang_3.jpg', NULL, CAST(24990000 AS Decimal(18, 0)), CAST(19890000 AS Decimal(18, 0)), NULL, NULL, 1, 1, NULL, NULL, 0, 0, 13, NULL, 7, 13, 1, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Product] ([ID], [Code], [Name], [Image], [Slug], [Price], [PriceSale], [Description], [Content], [IsHot], [OldNew], [Total], [Buyed], [Like], [View], [Position], [Gift], [CategoryID], [BrandID], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (25, N'SP14', N'Apple iPhone 12 - 64GB - Chính hãng VN/A', N'/Upload/Image/20210416144821iphone-12-pro-vang_3.jpg', NULL, CAST(24990000 AS Decimal(18, 0)), CAST(19890000 AS Decimal(18, 0)), NULL, NULL, 1, 1, NULL, NULL, 0, 0, 14, NULL, 7, 13, 1, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Product] ([ID], [Code], [Name], [Image], [Slug], [Price], [PriceSale], [Description], [Content], [IsHot], [OldNew], [Total], [Buyed], [Like], [View], [Position], [Gift], [CategoryID], [BrandID], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (26, N'SP15', N'Apple iPhone 12 - 64GB - Chính hãng VN/A', N'/Upload/Image/20210416144821iphone-12-pro-vang_3.jpg', NULL, CAST(24990000 AS Decimal(18, 0)), CAST(19890000 AS Decimal(18, 0)), NULL, NULL, 1, 1, NULL, NULL, 0, 0, 15, NULL, 7, 13, 1, NULL, NULL, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductColor] ON 

INSERT [dbo].[ProductColor] ([ID], [ProductID], [ColorID]) VALUES (1, 1, 10)
INSERT [dbo].[ProductColor] ([ID], [ProductID], [ColorID]) VALUES (2, 2, NULL)
INSERT [dbo].[ProductColor] ([ID], [ProductID], [ColorID]) VALUES (3, 3, NULL)
INSERT [dbo].[ProductColor] ([ID], [ProductID], [ColorID]) VALUES (4, 4, NULL)
INSERT [dbo].[ProductColor] ([ID], [ProductID], [ColorID]) VALUES (5, 5, NULL)
INSERT [dbo].[ProductColor] ([ID], [ProductID], [ColorID]) VALUES (8, 8, 10)
INSERT [dbo].[ProductColor] ([ID], [ProductID], [ColorID]) VALUES (9, 7, 11)
INSERT [dbo].[ProductColor] ([ID], [ProductID], [ColorID]) VALUES (10, 7, 11)
INSERT [dbo].[ProductColor] ([ID], [ProductID], [ColorID]) VALUES (12, 6, NULL)
INSERT [dbo].[ProductColor] ([ID], [ProductID], [ColorID]) VALUES (13, 9, 12)
INSERT [dbo].[ProductColor] ([ID], [ProductID], [ColorID]) VALUES (50, 10, 17)
INSERT [dbo].[ProductColor] ([ID], [ProductID], [ColorID]) VALUES (52, 12, 12)
INSERT [dbo].[ProductColor] ([ID], [ProductID], [ColorID]) VALUES (53, 12, 17)
INSERT [dbo].[ProductColor] ([ID], [ProductID], [ColorID]) VALUES (55, 13, 12)
INSERT [dbo].[ProductColor] ([ID], [ProductID], [ColorID]) VALUES (56, 14, 18)
INSERT [dbo].[ProductColor] ([ID], [ProductID], [ColorID]) VALUES (67, 15, 17)
INSERT [dbo].[ProductColor] ([ID], [ProductID], [ColorID]) VALUES (70, 11, 17)
INSERT [dbo].[ProductColor] ([ID], [ProductID], [ColorID]) VALUES (71, 11, 18)
SET IDENTITY_INSERT [dbo].[ProductColor] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductImage] ON 

INSERT [dbo].[ProductImage] ([ID], [Name], [Image], [ProductID]) VALUES (1, NULL, N'/Upload/Image/20210402145137Screenshot (2).png', 2)
INSERT [dbo].[ProductImage] ([ID], [Name], [Image], [ProductID]) VALUES (2, NULL, N'/Upload/Image/20210402145137Screenshot (2).png', 3)
INSERT [dbo].[ProductImage] ([ID], [Name], [Image], [ProductID]) VALUES (3, NULL, N'/Upload/Image/20210402145137Screenshot (2).png', 4)
INSERT [dbo].[ProductImage] ([ID], [Name], [Image], [ProductID]) VALUES (4, NULL, N'/Upload/Image/20210402145137Screenshot (2).png', 5)
INSERT [dbo].[ProductImage] ([ID], [Name], [Image], [ProductID]) VALUES (7, NULL, N'/Upload/Image/20210402145137Screenshot (2).png', 7)
INSERT [dbo].[ProductImage] ([ID], [Name], [Image], [ProductID]) VALUES (9, NULL, N'/Upload/Image/20210402145137Screenshot (2).png', 6)
INSERT [dbo].[ProductImage] ([ID], [Name], [Image], [ProductID]) VALUES (10, NULL, N'/Upload/Image/20210413224035thumb_IP12Pro_3.jpg', 9)
INSERT [dbo].[ProductImage] ([ID], [Name], [Image], [ProductID]) VALUES (26, NULL, N'/Upload/Image/20210413224035thumb_IP12Pro_3.jpg', 10)
INSERT [dbo].[ProductImage] ([ID], [Name], [Image], [ProductID]) VALUES (28, NULL, N'/Upload/Image/20210416144821iphone-12-pro-vang_3.jpg', 12)
INSERT [dbo].[ProductImage] ([ID], [Name], [Image], [ProductID]) VALUES (30, NULL, N'/Upload/Image/20210416145541thumb_S21ultra-2.jpg', 13)
INSERT [dbo].[ProductImage] ([ID], [Name], [Image], [ProductID]) VALUES (31, NULL, N'/Upload/Image/20210416162113dâyC2L.jpg', 14)
INSERT [dbo].[ProductImage] ([ID], [Name], [Image], [ProductID]) VALUES (41, NULL, N'/Upload/Image/20210416165422thumb_K40-1.jpg', 15)
INSERT [dbo].[ProductImage] ([ID], [Name], [Image], [ProductID]) VALUES (47, NULL, N'/Upload/Image/20210419181509iphone-12-pro-xanh_2_1.jpg', 11)
INSERT [dbo].[ProductImage] ([ID], [Name], [Image], [ProductID]) VALUES (48, NULL, N'/Upload/Image/20210416144330aar-12-pro-black_10.jpg', 11)
INSERT [dbo].[ProductImage] ([ID], [Name], [Image], [ProductID]) VALUES (49, NULL, N'/Upload/Image/20210419181509iphone-12-pro-trang_1_1.jpg', 11)
INSERT [dbo].[ProductImage] ([ID], [Name], [Image], [ProductID]) VALUES (50, NULL, N'/Upload/Image/20210419181509iphone-12-pro-vang_3.jpg', 11)
INSERT [dbo].[ProductImage] ([ID], [Name], [Image], [ProductID]) VALUES (51, NULL, N'/Upload/Image/20210419181509iphone-12-pro-xanh_2_1.jpg', 11)
SET IDENTITY_INSERT [dbo].[ProductImage] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductSpecification] ON 

INSERT [dbo].[ProductSpecification] ([ID], [Name], [Design], [Size], [Screen], [ScreenResolution], [WideScreen], [CameraRear], [CameraSelfie], [RAM], [CardMemory], [Memory], [CPU], [SpeedCPU], [GPU], [Battery], [SIM], [Network], [ChargingPort], [JackHeadphone], [OS], [MadeIn], [LaunchTime], [ProductID], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (1, N'Iphone 10', N'dsfdsc', N'dfdsf', N'5.5', N'dfsdf', NULL, N'24', N'24', NULL, NULL, N'26', N'fd', NULL, NULL, NULL, N'2', N'25', NULL, NULL, N'android', N'hàn quốc', NULL, 12, 1, NULL, NULL, CAST(N'2021-05-11T13:00:51.937' AS DateTime), N'Nguyễn Sáng', 0)
INSERT [dbo].[ProductSpecification] ([ID], [Name], [Design], [Size], [Screen], [ScreenResolution], [WideScreen], [CameraRear], [CameraSelfie], [RAM], [CardMemory], [Memory], [CPU], [SpeedCPU], [GPU], [Battery], [SIM], [Network], [ChargingPort], [JackHeadphone], [OS], [MadeIn], [LaunchTime], [ProductID], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (2, N'Iphone', NULL, NULL, N'6.4", FHD+, AMOLED, 1080 x 2400 Pixel', NULL, NULL, N'5', N'5', N'5', NULL, N'5', N'5', NULL, N'5', N'553452', N'1', NULL, NULL, NULL, N'IOS', N'China', CAST(N'2021-04-22T00:00:00.000' AS DateTime), 7, 1, CAST(N'2021-04-13T00:08:13.990' AS DateTime), N'Nguyễn Sáng', NULL, N'Nguyễn Sáng', 1)
INSERT [dbo].[ProductSpecification] ([ID], [Name], [Design], [Size], [Screen], [ScreenResolution], [WideScreen], [CameraRear], [CameraSelfie], [RAM], [CardMemory], [Memory], [CPU], [SpeedCPU], [GPU], [Battery], [SIM], [Network], [ChargingPort], [JackHeadphone], [OS], [MadeIn], [LaunchTime], [ProductID], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (3, N'sang', N'a', N's', N's', N's', NULL, N's', N's', NULL, N'ss', N's', N's', N'ss', N's', NULL, N's', N's', N's', N's', N's', N's', CAST(N'2021-05-23T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2021-05-09T01:28:11.180' AS DateTime), N'Nguyễn Sáng', CAST(N'2021-05-11T11:20:39.353' AS DateTime), N'Nguyễn Sáng', 0)
INSERT [dbo].[ProductSpecification] ([ID], [Name], [Design], [Size], [Screen], [ScreenResolution], [WideScreen], [CameraRear], [CameraSelfie], [RAM], [CardMemory], [Memory], [CPU], [SpeedCPU], [GPU], [Battery], [SIM], [Network], [ChargingPort], [JackHeadphone], [OS], [MadeIn], [LaunchTime], [ProductID], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (4, N'iphone 12 Pro', N'Nguyên khối', N'6.1"', N'OLED', N'1284 x 2778 Pixels', NULL, N'3 camera 12 MP', N'12 MP', NULL, NULL, N'256 GB', N'Apple A14 Bionic 6 nhân', N'2 nhân 3.1 GHz & 4 nhân 1.8 GHz', N'Apple GPU 6 nhân', N'2815', N'1', N'Hỗ trợ 5G', N'Lightning', N'Lightning', N'Ios', N'Trung Quốc', NULL, 11, 1, CAST(N'2021-05-11T12:52:27.650' AS DateTime), NULL, CAST(N'2021-05-11T14:51:36.137' AS DateTime), N'Nguyễn Sáng', 0)
INSERT [dbo].[ProductSpecification] ([ID], [Name], [Design], [Size], [Screen], [ScreenResolution], [WideScreen], [CameraRear], [CameraSelfie], [RAM], [CardMemory], [Memory], [CPU], [SpeedCPU], [GPU], [Battery], [SIM], [Network], [ChargingPort], [JackHeadphone], [OS], [MadeIn], [LaunchTime], [ProductID], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (5, N'iphone9', N'dsfdsc', N'dfdsf', N'5.5', N'dfsdf', NULL, N'24', N'24', NULL, NULL, N'26', N'fd', NULL, NULL, NULL, N'2', N'25', NULL, NULL, N'android', N'hàn quốc', NULL, 12, 1, CAST(N'2021-05-11T12:54:28.327' AS DateTime), NULL, NULL, N'Nguyễn Sáng', 0)
INSERT [dbo].[ProductSpecification] ([ID], [Name], [Design], [Size], [Screen], [ScreenResolution], [WideScreen], [CameraRear], [CameraSelfie], [RAM], [CardMemory], [Memory], [CPU], [SpeedCPU], [GPU], [Battery], [SIM], [Network], [ChargingPort], [JackHeadphone], [OS], [MadeIn], [LaunchTime], [ProductID], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDelete]) VALUES (6, N'Iphone 17', N'dsfdsc', N'dfdsf', N'5.5', N'dfsdf', NULL, N'24', N'24', NULL, NULL, N'26', N'fd', NULL, NULL, NULL, N'2', N'25', NULL, NULL, N'android', N'hàn quốc', NULL, 17, 1, CAST(N'2021-05-11T13:02:13.537' AS DateTime), NULL, NULL, N'Nguyễn Sáng', 0)
SET IDENTITY_INSERT [dbo].[ProductSpecification] OFF
GO
SET IDENTITY_INSERT [dbo].[Province] ON 

INSERT [dbo].[Province] ([Stt], [ID], [Name], [Type], [Status], [IsDelete]) VALUES (1, N'01', N'Thành phố Hà Nội', N'Thành phố Trung ương', 1, 0)
INSERT [dbo].[Province] ([Stt], [ID], [Name], [Type], [Status], [IsDelete]) VALUES (2, N'02', N'Tỉnh Hà Giang', N'Tỉnh', 1, 0)
INSERT [dbo].[Province] ([Stt], [ID], [Name], [Type], [Status], [IsDelete]) VALUES (3, N'04', N'Tỉnh Cao Bằng', N'Tỉnh', 1, 0)
INSERT [dbo].[Province] ([Stt], [ID], [Name], [Type], [Status], [IsDelete]) VALUES (4, N'06', N'Tỉnh Bắc Kạn', N'Tỉnh', 1, 0)
INSERT [dbo].[Province] ([Stt], [ID], [Name], [Type], [Status], [IsDelete]) VALUES (5, N'08', N'Tỉnh Tuyên Quang', N'Tỉnh', 1, 0)
INSERT [dbo].[Province] ([Stt], [ID], [Name], [Type], [Status], [IsDelete]) VALUES (6, N'10', N'Tỉnh Lào Cai', N'Tỉnh', 1, 0)
INSERT [dbo].[Province] ([Stt], [ID], [Name], [Type], [Status], [IsDelete]) VALUES (7, N'11', N'Tỉnh Điện Biên', N'Tỉnh', 1, 0)
INSERT [dbo].[Province] ([Stt], [ID], [Name], [Type], [Status], [IsDelete]) VALUES (8, N'12', N'Tỉnh Lai Châu', N'Tỉnh', 1, 0)
INSERT [dbo].[Province] ([Stt], [ID], [Name], [Type], [Status], [IsDelete]) VALUES (9, N'14', N'Tỉnh Sơn La', N'Tỉnh', 1, 0)
INSERT [dbo].[Province] ([Stt], [ID], [Name], [Type], [Status], [IsDelete]) VALUES (10, N'15', N'Tỉnh Yên Bái', N'Tỉnh', 1, 0)
INSERT [dbo].[Province] ([Stt], [ID], [Name], [Type], [Status], [IsDelete]) VALUES (11, N'17', N'Tỉnh Hoà Bình', N'Tỉnh', 1, 0)
INSERT [dbo].[Province] ([Stt], [ID], [Name], [Type], [Status], [IsDelete]) VALUES (12, N'19', N'Tỉnh Thái Nguyên', N'Tỉnh', 1, 0)
INSERT [dbo].[Province] ([Stt], [ID], [Name], [Type], [Status], [IsDelete]) VALUES (13, N'20', N'Tỉnh Lạng Sơn', N'Tỉnh', 1, 0)
INSERT [dbo].[Province] ([Stt], [ID], [Name], [Type], [Status], [IsDelete]) VALUES (14, N'22', N'Tỉnh Quảng Ninh', N'Tỉnh', 1, 0)
INSERT [dbo].[Province] ([Stt], [ID], [Name], [Type], [Status], [IsDelete]) VALUES (15, N'24', N'Tỉnh Bắc Giang', N'Tỉnh', 1, 0)
INSERT [dbo].[Province] ([Stt], [ID], [Name], [Type], [Status], [IsDelete]) VALUES (16, N'25', N'Tỉnh Phú Thọ', N'Tỉnh', 1, 0)
INSERT [dbo].[Province] ([Stt], [ID], [Name], [Type], [Status], [IsDelete]) VALUES (17, N'26', N'Tỉnh Vĩnh Phúc', N'Tỉnh', 1, 0)
INSERT [dbo].[Province] ([Stt], [ID], [Name], [Type], [Status], [IsDelete]) VALUES (18, N'27', N'Tỉnh Bắc Ninh', N'Tỉnh', 1, 0)
INSERT [dbo].[Province] ([Stt], [ID], [Name], [Type], [Status], [IsDelete]) VALUES (19, N'30', N'Tỉnh Hải Dương', N'Tỉnh', 1, 0)
INSERT [dbo].[Province] ([Stt], [ID], [Name], [Type], [Status], [IsDelete]) VALUES (20, N'31', N'Thành phố Hải Phòng', N'Thành phố Trung ương', 1, 0)
INSERT [dbo].[Province] ([Stt], [ID], [Name], [Type], [Status], [IsDelete]) VALUES (21, N'33', N'Tỉnh Hưng Yên', N'Tỉnh', 1, 0)
INSERT [dbo].[Province] ([Stt], [ID], [Name], [Type], [Status], [IsDelete]) VALUES (22, N'34', N'Tỉnh Thái Bình', N'Tỉnh', 1, 0)
INSERT [dbo].[Province] ([Stt], [ID], [Name], [Type], [Status], [IsDelete]) VALUES (23, N'35', N'Tỉnh Hà Nam', N'Tỉnh', 1, 0)
INSERT [dbo].[Province] ([Stt], [ID], [Name], [Type], [Status], [IsDelete]) VALUES (24, N'36', N'Tỉnh Nam Định', N'Tỉnh', 1, 0)
INSERT [dbo].[Province] ([Stt], [ID], [Name], [Type], [Status], [IsDelete]) VALUES (25, N'37', N'Tỉnh Ninh Bình', N'Tỉnh', 1, 0)
INSERT [dbo].[Province] ([Stt], [ID], [Name], [Type], [Status], [IsDelete]) VALUES (26, N'38', N'Tỉnh Thanh Hóa', N'Tỉnh', 1, 0)
INSERT [dbo].[Province] ([Stt], [ID], [Name], [Type], [Status], [IsDelete]) VALUES (27, N'40', N'Tỉnh Nghệ An', N'Tỉnh', 1, 0)
INSERT [dbo].[Province] ([Stt], [ID], [Name], [Type], [Status], [IsDelete]) VALUES (28, N'42', N'Tỉnh Hà Tĩnh', N'Tỉnh', 1, 0)
INSERT [dbo].[Province] ([Stt], [ID], [Name], [Type], [Status], [IsDelete]) VALUES (29, N'44', N'Tỉnh Quảng Bình', N'Tỉnh', 1, 0)
INSERT [dbo].[Province] ([Stt], [ID], [Name], [Type], [Status], [IsDelete]) VALUES (30, N'45', N'Tỉnh Quảng Trị', N'Tỉnh', 1, 0)
INSERT [dbo].[Province] ([Stt], [ID], [Name], [Type], [Status], [IsDelete]) VALUES (31, N'46', N'Tỉnh Thừa Thiên Huế', N'Tỉnh', 1, 0)
INSERT [dbo].[Province] ([Stt], [ID], [Name], [Type], [Status], [IsDelete]) VALUES (32, N'48', N'Thành phố Đà Nẵng', N'Thành phố Trung ương', 1, 0)
INSERT [dbo].[Province] ([Stt], [ID], [Name], [Type], [Status], [IsDelete]) VALUES (33, N'49', N'Tỉnh Quảng Nam', N'Tỉnh', 1, 0)
INSERT [dbo].[Province] ([Stt], [ID], [Name], [Type], [Status], [IsDelete]) VALUES (34, N'51', N'Tỉnh Quảng Ngãi', N'Tỉnh', 1, 0)
INSERT [dbo].[Province] ([Stt], [ID], [Name], [Type], [Status], [IsDelete]) VALUES (35, N'52', N'Tỉnh Bình Định', N'Tỉnh', 1, 0)
INSERT [dbo].[Province] ([Stt], [ID], [Name], [Type], [Status], [IsDelete]) VALUES (36, N'54', N'Tỉnh Phú Yên', N'Tỉnh', 1, 0)
INSERT [dbo].[Province] ([Stt], [ID], [Name], [Type], [Status], [IsDelete]) VALUES (37, N'56', N'Tỉnh Khánh Hòa', N'Tỉnh', 1, 0)
INSERT [dbo].[Province] ([Stt], [ID], [Name], [Type], [Status], [IsDelete]) VALUES (38, N'58', N'Tỉnh Ninh Thuận', N'Tỉnh', 1, 0)
INSERT [dbo].[Province] ([Stt], [ID], [Name], [Type], [Status], [IsDelete]) VALUES (39, N'60', N'Tỉnh Bình Thuận', N'Tỉnh', 1, 0)
INSERT [dbo].[Province] ([Stt], [ID], [Name], [Type], [Status], [IsDelete]) VALUES (40, N'62', N'Tỉnh Kon Tum', N'Tỉnh', 1, 0)
INSERT [dbo].[Province] ([Stt], [ID], [Name], [Type], [Status], [IsDelete]) VALUES (41, N'64', N'Tỉnh Gia Lai', N'Tỉnh', 1, 0)
INSERT [dbo].[Province] ([Stt], [ID], [Name], [Type], [Status], [IsDelete]) VALUES (42, N'66', N'Tỉnh Đắk Lắk', N'Tỉnh', 1, 0)
INSERT [dbo].[Province] ([Stt], [ID], [Name], [Type], [Status], [IsDelete]) VALUES (43, N'67', N'Tỉnh Đắk Nông', N'Tỉnh', 1, 0)
INSERT [dbo].[Province] ([Stt], [ID], [Name], [Type], [Status], [IsDelete]) VALUES (44, N'68', N'Tỉnh Lâm Đồng', N'Tỉnh', 1, 0)
INSERT [dbo].[Province] ([Stt], [ID], [Name], [Type], [Status], [IsDelete]) VALUES (45, N'70', N'Tỉnh Bình Phước', N'Tỉnh', 1, 0)
INSERT [dbo].[Province] ([Stt], [ID], [Name], [Type], [Status], [IsDelete]) VALUES (46, N'72', N'Tỉnh Tây Ninh', N'Tỉnh', 1, 0)
INSERT [dbo].[Province] ([Stt], [ID], [Name], [Type], [Status], [IsDelete]) VALUES (47, N'74', N'Tỉnh Bình Dương', N'Tỉnh', 1, 0)
INSERT [dbo].[Province] ([Stt], [ID], [Name], [Type], [Status], [IsDelete]) VALUES (48, N'75', N'Tỉnh Đồng Nai', N'Tỉnh', 1, 0)
INSERT [dbo].[Province] ([Stt], [ID], [Name], [Type], [Status], [IsDelete]) VALUES (49, N'77', N'Tỉnh Bà Rịa - Vũng Tàu', N'Tỉnh', 1, 0)
INSERT [dbo].[Province] ([Stt], [ID], [Name], [Type], [Status], [IsDelete]) VALUES (50, N'79', N'Thành phố Hồ Chí Minh', N'Thành phố Trung ương', 1, 0)
INSERT [dbo].[Province] ([Stt], [ID], [Name], [Type], [Status], [IsDelete]) VALUES (51, N'80', N'Tỉnh Long An', N'Tỉnh', 1, 0)
INSERT [dbo].[Province] ([Stt], [ID], [Name], [Type], [Status], [IsDelete]) VALUES (52, N'82', N'Tỉnh Tiền Giang', N'Tỉnh', 1, 0)
INSERT [dbo].[Province] ([Stt], [ID], [Name], [Type], [Status], [IsDelete]) VALUES (53, N'83', N'Tỉnh Bến Tre', N'Tỉnh', 1, 0)
INSERT [dbo].[Province] ([Stt], [ID], [Name], [Type], [Status], [IsDelete]) VALUES (54, N'84', N'Tỉnh Trà Vinh', N'Tỉnh', 1, 0)
INSERT [dbo].[Province] ([Stt], [ID], [Name], [Type], [Status], [IsDelete]) VALUES (55, N'86', N'Tỉnh Vĩnh Long', N'Tỉnh', 1, 0)
INSERT [dbo].[Province] ([Stt], [ID], [Name], [Type], [Status], [IsDelete]) VALUES (56, N'87', N'Tỉnh Đồng Tháp', N'Tỉnh', 1, 0)
INSERT [dbo].[Province] ([Stt], [ID], [Name], [Type], [Status], [IsDelete]) VALUES (57, N'89', N'Tỉnh An Giang', N'Tỉnh', 1, 0)
INSERT [dbo].[Province] ([Stt], [ID], [Name], [Type], [Status], [IsDelete]) VALUES (58, N'91', N'Tỉnh Kiên Giang', N'Tỉnh', 1, 0)
INSERT [dbo].[Province] ([Stt], [ID], [Name], [Type], [Status], [IsDelete]) VALUES (59, N'92', N'Thành phố Cần Thơ', N'Thành phố Trung ương', 1, 0)
INSERT [dbo].[Province] ([Stt], [ID], [Name], [Type], [Status], [IsDelete]) VALUES (60, N'93', N'Tỉnh Hậu Giang', N'Tỉnh', 1, 0)
INSERT [dbo].[Province] ([Stt], [ID], [Name], [Type], [Status], [IsDelete]) VALUES (61, N'94', N'Tỉnh Sóc Trăng', N'Tỉnh', 1, 0)
INSERT [dbo].[Province] ([Stt], [ID], [Name], [Type], [Status], [IsDelete]) VALUES (62, N'95', N'Tỉnh Bạc Liêu', N'Tỉnh', 1, 0)
INSERT [dbo].[Province] ([Stt], [ID], [Name], [Type], [Status], [IsDelete]) VALUES (63, N'96', N'Tỉnh Cà Mau', N'Tỉnh', 1, 0)
SET IDENTITY_INSERT [dbo].[Province] OFF
GO
