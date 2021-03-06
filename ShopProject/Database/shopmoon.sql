CREATE DATABASE IF NOT EXISTS `SHOPPMOON` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `SHOPPMOON`;
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 4/24/2022 12:53:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[cartID] [int] IDENTITY(1,1) NOT NULL,
	[proID] [int] NULL,
	[proPrice] [int] NULL,
	[CartQuantity] [int] NULL,	
	[CartMoney] [int] NULL,
	[cusID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[cartID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comments]    Script Date: 4/24/2022 12:53:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[comID] [int] IDENTITY(1,1) NOT NULL,
	[proID] [int] NULL,
	[cusID] [int] NULL,
	[comMessage] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[comID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 4/24/2022 12:53:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[cusID] [int] IDENTITY(1,1) NOT NULL,
	[cusName] [nvarchar](max) NULL,
	[cusEmail] [nchar](100) NULL,
	[cusPhone] [nchar](11) NULL,
	[cusPassword] [nchar](10) NULL,
	[cusAddress] [nvarchar](max) NULL,
	[cusType] [int] NULL,
	[cusStatus] [int] NULL,
	[cusPhoto] [char](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[cusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetailsOrders]    Script Date: 4/24/2022 12:53:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetailsOrders](
	[DeOrderID] [int] IDENTITY(1,1) NOT NULL,
	[proID] [int] NULL,
	[orderAddress] [nvarchar](max) NULL,
	[proPrice] [int] NULL,
	[orderQuantity] [int] NULL,
	[orderMoney] [int] NULL,
	[cusID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[DeOrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 4/24/2022 12:53:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[empID] [int] IDENTITY(1,1) NOT NULL,
	[empName] [nvarchar](50) NULL,
	[empDate] [date] NULL,
	[empPhoto] [char](100) NULL,
	[empAddress] [nvarchar](max) NULL,
	[empSalary] [int] NULL,
	[empBonus] [int] NULL,
	[empStartTime] [date] NULL,
	[empEmail] [char](100) NULL,
	[empPhone] [char](10) NULL,
	[empPassword] [nchar](100) NULL,
	[emPositon] [int] NULL,
	[empRole] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[empID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeesPosition]    Script Date: 4/24/2022 12:53:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeesPosition](
	[emPositon] [int] IDENTITY(1,1) NOT NULL,
	[emPositonName] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[emPositon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeesRole]    Script Date: 4/24/2022 12:53:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeesRole](
	[empRole] [int] IDENTITY(1,1) NOT NULL,
	[empRoleName] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[empRole] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 4/24/2022 12:53:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[orderID] [int] IDENTITY(1,1) NOT NULL,
	[orderDate] [date] NULL,
	[orderStatus] [nvarchar](50) NULL,
	[empID] [int] NULL,
	[cusID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[orderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProducerType]    Script Date: 4/24/2022 12:53:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProducerType](
	[proProducer] [int] IDENTITY(1,1) NOT NULL,
	[proProducerName] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[proProducer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 4/24/2022 12:53:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[proID] [int] IDENTITY(1,1) NOT NULL,
	[proName] [nvarchar](max) NULL,
	[proPrice] [int] NULL,
	[proPhoto] [char](100) NULL,
	[proType] [int] NULL,
	[proStatus] [nvarchar](50) NULL,
	[proProducer] [int] NULL,
	[proQuatity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[proID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductDetails]    Script Date: 4/24/2022 12:53:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductDetails](
	[proID] [int] IDENTITY(1,1) NOT NULL,
	[proDetails] [nvarchar](max) NULL,
	[proPhoto1] [char](100) NULL,
	[proPhoto2] [char](100) NULL,
	[proPhoto3] [char](100) NULL,
	[proPhoto4] [char](100) NULL,
	[proPhoto5] [char](100) NULL,
	[proMaxDetails] [nvarchar](max) NULL,
	[proDisplay] [nvarchar](50) NULL,
	[proOS] [nvarchar](50) NULL,
	[proCameraAhead] [nvarchar](100) NULL,
	[proCameraBehind] [nvarchar](50) NULL,
	[proChip] [nvarchar](100) NULL,
	[proRam] [nvarchar](50) NULL,
	[proMemory] [nvarchar](50) NULL,
	[proSim] [nvarchar](50) NULL,
	[proPin] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[proID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductType]    Script Date: 4/24/2022 12:53:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductType](
	[proType] [int] IDENTITY(1,1) NOT NULL,
	[proTypeName] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[proType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rates]    Script Date: 4/24/2022 12:53:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rates](
	[proID] [int] IDENTITY(1,1) NOT NULL,
	[numberStar] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[proID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Customers] ON 

INSERT [dbo].[Customers] ([cusID], [cusName], [cusEmail], [cusPhone], [cusPassword], [cusAddress], [cusType], [cusStatus], [cusPhoto]) VALUES (1, N'Nguyễn Thiện Quang', N'thienquangpro1221@gmail.com                                                                         ', N'0824707072 ', N'123       ', N'Tân Phú', 1, 1, NULL)
SET IDENTITY_INSERT [dbo].[Customers] OFF
GO
SET IDENTITY_INSERT [dbo].[DetailsOrders] ON 

INSERT [dbo].[DetailsOrders] ([DeOrderID], [proID], [orderAddress], [proPrice], [orderQuantity], [orderMoney], [cusID]) VALUES (4, 1, N'Tân phú', 30990000, 4, 123960000, 1)
INSERT [dbo].[DetailsOrders] ([DeOrderID], [proID], [orderAddress], [proPrice], [orderQuantity], [orderMoney], [cusID]) VALUES (5, 2, N'Tân phú', 16290000, 2, 32580000, 1)
INSERT [dbo].[DetailsOrders] ([DeOrderID], [proID], [orderAddress], [proPrice], [orderQuantity], [orderMoney], [cusID]) VALUES (6, 7, N'Tân phú', 35990000, 1, 35990000, 1)
INSERT [dbo].[DetailsOrders] ([DeOrderID], [proID], [orderAddress], [proPrice], [orderQuantity], [orderMoney], [cusID]) VALUES (7, 2, N'TP HCM', 16290000, 2, 32580000, 1)
INSERT [dbo].[DetailsOrders] ([DeOrderID], [proID], [orderAddress], [proPrice], [orderQuantity], [orderMoney], [cusID]) VALUES (8, 7, N'TP HCM', 35990000, 1, 35990000, 1)
SET IDENTITY_INSERT [dbo].[DetailsOrders] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([orderID], [orderDate], [orderStatus], [empID], [cusID]) VALUES (3, CAST(N'2022-04-22' AS Date), N'Đang đặt hàng', NULL, 1)
INSERT [dbo].[Orders] ([orderID], [orderDate], [orderStatus], [empID], [cusID]) VALUES (4, CAST(N'2022-04-22' AS Date), N'Đang đặt hàng', NULL, 1)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[ProducerType] ON 

INSERT [dbo].[ProducerType] ([proProducer], [proProducerName]) VALUES (1, N'Apple')
INSERT [dbo].[ProducerType] ([proProducer], [proProducerName]) VALUES (2, N'Samsung')
INSERT [dbo].[ProducerType] ([proProducer], [proProducerName]) VALUES (3, N'Oppo')
INSERT [dbo].[ProducerType] ([proProducer], [proProducerName]) VALUES (4, N'Vivo')
INSERT [dbo].[ProducerType] ([proProducer], [proProducerName]) VALUES (5, N'Xiaomi')
INSERT [dbo].[ProducerType] ([proProducer], [proProducerName]) VALUES (6, N'Realme')
INSERT [dbo].[ProducerType] ([proProducer], [proProducerName]) VALUES (7, N'Nokia')
INSERT [dbo].[ProducerType] ([proProducer], [proProducerName]) VALUES (8, N'Intel')
INSERT [dbo].[ProducerType] ([proProducer], [proProducerName]) VALUES (9, N'Macbook')
INSERT [dbo].[ProducerType] ([proProducer], [proProducerName]) VALUES (10, N'Asus')
INSERT [dbo].[ProducerType] ([proProducer], [proProducerName]) VALUES (11, N'HP')
INSERT [dbo].[ProducerType] ([proProducer], [proProducerName]) VALUES (12, N'Lenovo')
INSERT [dbo].[ProducerType] ([proProducer], [proProducerName]) VALUES (13, N'Acer')
INSERT [dbo].[ProducerType] ([proProducer], [proProducerName]) VALUES (14, N'Dell')
INSERT [dbo].[ProducerType] ([proProducer], [proProducerName]) VALUES (15, N'MSI')
INSERT [dbo].[ProducerType] ([proProducer], [proProducerName]) VALUES (16, N'Surface')
INSERT [dbo].[ProducerType] ([proProducer], [proProducerName]) VALUES (17, N'LG')
INSERT [dbo].[ProducerType] ([proProducer], [proProducerName]) VALUES (18, N'GIGABYTE')
INSERT [dbo].[ProducerType] ([proProducer], [proProducerName]) VALUES (19, N'Intel')
INSERT [dbo].[ProducerType] ([proProducer], [proProducerName]) VALUES (20, N'CHUWI')
SET IDENTITY_INSERT [dbo].[ProducerType] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([proID], [proName], [proPrice], [proPhoto], [proType], [proStatus], [proProducer], [proQuatity]) VALUES (1, N'Điện thoại Samsung Galaxy S22 Ultra 5G 128GB', 30990000, N'Galaxy-S22-Ultra-Burgundy-600x600.jpg                                                               ', NULL, N'1', 2, 980)
INSERT [dbo].[Product] ([proID], [proName], [proPrice], [proPhoto], [proType], [proStatus], [proProducer], [proQuatity]) VALUES (2, N'Điện thoại iPhone 11 64GB', 16290000, N'iphone-xi-do-600x600.jpg                                                                            ', NULL, N'1', 1, 200)
INSERT [dbo].[Product] ([proID], [proName], [proPrice], [proPhoto], [proType], [proStatus], [proProducer], [proQuatity]) VALUES (3, N'Điện thoại OPPO Reno7 Z 5G', 10490000, N'oppo-reno7-z-5g-thumb-1-1-600x600.jpg                                                               ', NULL, N'1', 3, 1000)
INSERT [dbo].[Product] ([proID], [proName], [proPrice], [proPhoto], [proType], [proStatus], [proProducer], [proQuatity]) VALUES (4, N'Điện thoại iPhone 13 Pro 128GB', 29990000, N'iphone-13-pro-sierra-blue-600x600.jpg                                                               ', NULL, N'1', 1, 800)
INSERT [dbo].[Product] ([proID], [proName], [proPrice], [proPhoto], [proType], [proStatus], [proProducer], [proQuatity]) VALUES (5, N'Điện thoại iPhone 12 Pro Max 256GB', 29990000, N'iphone-12-pro-max-vang-new-600x600-1-600x600.jpg                                                    ', NULL, N'1', 1, 500)
INSERT [dbo].[Product] ([proID], [proName], [proPrice], [proPhoto], [proType], [proStatus], [proProducer], [proQuatity]) VALUES (6, N'Điện thoại Realme C35 64GB', 3990000, N'realme-c35-thumb-new-600x600.jpg                                                                    ', NULL, N'1', 6, 399)
INSERT [dbo].[Product] ([proID], [proName], [proPrice], [proPhoto], [proType], [proStatus], [proProducer], [proQuatity]) VALUES (7, N'Điện thoại Samsung Galaxy Z Fold3 5G 256GB', 35990000, N'samsung-galaxy-z-fold-3-silver-1-600x600.jpg                                                        ', NULL, N'1', 2, 500)
INSERT [dbo].[Product] ([proID], [proName], [proPrice], [proPhoto], [proType], [proStatus], [proProducer], [proQuatity]) VALUES (8, N'Điện thoại iPhone 13 Pro Max 128GB Xanh lá', 33490000, N'iphone-13-pro-max-xanh-la-thumb-600x600.jpg                                                         ', NULL, N'1', 1, 900)
INSERT [dbo].[Product] ([proID], [proName], [proPrice], [proPhoto], [proType], [proStatus], [proProducer], [proQuatity]) VALUES (9, N'Điện thoại iPhone 13 256GB Xanh lá', 26790000, N'iphone-13-xanh-la-thumb-2-600x600.jpg                                                               ', NULL, N'1', 1, 699)
INSERT [dbo].[Product] ([proID], [proName], [proPrice], [proPhoto], [proType], [proStatus], [proProducer], [proQuatity]) VALUES (10, N'Điện thoại Samsung Galaxy Z Flip3 5G 128GB', 24990000, N'samsung-galaxy-z-flip-3-cream-1-600x600.jpg                                                         ', NULL, N'1', 1, 500)
INSERT [dbo].[Product] ([proID], [proName], [proPrice], [proPhoto], [proType], [proStatus], [proProducer], [proQuatity]) VALUES (11, N'Điện thoại Vivo V21 5G', 9990000, N'vivo-v21-5g-xanh-den-600x600.jpg                                                                    ', NULL, N'1', 4, 499)
INSERT [dbo].[Product] ([proID], [proName], [proPrice], [proPhoto], [proType], [proStatus], [proProducer], [proQuatity]) VALUES (12, N'Điện thoại OPPO Reno4 Pro ', 10490000, N'oppo-reno4-pro-trang-600x600.jpg                                                                    ', NULL, N'1', 3, 999)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductDetails] ON 

INSERT [dbo].[ProductDetails] ([proID], [proDetails], [proPhoto1], [proPhoto2], [proPhoto3], [proPhoto4], [proPhoto5], [proMaxDetails], [proDisplay], [proOS], [proCameraAhead], [proCameraBehind], [proChip], [proRam], [proMemory], [proSim], [proPin]) VALUES (1, N'Galaxy S22 Ultra 5G chiếc smartphone cao cấp nhất trong bộ 3 Galaxy S22 series mà Samsung đã cho ra mắt. Tích hợp bút S Pen hoàn hảo trong thân máy, trang bị vi xử lý mạnh mẽ cho các tác vụ sử dụng vô cùng mượt mà và nổi bật hơn với cụm camera không viền độc đáo mang đậm dấu ấn riêng.', N'SamsungGalaxyS22ultraRAM8GBfixhz-1020x570.jpg                                                       ', N'2.ButSpen-1020x570.jpg                                                                              ', N'3.Trainghiemthigiac-1020x570.jpg                                                                    ', N'5.Thietkebenbi-1020x570.jpg                                                                         ', N'samsung-galaxy-s22-ultra-note.jpg                                                                   ', NULL, N'Dynamic AMOLED 2X6.8"Quad HD+ (2K+)', N'
Android 12', N'40MP', N'Chính 108 MP & Phụ 12 MP, 10 MP, 10 MP', N'Snapdragon 8 Gen 1 8 nhân', N'8 GB', N'128 GB', N'2 Nano SIM hoặc 1 Nano SIM + 1 eSIMHỗ trợ 5G', N'
5000 mAh45 W')
INSERT [dbo].[ProductDetails] ([proID], [proDetails], [proPhoto1], [proPhoto2], [proPhoto3], [proPhoto4], [proPhoto5], [proMaxDetails], [proDisplay], [proOS], [proCameraAhead], [proCameraBehind], [proChip], [proRam], [proMemory], [proSim], [proPin]) VALUES (2, N'Apple đã chính thức trình làng bộ 3 siêu phẩm iPhone 11, trong đó phiên bản iPhone 11 64GB có mức giá rẻ nhất nhưng vẫn được nâng cấp mạnh mẽ như iPhone Xr ra mắt trước đó.', N'vi-vn-iphone-11-mausac.jpg                                                                          ', N'-iphone-11-thietke.jpg                                                                              ', N'iphone-11-xanh-la-1-1-org.jpg                                                                       ', N'iphone-11-tim-1-1-1-org.jpg                                                                         ', N'iphone-11-note.jpg                                                                                  ', NULL, N'IPS LCD6.1"Liquid Retina', N'iOS 15', N'12MP', N'2 camera 12 MP', N'Apple A13 Bionic', N'4 GB', N'64 GB', N'1 Nano SIM & 1 eSIMHỗ trợ 4G', N'3110 mAh18 W')
INSERT [dbo].[ProductDetails] ([proID], [proDetails], [proPhoto1], [proPhoto2], [proPhoto3], [proPhoto4], [proPhoto5], [proMaxDetails], [proDisplay], [proOS], [proCameraAhead], [proCameraBehind], [proChip], [proRam], [proMemory], [proSim], [proPin]) VALUES (3, N'OPPO đã trình làng mẫu Reno7 Z 5G với thiết kế OPPO Glow độc quyền, camera mang hiệu ứng như máy DSLR chuyên nghiệp cùng viền sáng kép, máy có một cấu hình mạnh mẽ và đạt chứng nhận xếp hạng A về độ mượt.', N'1-1020x570.jpg                                                                                      ', N'2-2-1020x570.jpg                                                                                    ', N'3-3-1020x570.jpg                                                                                    ', N'4-1020x570.jpg                                                                                      ', N'oppo-reno7-z-note-3.jpg                                                                             ', NULL, N'AMOLED6.43"Full HD+', N'Android 11', N'16 MP', N'Chính 64 MP & Phụ 2 MP, 2 MP', N'Snapdragon 695 5G 8 nhân', N'8 GB', N'128 GB', N'2 Nano SIM (SIM 2 chung khe thẻ nhớ)Hỗ trợ 5G', N'NULL4500 mAh33 W')
INSERT [dbo].[ProductDetails] ([proID], [proDetails], [proPhoto1], [proPhoto2], [proPhoto3], [proPhoto4], [proPhoto5], [proMaxDetails], [proDisplay], [proOS], [proCameraAhead], [proCameraBehind], [proChip], [proRam], [proMemory], [proSim], [proPin]) VALUES (4, N'iPhone 13 Pro Max 128 GB - siêu phẩm được mong chờ nhất ở nửa cuối năm 2021 đến từ Apple. Máy có thiết kế không mấy đột phá khi so với người tiền nhiệm, bên trong đây vẫn là một sản phẩm có màn hình siêu đẹp, tần số quét được nâng cấp lên 120 Hz mượt mà, cảm biến camera có kích thước lớn hơn, cùng hiệu năng mạnh mẽ với sức mạnh đến từ Apple A15 Bionic, sẵn sàng cùng bạn chinh phục mọi thử thách.', N'iphone-13-pro-max-1-2.jpg                                                                           ', N'iphone-13-pro-max-1-3.jpg                                                                           ', N'iphone-13-pro-max-1-1.jpg                                                                           ', N'iphone-13-pro-max-xanh-1.jpg                                                                        ', N'iphone-13-pro-max-n-2.jpg                                                                           ', NULL, N'OLED6.7"Super Retina XDR', N'iOS 15', N'12 MP', N'3 camera 12 MP', N'Apple A15 Bionic', N'6 GB', N'128 GB', N'1 Nano SIM & 1 eSIMHỗ trợ 5G', N'4352 mAh20 W')
INSERT [dbo].[ProductDetails] ([proID], [proDetails], [proPhoto1], [proPhoto2], [proPhoto3], [proPhoto4], [proPhoto5], [proMaxDetails], [proDisplay], [proOS], [proCameraAhead], [proCameraBehind], [proChip], [proRam], [proMemory], [proSim], [proPin]) VALUES (5, N'Chiếc điện thoại iPhone 12 Pro Max 256 GB là mẫu smartphone sở hữu nhiều tính năng nổi bật với hệ thống camera chất lượng, hiệu năng vượt trội hay hỗ trợ kết nối 5G hứa hẹn sẽ là mẫu sản phẩm mang lại cảm giác trải nghiệm tối ưu cho người dùng.', N'iphone-12-pro-max-256gb-281120-1232000.jpg                                                          ', N'iphone-12-pro-max-256gb-bac-1-org.jpg                                                               ', N'iphone-12-pro-max-256gb-bac-4-org.jpg                                                               ', N'iphone-12-pro-max-256gb-xam-1-org.jpg                                                               ', N'iphone-12-pro-max-256gb-note-2.jpg                                                                  ', NULL, N'OLED6.7"Super Retina XDR', N'iOS 15', N'12 MP', N'Apple A14 Bionic', N'Apple A14 Bionic', N'6 GB', N'256 GB', N'
1 Nano SIM & 1 eSIMHỗ trợ 5G', N'3687 mAh20 W')
INSERT [dbo].[ProductDetails] ([proID], [proDetails], [proPhoto1], [proPhoto2], [proPhoto3], [proPhoto4], [proPhoto5], [proMaxDetails], [proDisplay], [proOS], [proCameraAhead], [proCameraBehind], [proChip], [proRam], [proMemory], [proSim], [proPin]) VALUES (6, N'Realme C35 thuộc phân khúc giá rẻ được nhà Realme cho ra mắt với thiết kế trẻ trung, dung lượng pin lớn cùng camera hỗ trợ nhiều tính năng. Đây sẽ là thiết bị liên lạc, giải trí và làm việc ổn định,… cho các nhu cầu sử dụng của bạn.', N'realme-c35-1-1.jpg                                                                                  ', N'realme-c35-2-1.jpg                                                                                  ', N'realme-c35-1-2.jpg                                                                                  ', N'realme-c35-3-2.jpg                                                                                  ', N'realme-c35-n.jpg                                                                                    ', NULL, N'IPS LCD6.6"Full HD+', N'
Android 11', N'
8 MP', N'Chính 50 MP & Phụ 2 MP, 0.3 MP', N'Unisoc T616 8 nhân', N'
4 GB', N'
64 GB', N'
2 Nano SIMHỗ trợ 4G', N'
5000 mAh18 W')
INSERT [dbo].[ProductDetails] ([proID], [proDetails], [proPhoto1], [proPhoto2], [proPhoto3], [proPhoto4], [proPhoto5], [proMaxDetails], [proDisplay], [proOS], [proCameraAhead], [proCameraBehind], [proChip], [proRam], [proMemory], [proSim], [proPin]) VALUES (7, N'Galaxy Z Fold3 5G, chiếc điện thoại được nâng cấp toàn diện về nhiều mặt, đặc biệt đây là điện thoại màn hình gập đầu tiên trên thế giới có camera ẩn (08/2021). Sản phẩm sẽ là một “cú hit” của Samsung góp phần mang đến những trải nghiệm mới cho người dùng.', N'samsung-galaxy-z-fold-3-1-3.jpg                                                                     ', N'samsung-galaxy-z-fold-3-2-3.jpg                                                                     ', N'samsung-galaxy-z-fold-3-1-1-org.jpg                                                                 ', N'samsung-galaxy-z-fold-3-2-2.jpg                                                                     ', N'samsung-galaxy-z-fold-3-n-2.jpg                                                                     ', NULL, N'Dynamic AMOLED 2XChính 7.6" & Phụ 6.2"Full HD+', N'
Android 11', N'10 MP & 4 MP', N'
3 camera 12 MP', N'Snapdragon 888', N'
12 GB', N'
256 GB', N'
2 Nano SIM + 1 eSIMHỗ trợ 5G', N'
4400 mAh25 W')
INSERT [dbo].[ProductDetails] ([proID], [proDetails], [proPhoto1], [proPhoto2], [proPhoto3], [proPhoto4], [proPhoto5], [proMaxDetails], [proDisplay], [proOS], [proCameraAhead], [proCameraBehind], [proChip], [proRam], [proMemory], [proSim], [proPin]) VALUES (8, N'iPhone 13 Pro Max 128GB Xanh lá là một trong những phiên bản mới nhất của dòng điện thoại iPhone 13 series được Apple ra mắt gần đây. Với màu xanh lá cuốn mắt và bộ nhớ trong 128 GB giúp bạn không quá lo lắng về vấn đề dung lượng, camera sắc nét,... sẽ không khiến bạn thất vọng vọng đâu.', N'iphone-13-pro-xanh-xa-1.jpg                                                                         ', N'iphone-13-pro-xanh-xa-2.jpg                                                                         ', N'iphone-13-pro-xanh-xa-3.jpg                                                                         ', N'iphone-13-pro-max-xanh-la-170322-095645.jpg                                                         ', N'iphone-13-pro-max-xanh-la-170322-095649.jpg                                                         ', NULL, N'
OLED6.7"Super Retina XDR', N'
iOS 15', N'12 MP', N'3 camera 12 MP', N'Apple A14 Bionic', N'
6 GB', N'
128 GB', N'1 Nano SIM & 1 eSIMHỗ trợ 5G', N'4352 mAh20 W')
INSERT [dbo].[ProductDetails] ([proID], [proDetails], [proPhoto1], [proPhoto2], [proPhoto3], [proPhoto4], [proPhoto5], [proMaxDetails], [proDisplay], [proOS], [proCameraAhead], [proCameraBehind], [proChip], [proRam], [proMemory], [proSim], [proPin]) VALUES (9, N'NUĐúng như dự đoán, Apple đã tổ chức sự kiện Peek Performance vào ngày 9/3 (theo giờ Việt Nam) để công bố loạt sản phẩm đình đám, cũng như giới thiệu màu sắc mới cho dòng iPhone 13 Xanh lá. Không còn là màu xanh bạc hà nhẹ nhàng nữa, iPhone 13 256GB Xanh lá mang sắc xanh đậm chất thiên nhiên.LL', N'Artboard1(1)-1020x569.jpg                                                                           ', N'iphone-13-mini-xanh-xa-3.jpg                                                                        ', N'iphone-13-mini-xanh-xa-5.jpg                                                                        ', N'iphone-13-256gb-xanh-la-180322-094853.jpg                                                           ', N'iphone-13-256gb-xanh-la-180322-094853.jpg                                                           ', NULL, N'
OLED6.7"Super Retina XDR', N'
iOS 15', N'1170 x 2532 Pixels', N'3 camera 12 MP', N'Apple A14 Bionic', N'
6 GB', N'
128 GB', N'1 Nano SIM & 1 eSIMHỗ trợ 5G', N'4352 mAh20 W')
INSERT [dbo].[ProductDetails] ([proID], [proDetails], [proPhoto1], [proPhoto2], [proPhoto3], [proPhoto4], [proPhoto5], [proMaxDetails], [proDisplay], [proOS], [proCameraAhead], [proCameraBehind], [proChip], [proRam], [proMemory], [proSim], [proPin]) VALUES (10, N'Trong sự kiện Galaxy Unpacked hồi 11/8, Samsung đã chính thức trình làng mẫu điện thoại màn hình gập thế hệ mới mang tên Galaxy Z Flip3 5G 128GB. Đây là một siêu phẩm với màn hình gập dạng vỏ sò cùng nhiều điểm cải tiến và thông số ấn tượng, sản phẩm chắc chắn sẽ thu hút được rất nhiều sự quan tâm của người dùng, đặc biệt là phái nữ', N'samsung-galaxy-z-flip-3-kem-1-org.jpg                                                               ', N'samsung-galaxy-z-flip-3-1-2.jpg                                                                     ', N'samsung-galaxy-z-flip-3-1-3.jpg                                                                     ', N'samsung-galaxy-z-flip-3-1-4.jpg                                                                     ', N'samsung-galaxy-z-flip-3-kem-note.jpg                                                                ', NULL, N'Dynamic AMOLED 2XChính 6.7" & Phụ 1.9"Full HD+', N'Android 11', N'10 MP', N'
2 camera 12 MP', N'
Snapdragon 888', N'8 GB', N'128 GB', N'
1 Nano SIM & 1 eSIMHỗ trợ 5G', N'
3300 mAh15 W')
INSERT [dbo].[ProductDetails] ([proID], [proDetails], [proPhoto1], [proPhoto2], [proPhoto3], [proPhoto4], [proPhoto5], [proMaxDetails], [proDisplay], [proOS], [proCameraAhead], [proCameraBehind], [proChip], [proRam], [proMemory], [proSim], [proPin]) VALUES (11, N'Chụp selfie bùng nổ trong đêm, thiết kế mới hiện đại đón đầu xu hướng, cùng với đó là tốc độ kết nối mạng 5G hàng đầu, tất cả những tính năng ấn tượng này đều có trong Vivo V21 5G mẫu điện thoại cận cao cấp đến từ Vivo.', N'vivo-v21-5g-xanh-den-1-org.jpg                                                                      ', N'vivo-v21-5g-xanh-den-2-org.jpg                                                                      ', N'vivo-v21-5g-tim-hong-1-3-org.jpg                                                                    ', N'vivo-v21-5g-tim-hong-4-3-org.jpg                                                                    ', N'vivo-v21-5g-note.jpg                                                                                ', NULL, N'AMOLED6.44"Full HD+', N'Android 11', N'
44 MP', N'
Chính 64 MP & Phụ 8 MP, 2 MP', N'MediaTek Dimensity 800U 5G', N'8 GB + 3 GB (Công nghệ mở rộng RAM)', N'128 GB', N'
2 Nano SIMHỗ trợ 5G', N'
4000 mAh33 W')
INSERT [dbo].[ProductDetails] ([proID], [proDetails], [proPhoto1], [proPhoto2], [proPhoto3], [proPhoto4], [proPhoto5], [proMaxDetails], [proDisplay], [proOS], [proCameraAhead], [proCameraBehind], [proChip], [proRam], [proMemory], [proSim], [proPin]) VALUES (12, N'OPPO chính thức trình làng chiếc smartphone có tên OPPO Reno4 Pro. Máy trang bị cấu hình vô cùng cao cấp với vi xử lý chip Snapdragon 720G, bộ 4 camera đến 48 MP ấn tượng, cùng công nghệ sạc siêu nhanh 65 W nhưng được bán với mức giá vô ưu đãi, dễ tiếp cận.', N'oppo-reno4-pro-trang-1-org.jpg                                                                      ', N'oppo-reno4-pro-trang-4-org.jpg                                                                      ', N'oppo-reno4-pro-den-1-org.jpg                                                                        ', N'oppo-reno4-pro-den-5-org.jpg                                                                        ', N'oppo-reno4-pro-note.jpg                                                                             ', NULL, N'AMOLED6.5"Full HD+', N'
Android 10 ', N'32 MP', N'
Chính 48 MP & Phụ 8 MP, 2 MP, 2 MP', N'Snapdragon 720G', N'
8 GB', N'256 GB', N'2 Nano SIMHỗ trợ 4G', N'4000 mAh65 W')
SET IDENTITY_INSERT [dbo].[ProductDetails] OFF
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [fk_ca] FOREIGN KEY([cusID])
REFERENCES [dbo].[Customers] ([cusID])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [fk_ca]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [fk_CartproID] FOREIGN KEY([proID])
REFERENCES [dbo].[Product] ([proID])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [fk_CartproID]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [fk_ComCusID] FOREIGN KEY([cusID])
REFERENCES [dbo].[Customers] ([cusID])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [fk_ComCusID]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [fk_ComPr] FOREIGN KEY([proID])
REFERENCES [dbo].[Product] ([proID])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [fk_ComPr]
GO
ALTER TABLE [dbo].[DetailsOrders]  WITH CHECK ADD  CONSTRAINT [fk_DeOrderCus] FOREIGN KEY([cusID])
REFERENCES [dbo].[Customers] ([cusID])
GO
ALTER TABLE [dbo].[DetailsOrders] CHECK CONSTRAINT [fk_DeOrderCus]
GO
ALTER TABLE [dbo].[DetailsOrders]  WITH CHECK ADD  CONSTRAINT [fk_DeOrderProID] FOREIGN KEY([proID])
REFERENCES [dbo].[Product] ([proID])
GO
ALTER TABLE [dbo].[DetailsOrders] CHECK CONSTRAINT [fk_DeOrderProID]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [fk_EmPos] FOREIGN KEY([emPositon])
REFERENCES [dbo].[EmployeesPosition] ([emPositon])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [fk_EmPos]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [fk_EmRole] FOREIGN KEY([empRole])
REFERENCES [dbo].[EmployeesRole] ([empRole])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [fk_EmRole]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [fk_OrderEmID] FOREIGN KEY([empID])
REFERENCES [dbo].[Employees] ([empID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [fk_OrderEmID]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [fk_orderscus] FOREIGN KEY([cusID])
REFERENCES [dbo].[Customers] ([cusID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [fk_orderscus]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [fk_Producer] FOREIGN KEY([proProducer])
REFERENCES [dbo].[ProducerType] ([proProducer])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [fk_Producer]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [fk_ProType] FOREIGN KEY([proType])
REFERENCES [dbo].[ProductType] ([proType])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [fk_ProType]
GO
ALTER TABLE [dbo].[ProductDetails]  WITH CHECK ADD  CONSTRAINT [fk_ProID] FOREIGN KEY([proID])
REFERENCES [dbo].[Product] ([proID])
GO
ALTER TABLE [dbo].[ProductDetails] CHECK CONSTRAINT [fk_ProID]
GO
ALTER TABLE [dbo].[Rates]  WITH CHECK ADD  CONSTRAINT [fk_RatePro] FOREIGN KEY([proID])
REFERENCES [dbo].[Product] ([proID])
GO
ALTER TABLE [dbo].[Rates] CHECK CONSTRAINT [fk_RatePro]
GO
