USE [Assisgment]
GO
/****** Object:  Table [dbo].[TblCategories]    Script Date: 3/17/2021 7:54:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblCategories](
	[categoryID] [varchar](10) NOT NULL,
	[categoryName] [nvarchar](50) NULL,
	[description] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[categoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblOderDetail]    Script Date: 3/17/2021 7:54:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblOderDetail](
	[oderDetailID] [varchar](10) NOT NULL,
	[name] [nvarchar](50) NULL,
	[totalPrice] [float] NULL,
	[quantity] [int] NULL,
	[productID] [varchar](10) NULL,
	[oderID] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[oderDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblOders]    Script Date: 3/17/2021 7:54:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblOders](
	[oderID] [varchar](10) NOT NULL,
	[date] [date] NULL,
	[totalPrice] [float] NULL,
	[name] [nvarchar](50) NULL,
	[userID] [varchar](10) NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[oderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblProducts]    Script Date: 3/17/2021 7:54:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblProducts](
	[productID] [varchar](10) NOT NULL,
	[productName] [nvarchar](50) NULL,
	[unit] [varchar](50) NULL,
	[price] [float] NULL,
	[quantity] [int] NULL,
	[categoryID] [varchar](10) NULL,
	[image] [nvarchar](300) NULL,
PRIMARY KEY CLUSTERED 
(
	[productID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblRoles]    Script Date: 3/17/2021 7:54:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblRoles](
	[roleID] [varchar](10) NOT NULL,
	[role] [int] NULL,
	[name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[roleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblUsers]    Script Date: 3/17/2021 7:54:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblUsers](
	[userID] [varchar](10) NOT NULL,
	[fullName] [nvarchar](50) NULL,
	[password] [varchar](50) NULL,
	[roleID] [varchar](10) NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[TblCategories] ([categoryID], [categoryName], [description]) VALUES (N'IP01', N'IPhone', N'điện thoại xịn ')
INSERT [dbo].[TblCategories] ([categoryID], [categoryName], [description]) VALUES (N'OP01', N'Oppo', N'điện thoại xịn ')
INSERT [dbo].[TblCategories] ([categoryID], [categoryName], [description]) VALUES (N'SS01', N'Sam Sung', N'điện thoại xịn')
GO
INSERT [dbo].[TblOderDetail] ([oderDetailID], [name], [totalPrice], [quantity], [productID], [oderID]) VALUES (N'VL0001', N'Iphone Pro', 500, 2, N'I001', N'MNS001')
GO
INSERT [dbo].[TblOders] ([oderID], [date], [totalPrice], [name], [userID], [status]) VALUES (N'MNS001', CAST(N'2021-03-02' AS Date), 980000, N'toan', N'admin', 1)
INSERT [dbo].[TblOders] ([oderID], [date], [totalPrice], [name], [userID], [status]) VALUES (N'MNS002', CAST(N'2021-03-03' AS Date), 750, N'linh', N'MinhT', 1)
GO
INSERT [dbo].[TblProducts] ([productID], [productName], [unit], [price], [quantity], [categoryID], [image]) VALUES (N'I001', N'iPhone 11 Pro Max 512GB', N'6', 30980, 20, NULL, N'https://cdn.tgdd.vn/Products/Images/42/210654/iphone-11-pro-max-512gb-gold-600x600.jpg')
INSERT [dbo].[TblProducts] ([productID], [productName], [unit], [price], [quantity], [categoryID], [image]) VALUES (N'I140895', N'toanpmse140895', N'1', 9999999, 1, N'IP01', N'https://scontent.fsgn2-1.fna.fbcdn.net/v/t1.0-9/152310620_2852129181772291_3662475942649288263_o.jpg?_nc_cat=111&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=4APWAohbZcsAX-oUPz7&_nc_ht=scontent.fsgn2-1.fna&oh=5b0f42050c566d08e4c5e9217f7fbf66&oe=6075F8F7')
INSERT [dbo].[TblProducts] ([productID], [productName], [unit], [price], [quantity], [categoryID], [image]) VALUES (N'O0009', N'ngÆ°á»i yÃªu cá»§a tui', N'1', 344, 1, NULL, N'https://sohanews.sohacdn.com/2020/2/26/photo-1-158270587240769675748.jpg')
INSERT [dbo].[TblProducts] ([productID], [productName], [unit], [price], [quantity], [categoryID], [image]) VALUES (N'O009', N'oppo a39', N'3', 344, 45, N'IP01', N'https://cdn.tgdd.vn/Products/Images/42/229056/oppo-a93-trang-14-200x200.jpg')
INSERT [dbo].[TblProducts] ([productID], [productName], [unit], [price], [quantity], [categoryID], [image]) VALUES (N'O011', N'pizza', N'5', 3.2, 456, N'OP01', N'https://cdn.tgdd.vn/Products/Images/42/220438/oppo-reno5-trang-600x600-1-600x600.jpg')
INSERT [dbo].[TblProducts] ([productID], [productName], [unit], [price], [quantity], [categoryID], [image]) VALUES (N'S002', N'Samsung Galaxy A51 6GB', N'2', 1333, 20, N'SS01', N'https://cdn.tgdd.vn/Products/Images/42/220903/samsung-galaxy-a51-8gb-xanh-600x600.jpg')
INSERT [dbo].[TblProducts] ([productID], [productName], [unit], [price], [quantity], [categoryID], [image]) VALUES (N'S003', N'Samsung Galaxy Note 10 ', N'3', 4456, 14, N'SS01', N'https://cdn.tgdd.vn/Products/Images/42/191276/samsung-galaxy-note-10-silver-600x600.jpg')
INSERT [dbo].[TblProducts] ([productID], [productName], [unit], [price], [quantity], [categoryID], [image]) VALUES (N'S004', N'Samsung Galaxy A21s', N'4', 4000, 12, N'SS01', N'https://cdn.nguyenkimmall.com/images/detailed/652/10045768-dien-thoai-samsung-galaxy-a21s-3g-32gb-trang-1_avnt-0j.jpg')
INSERT [dbo].[TblProducts] ([productID], [productName], [unit], [price], [quantity], [categoryID], [image]) VALUES (N'S005', N'Samsung Galaxy M11', N'5', 2999, 56, N'SS01', N'https://cdn.tgdd.vn/Products/Images/42/209791/samsung-galaxy-m11-2-600x600.jpg')
GO
INSERT [dbo].[TblRoles] ([roleID], [role], [name]) VALUES (N'AD', 123, N'toàn')
INSERT [dbo].[TblRoles] ([roleID], [role], [name]) VALUES (N'USER', 123, N'minh')
GO
INSERT [dbo].[TblUsers] ([userID], [fullName], [password], [roleID], [status]) VALUES (N'admin', N'Phạm Mạnh Toàn ', N'123456', N'AD', 1)
INSERT [dbo].[TblUsers] ([userID], [fullName], [password], [roleID], [status]) VALUES (N'linh', N'huá»³nh ngá»c linh', N'123456', N'USER', 1)
INSERT [dbo].[TblUsers] ([userID], [fullName], [password], [roleID], [status]) VALUES (N'MinhT', N'Phạm Nhật Minh', N'123', N'USER', 1)
INSERT [dbo].[TblUsers] ([userID], [fullName], [password], [roleID], [status]) VALUES (N'toantkcl', N'Phạm Mạnh Toàn ', N'123', NULL, NULL)
GO
ALTER TABLE [dbo].[TblOderDetail]  WITH CHECK ADD FOREIGN KEY([oderID])
REFERENCES [dbo].[TblOders] ([oderID])
GO
ALTER TABLE [dbo].[TblOderDetail]  WITH CHECK ADD FOREIGN KEY([productID])
REFERENCES [dbo].[TblProducts] ([productID])
GO
ALTER TABLE [dbo].[TblOders]  WITH CHECK ADD FOREIGN KEY([userID])
REFERENCES [dbo].[TblUsers] ([userID])
GO
ALTER TABLE [dbo].[TblProducts]  WITH CHECK ADD FOREIGN KEY([categoryID])
REFERENCES [dbo].[TblCategories] ([categoryID])
GO
ALTER TABLE [dbo].[TblUsers]  WITH CHECK ADD FOREIGN KEY([roleID])
REFERENCES [dbo].[TblRoles] ([roleID])
GO
