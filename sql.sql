USE [PP02]
GO
/****** Object:  Table [dbo].[AttachedProduct]    Script Date: 23.03.2023 19:26:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AttachedProduct](
	[MainProductID] [int] NOT NULL,
	[AttachedProductID] [int] NOT NULL,
 CONSTRAINT [PK_AttachedProduct] PRIMARY KEY CLUSTERED 
(
	[MainProductID] ASC,
	[AttachedProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 23.03.2023 19:26:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Patronymic] [nvarchar](50) NULL,
	[Birthday] [date] NULL,
	[RegistrationDate] [datetime] NOT NULL,
	[Email] [nvarchar](255) NULL,
	[Phone] [nvarchar](20) NOT NULL,
	[GenderCode] [nchar](1) NOT NULL,
	[PhotoPath] [nvarchar](1000) NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientService]    Script Date: 23.03.2023 19:26:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientService](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ClientID] [int] NOT NULL,
	[ServiceID] [int] NOT NULL,
	[StartTime] [datetime] NOT NULL,
	[Comment] [nvarchar](max) NULL,
 CONSTRAINT [PK_ClientService] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DocumentByService]    Script Date: 23.03.2023 19:26:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocumentByService](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ClientServiceID] [int] NOT NULL,
	[DocumentPath] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK_DocumentByService] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gender]    Script Date: 23.03.2023 19:26:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gender](
	[Code] [nchar](1) NOT NULL,
	[Name] [nvarchar](10) NULL,
 CONSTRAINT [PK_Gender] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[import]    Script Date: 23.03.2023 19:26:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[import](
	[id] [float] NULL,
	[Наименование_услуги] [nvarchar](255) NULL,
	[Главное_изображение] [nvarchar](255) NULL,
	[Длительность] [float] NULL,
	[Стоимость] [float] NULL,
	[Действующая_скидка] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manufacturer]    Script Date: 23.03.2023 19:26:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manufacturer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[StartDate] [date] NULL,
 CONSTRAINT [PK_Manufacturer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 23.03.2023 19:26:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[Cost] [money] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[MainImagePath] [nvarchar](1000) NULL,
	[IsActive] [bit] NOT NULL,
	[ManufacturerID] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductPhoto]    Script Date: 23.03.2023 19:26:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductPhoto](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[PhotoPath] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK_ProductPhoto] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductSale]    Script Date: 23.03.2023 19:26:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductSale](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SaleDate] [datetime] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[ClientServiceID] [int] NULL,
 CONSTRAINT [PK_ProductSale] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Service]    Script Date: 23.03.2023 19:26:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[Cost] [money] NOT NULL,
	[DurationInSeconds] [float] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Discount] [float] NULL,
	[MainImagePath] [nvarchar](1000) NULL,
 CONSTRAINT [PK_Service] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServicePhoto]    Script Date: 23.03.2023 19:26:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServicePhoto](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ServiceID] [int] NOT NULL,
	[PhotoPath] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK_ServicePhoto] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tag]    Script Date: 23.03.2023 19:26:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tag](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](30) NOT NULL,
	[Color] [nchar](6) NOT NULL,
 CONSTRAINT [PK_Tag] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TagOfClient]    Script Date: 23.03.2023 19:26:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TagOfClient](
	[ClientID] [int] NOT NULL,
	[TagID] [int] NOT NULL,
 CONSTRAINT [PK_TagOfClient] PRIMARY KEY CLUSTERED 
(
	[ClientID] ASC,
	[TagID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Client] ON 

INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (1, N'Васильев', N'Оскар', N'Богданович', CAST(N'1971-01-30' AS Date), CAST(N'2017-05-28T00:00:00.000' AS DateTime), N'miturria@verizon.net', N'7(585)801-94-29 ', N'1', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (2, N'Лазарев', N'Алексей', N'Богданович', CAST(N'1977-03-10' AS Date), CAST(N'2017-01-02T00:00:00.000' AS DateTime), N'claesjac@me.com', N'7(0055)737-37-48 ', N'1', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (3, N'Казаков', N'Дмитрий', N'Русланович', CAST(N'1978-12-15' AS Date), CAST(N'2016-05-21T00:00:00.000' AS DateTime), N'ozawa@verizon.net', N'7(51)682-19-40 ', N'1', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (4, N'Попова', N'Харита', N'Якуновна', CAST(N'1997-12-16' AS Date), CAST(N'2016-07-05T00:00:00.000' AS DateTime), N'firstpr@verizon.net', N'7(335)386-81-06 ', N'2', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (5, N'Турова', N'Георгина', N'Семёновна', CAST(N'1974-05-28' AS Date), CAST(N'2018-02-22T00:00:00.000' AS DateTime), N'yruan@optonline.net', N'7(555)321-42-99 ', N'2', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (6, N'Андреев', N'Станислав', N'Максович', CAST(N'1975-10-10' AS Date), CAST(N'2017-12-26T00:00:00.000' AS DateTime), N'budinger@mac.com', N'7(02)993-91-28 ', N'1', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (7, N'Орлова', N'Влада', N'Мартыновна', CAST(N'1990-06-26' AS Date), CAST(N'2016-03-21T00:00:00.000' AS DateTime), N'rnelson@yahoo.ca', N'7(2506)433-38-35 ', N'2', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (8, N'Костина', N'Любава', N'Авксентьевна', CAST(N'1972-07-13' AS Date), CAST(N'2016-02-26T00:00:00.000' AS DateTime), N'gordonjcp@hotmail.com', N'7(6419)959-21-87 ', N'2', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (9, N'Александров', N'Станислав', N'Эдуардович', CAST(N'1981-07-04' AS Date), CAST(N'2018-11-08T00:00:00.000' AS DateTime), N'bigmauler@aol.com', N'7(18)164-05-12 ', N'1', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (10, N'Корнилова', N'Анэля', N'Михайловна', CAST(N'1973-04-02' AS Date), CAST(N'2016-05-22T00:00:00.000' AS DateTime), N'jonathan@aol.com', N'7(20)980-01-60 ', N'2', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (11, N'Морозов', N'Наум', N'Валерьянович', CAST(N'1985-07-04' AS Date), CAST(N'2016-05-02T00:00:00.000' AS DateTime), N'salesgeek@mac.com', N'7(636)050-96-13 ', N'1', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (12, N'Баранова', N'Эльмира', N'Дмитриевна', CAST(N'1977-01-15' AS Date), CAST(N'2016-07-08T00:00:00.000' AS DateTime), N'jgmyers@comcast.net', N'7(9240)643-15-50 ', N'2', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (13, N'Степанова', N'Амелия', N'Робертовна', CAST(N'1970-06-06' AS Date), CAST(N'2017-09-27T00:00:00.000' AS DateTime), N'rasca@hotmail.com', N'7(1217)441-28-42 ', N'2', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (14, N'Горбачёв', N'Давид', N'Тимурович', CAST(N'1983-05-22' AS Date), CAST(N'2018-12-17T00:00:00.000' AS DateTime), N'hedwig@att.net', N'7(53)602-85-41 ', N'1', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (15, N'Волков', N'Людвиг', N'Витальевич', CAST(N'1977-12-27' AS Date), CAST(N'2016-04-27T00:00:00.000' AS DateTime), N'jrkorson@msn.com', N'7(8459)592-05-58 ', N'1', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (16, N'Комиссарова', N'Амалия', N'Робертовна', CAST(N'1971-08-18' AS Date), CAST(N'2017-08-04T00:00:00.000' AS DateTime), N'jorgb@msn.com', N'7(22)647-46-32 ', N'2', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (17, N'Большаков', N'Вадим', N'Данилович', CAST(N'1970-05-15' AS Date), CAST(N'2018-08-04T00:00:00.000' AS DateTime), N'uncle@gmail.com', N'7(386)641-13-37 ', N'1', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (18, N'Абрамов', N'Станислав', N'Филатович', CAST(N'1989-05-18' AS Date), CAST(N'2016-12-08T00:00:00.000' AS DateTime), N'solomon@att.net', N'7(6545)478-87-79 ', N'1', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (19, N'Журавлёв', N'Леонтий', N'Яковлевич', CAST(N'2000-03-02' AS Date), CAST(N'2018-01-15T00:00:00.000' AS DateTime), N'cmdrgravy@me.com', N'7(4403)308-56-96 ', N'1', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (20, N'Селиверстов', N'Глеб', N'Максимович', CAST(N'1999-06-20' AS Date), CAST(N'2016-01-07T00:00:00.000' AS DateTime), N'jigsaw@sbcglobal.net', N'7(20)554-28-68 ', N'1', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (21, N'Киселёв', N'Устин', N'Яковлевич', CAST(N'1985-01-08' AS Date), CAST(N'2018-06-21T00:00:00.000' AS DateTime), N'dalamb@verizon.net', N'7(83)334-52-76 ', N'1', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (22, N'Зуев', N'Матвей', N'Иванович', CAST(N'1981-03-28' AS Date), CAST(N'2018-12-18T00:00:00.000' AS DateTime), N'brickbat@verizon.net', N'7(5383)893-04-66 ', N'1', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (23, N'Ершов', N'Глеб', N'Федорович', CAST(N'1970-06-14' AS Date), CAST(N'2016-09-14T00:00:00.000' AS DateTime), N'sjava@aol.com', N'7(2608)298-40-82 ', N'1', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (24, N'Бобылёв', N'Георгий', N'Витальевич', CAST(N'1983-12-19' AS Date), CAST(N'2018-04-06T00:00:00.000' AS DateTime), N'csilvers@mac.com', N'7(88)685-13-51 ', N'1', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (25, N'Ефремов', N'Витольд', N'Авксентьевич', CAST(N'1975-12-02' AS Date), CAST(N'2018-04-09T00:00:00.000' AS DateTime), N'kwilliams@yahoo.ca', N'7(93)922-14-03 ', N'1', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (26, N'Андреева', N'Патрисия', N'Валерьевна', CAST(N'1993-11-18' AS Date), CAST(N'2016-07-17T00:00:00.000' AS DateTime), N'jigsaw@aol.com', N'7(9648)953-81-26 ', N'2', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (27, N'Ефимова', N'Магда', N'Платоновна', CAST(N'1995-08-16' AS Date), CAST(N'2017-08-01T00:00:00.000' AS DateTime), N'rbarreira@me.com', N'7(9261)386-15-92 ', N'2', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (28, N'Голубев', N'Иосиф', N'Тимофеевич', CAST(N'1982-05-06' AS Date), CAST(N'2018-08-18T00:00:00.000' AS DateTime), N'smcnabb@att.net', N'7(78)972-73-11 ', N'1', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (29, N'Евсеев', N'Макар', N'Васильевич', CAST(N'1977-09-13' AS Date), CAST(N'2018-12-05T00:00:00.000' AS DateTime), N'parsimony@sbcglobal.net', N'7(2141)077-85-70 ', N'1', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (30, N'Бобров', N'Агафон', N'Лаврентьевич', CAST(N'1995-07-29' AS Date), CAST(N'2017-05-09T00:00:00.000' AS DateTime), N'petersen@comcast.net', N'7(2159)507-39-57 ', N'1', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (31, N'Игнатов', N'Захар', N'Павлович', CAST(N'1998-10-07' AS Date), CAST(N'2017-11-10T00:00:00.000' AS DateTime), N'dieman@icloud.com', N'7(578)574-73-36 ', N'1', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (32, N'Гущина', N'Янита', N'Федоровна', CAST(N'1999-03-02' AS Date), CAST(N'2018-02-01T00:00:00.000' AS DateTime), N'lishoy@att.net', N'7(4544)716-68-96 ', N'2', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (33, N'Калашников', N'Артур', N'Юрьевич', CAST(N'1972-12-13' AS Date), CAST(N'2017-08-20T00:00:00.000' AS DateTime), N'oevans@aol.com', N'7(147)947-47-21 ', N'1', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (34, N'Дмитриева', N'Элина', N'Даниловна', CAST(N'1988-12-10' AS Date), CAST(N'2017-02-11T00:00:00.000' AS DateTime), N'vmalik@live.com', N'7(787)140-48-84 ', N'2', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (35, N'Федотова', N'Сандра', N'Владленовна', CAST(N'1985-03-29' AS Date), CAST(N'2016-11-08T00:00:00.000' AS DateTime), N'penna@verizon.net', N'7(126)195-25-86 ', N'2', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (36, N'Кузьмина', N'Дэнна', N'Витальевна', CAST(N'1993-08-24' AS Date), CAST(N'2016-03-27T00:00:00.000' AS DateTime), N'nichoj@mac.com', N'7(9940)977-45-73 ', N'2', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (37, N'Колобова', N'Злата', N'Романовна', CAST(N'1994-08-25' AS Date), CAST(N'2016-12-03T00:00:00.000' AS DateTime), N'sinkou@aol.com', N'7(50)884-07-35 ', N'2', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (38, N'Некрасов', N'Варлам', N'Михайлович', CAST(N'2000-11-12' AS Date), CAST(N'2017-12-03T00:00:00.000' AS DateTime), N'dogdude@verizon.net', N'7(019)258-06-35 ', N'1', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (39, N'Колобов', N'Орест', N'Юлианович', CAST(N'2001-07-14' AS Date), CAST(N'2017-01-01T00:00:00.000' AS DateTime), N'parkes@verizon.net', N'7(1680)508-58-26', N'1', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (40, N'Блохин', N'Пантелеймон', N'Феликсович', CAST(N'1978-03-06' AS Date), CAST(N'2018-02-14T00:00:00.000' AS DateTime), N'balchen@comcast.net', N'7(9524)556-48-98 ', N'1', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (41, N'Калинин', N'Петр', N'Иванович', CAST(N'1993-09-08' AS Date), CAST(N'2016-05-26T00:00:00.000' AS DateTime), N'aschmitz@hotmail.com', N'7(90)316-07-17 ', N'1', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (42, N'Беляева', N'Сабрина', N'Федосеевна', CAST(N'1972-07-26' AS Date), CAST(N'2017-06-14T00:00:00.000' AS DateTime), N'agapow@gmail.com', N'7(6580)534-32-58 ', N'2', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (43, N'Агафонов', N'Юстиниан', N'Олегович', CAST(N'1997-02-02' AS Date), CAST(N'2016-06-08T00:00:00.000' AS DateTime), N'staffelb@sbcglobal.net', N'7(303)810-28-78 ', N'1', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (44, N'Мамонтова', N'Марфа', N'Мироновна', CAST(N'1984-10-19' AS Date), CAST(N'2018-02-27T00:00:00.000' AS DateTime), N'rfoley@verizon.net', N'7(38)095-64-18 ', N'2', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (45, N'Блинов', N'Евгений', N'Мэлсович', CAST(N'1994-01-05' AS Date), CAST(N'2017-05-07T00:00:00.000' AS DateTime), N'moxfulder@outlook.com', N'7(0852)321-82-64 ', N'1', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (46, N'Воронова', N'Изабелла', N'Вячеславовна', CAST(N'1999-09-24' AS Date), CAST(N'2017-12-21T00:00:00.000' AS DateTime), N'kildjean@sbcglobal.net', N'7(17)433-44-98 ', N'2', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (47, N'Медведев', N'Святослав', N'Юлианович', CAST(N'1972-10-04' AS Date), CAST(N'2018-10-13T00:00:00.000' AS DateTime), N'hllam@comcast.net', N'7(3520)435-21-20 ', N'1', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (48, N'Куликова', N'Эвелина', N'Вячеславовна', CAST(N'1997-11-14' AS Date), CAST(N'2018-02-01T00:00:00.000' AS DateTime), N'ilikered@hotmail.com', N'7(0236)682-42-78 ', N'2', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (49, N'Суворова', N'Божена', N'Анатольевна', CAST(N'1981-03-09' AS Date), CAST(N'2016-01-28T00:00:00.000' AS DateTime), N'attwood@aol.com', N'7(347)895-86-57 ', N'2', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (50, N'Егорова', N'Амалия', N'Дамировна', CAST(N'1999-09-28' AS Date), CAST(N'2016-06-30T00:00:00.000' AS DateTime), N'drezet@yahoo.com', N'7(7486)408-12-26 ', N'2', NULL)
SET IDENTITY_INSERT [dbo].[Client] OFF
GO
SET IDENTITY_INSERT [dbo].[ClientService] ON 

INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (1, 50, 11, CAST(N'2019-11-16T11:20:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (2, 38, 42, CAST(N'2019-01-11T18:10:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (3, 38, 20, CAST(N'2019-12-01T14:40:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (4, 38, 29, CAST(N'2019-02-11T13:30:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (5, 20, 31, CAST(N'2019-09-10T18:20:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (6, 48, 27, CAST(N'2019-02-12T19:40:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (7, 24, 93, CAST(N'2019-04-04T09:10:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (8, 21, 21, CAST(N'2019-05-15T09:20:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (9, 16, 53, CAST(N'2019-01-16T14:20:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (10, 30, 35, CAST(N'2019-01-16T09:00:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (11, 3, 53, CAST(N'2019-03-15T10:50:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (12, 26, 42, CAST(N'2019-01-31T12:00:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (13, 6, 65, CAST(N'2019-11-19T15:50:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (14, 33, 33, CAST(N'2019-01-10T08:30:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (15, 35, 53, CAST(N'2019-04-29T15:00:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (16, 43, 81, CAST(N'2019-10-12T08:50:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (17, 48, 49, CAST(N'2019-02-13T18:00:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (18, 33, 65, CAST(N'2019-02-01T18:00:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (19, 30, 64, CAST(N'2019-11-12T18:50:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (20, 17, 84, CAST(N'2019-01-11T12:50:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (21, 9, 51, CAST(N'2019-03-23T19:50:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (22, 43, 13, CAST(N'2019-06-23T08:00:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (23, 38, 19, CAST(N'2019-05-25T17:10:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (24, 17, 68, CAST(N'2019-02-18T18:20:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (25, 35, 14, CAST(N'2019-07-17T08:20:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (26, 35, 93, CAST(N'2019-08-06T16:50:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (27, 1, 78, CAST(N'2019-12-14T08:40:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (28, 22, 77, CAST(N'2019-06-28T14:20:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (29, 48, 98, CAST(N'2019-06-06T19:20:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (30, 24, 51, CAST(N'2019-06-07T17:20:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (31, 46, 24, CAST(N'2019-04-30T18:10:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (32, 6, 84, CAST(N'2019-08-30T11:40:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (33, 25, 21, CAST(N'2019-05-08T14:10:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (34, 42, 67, CAST(N'2019-10-27T16:20:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (35, 30, 14, CAST(N'2019-01-05T08:40:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (36, 22, 28, CAST(N'2019-03-04T17:20:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (37, 50, 70, CAST(N'2019-09-29T13:40:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (38, 27, 4, CAST(N'2019-01-22T10:50:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (39, 30, 65, CAST(N'2019-12-19T19:30:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (40, 32, 30, CAST(N'2019-11-15T17:50:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (41, 12, 10, CAST(N'2019-07-04T17:10:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (42, 21, 42, CAST(N'2019-08-06T11:50:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (43, 35, 81, CAST(N'2019-11-09T13:00:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (44, 24, 63, CAST(N'2019-02-16T18:50:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (45, 23, 70, CAST(N'2019-03-03T17:20:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (46, 13, 24, CAST(N'2019-05-22T16:10:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (47, 36, 11, CAST(N'2019-07-31T18:10:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (48, 16, 28, CAST(N'2019-08-29T19:00:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (49, 21, 14, CAST(N'2019-10-02T10:10:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (50, 8, 42, CAST(N'2019-03-16T11:30:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (51, 43, 30, CAST(N'2019-08-27T11:40:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (52, 18, 67, CAST(N'2019-06-13T11:30:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (53, 4, 81, CAST(N'2019-08-18T16:00:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (54, 14, 35, CAST(N'2019-12-26T16:30:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (55, 11, 8, CAST(N'2019-11-27T18:50:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (56, 47, 14, CAST(N'2019-09-06T19:20:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (57, 46, 99, CAST(N'2019-09-24T13:40:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (58, 32, 90, CAST(N'2019-03-01T11:50:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (59, 5, 8, CAST(N'2019-09-28T10:00:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (60, 15, 93, CAST(N'2019-03-20T10:40:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (61, 10, 81, CAST(N'2019-11-27T11:30:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (62, 3, 61, CAST(N'2019-01-23T18:30:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (63, 27, 28, CAST(N'2019-10-21T10:20:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (64, 28, 93, CAST(N'2019-08-11T12:50:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (65, 7, 14, CAST(N'2019-01-03T14:40:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (66, 33, 65, CAST(N'2019-12-31T08:30:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (67, 41, 21, CAST(N'2019-08-29T10:10:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (68, 13, 20, CAST(N'2019-01-03T18:50:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (69, 14, 31, CAST(N'2019-04-09T11:10:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (70, 27, 13, CAST(N'2019-12-31T19:10:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (71, 2, 20, CAST(N'2019-10-17T13:30:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (72, 46, 70, CAST(N'2019-05-17T13:30:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (73, 11, 15, CAST(N'2019-11-23T18:40:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (74, 10, 84, CAST(N'2019-07-10T15:30:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (75, 38, 41, CAST(N'2019-06-09T13:40:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (76, 23, 70, CAST(N'2019-01-09T10:20:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (77, 2, 61, CAST(N'2019-08-15T18:30:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (78, 29, 84, CAST(N'2019-07-15T14:10:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (79, 21, 15, CAST(N'2019-12-31T18:00:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (80, 32, 8, CAST(N'2019-12-22T09:20:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (81, 14, 52, CAST(N'2019-12-28T16:00:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (82, 33, 70, CAST(N'2019-06-26T10:10:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (83, 10, 11, CAST(N'2019-04-29T12:40:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (84, 48, 11, CAST(N'2019-04-13T09:00:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (85, 23, 49, CAST(N'2019-01-05T16:00:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (86, 5, 41, CAST(N'2019-03-25T18:20:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (87, 29, 19, CAST(N'2019-11-09T18:50:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (88, 31, 42, CAST(N'2019-04-07T10:40:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (89, 50, 68, CAST(N'2019-11-11T18:50:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (90, 34, 14, CAST(N'2019-01-06T15:00:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (91, 4, 49, CAST(N'2019-08-20T19:10:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (92, 45, 49, CAST(N'2019-04-16T13:20:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (93, 27, 53, CAST(N'2019-12-22T15:10:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (94, 40, 84, CAST(N'2019-01-22T16:50:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (95, 8, 19, CAST(N'2019-09-04T08:10:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (96, 41, 78, CAST(N'2019-01-01T14:50:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (97, 35, 15, CAST(N'2019-01-29T16:30:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (98, 40, 50, CAST(N'2019-07-06T11:30:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (99, 28, 99, CAST(N'2019-12-05T10:20:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (100, 20, 49, CAST(N'2019-04-05T13:20:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (101, 1, 108, CAST(N'2023-03-23T17:34:30.377' AS DateTime), N'qeqweqw')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (110, 1, 108, CAST(N'2023-03-23T17:47:27.000' AS DateTime), N'qeqwe')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (111, 1, 108, CAST(N'2023-03-23T17:49:35.000' AS DateTime), N'qweqwe')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (112, 7, 98, CAST(N'2023-03-23T18:29:26.000' AS DateTime), N'йуйу')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (113, 12, 108, CAST(N'2023-03-23T18:31:16.000' AS DateTime), N'йцуйцуйцу')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (114, 1, 108, CAST(N'2023-03-23T19:20:16.000' AS DateTime), N'qweqww')
SET IDENTITY_INSERT [dbo].[ClientService] OFF
GO
INSERT [dbo].[Gender] ([Code], [Name]) VALUES (N'1', N'м')
INSERT [dbo].[Gender] ([Code], [Name]) VALUES (N'2', N'ж')
GO
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (1, N'Занятие с репетитором-носителем китайского языка', N'Китайскийязык.jpg', 7200, 1950, NULL)
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (2, N'Индивидуальный урок немецкого языка с преподавателем-носителем языка', N'Немецкийязык.png', 6600, 1340, NULL)
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (3, N'Киноклуб китайского языка для студентов', N'киноклуб.jpg', 6000, 1990, NULL)
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (4, N'Индивидуальный онлайн-урок японского языка по Skype', N'onlinelessons.jpg', 4800, 1000, N'20')
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (5, N'Киноклуб испанского языка для студентов', N'киноклуб.jpg', 2400, 1050, N'10')
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (6, N'Занятие с русскоязычным репетитором испанского языка', N'Испанскийязык.jpg', 3000, 1450, N'15')
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (7, N'Урок в группе итальянского языка для взрослых', N'Итальянскийязык.jpg', 2400, 1290, NULL)
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (8, N'Интенсивный онлайн-курс французского языка для компаний по Skype', N'onlinelessons.jpg', 2400, 1180, N'10')
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (9, N'Индивидуальный урок французского языка с преподавателем-носителем языка', N'Французскийязык.jpg', 2400, 1410, N'20')
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (10, N'Урок в группе французского языка для школьников', N'Французскийязык.jpg', 6000, 1970, NULL)
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (11, N'Занятие с репетитором-носителем английского языка', N'Английскийязык.jpg', 6600, 910, NULL)
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (12, N'Киноклуб французского языка для взрослых', N'киноклуб.jpg', 5400, 1770, N'10')
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (13, N'Киноклуб немецкого языка для взрослых', N'киноклуб.jpg', 6000, 1560, N'10')
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (14, N'Урок в группе японского языка для школьников', N'Японскийязык.jpg', 4800, 1300, N'5')
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (15, N'Индивидуальный урок испанского языка с русскоязычным преподавателем', N'Испанскийязык.jpg', 3600, 1790, N'15')
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (16, N'Интенсивный онлайн-курс итальянского языка для компаний по Skype', N'onlinelessons.jpg', 4200, 1230, N'10')
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (17, N'Урок в группе японского языка для студентов', N'Японскийязык.jpg', 3000, 1860, NULL)
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (18, N'Интенсивный курс с преподавателем-носителем английского языка для компаний', N'forcompany.jpg', 6600, 1670, N'10')
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (19, N'Киноклуб итальянского языка для студентов', N'киноклуб.jpg', 1800, 1760, NULL)
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (20, N'Урок в группе испанского языка для взрослых', N'Испанскийязык.jpg', 1800, 1730, N'5')
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (21, N'Урок в группе испанского языка для студентов', N'Испанскийязык.jpg', 6000, 1310, N'20')
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (22, N'Интенсивный онлайн-курс испанского языка для компаний по Skype', N'onlinelessons.jpg', 7200, 1510, NULL)
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (23, N'Урок в группе английского языка для школьников', N'Английскийязык.jpg', 6600, 900, NULL)
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (24, N'Занятие с репетитором-носителем испанского языка', N'Испанскийязык.jpg', 3000, 1090, N'5')
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (25, N'Интенсивный курс с преподавателем-носителем итальянского языка для компаний', N'forcompany.jpg', 2400, 1190, N'20')
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (26, N'Урок в группе китайского языка для студентов', N'Китайскийязык.jpg', 2400, 2000, N'20')
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (27, N'Индивидуальный урок испанского языка с преподавателем-носителем языка', N'Испанскийязык.jpg', 5400, 1200, N'10')
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (28, N'Интенсивный онлайн-курс португальского языка для компаний по Skype', N'onlinelessons.jpg', 4200, 1610, N'5')
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (29, N'Подготовка к экзамену ACT', N'ПодготовкакэкзаменуACT.png', 3000, 1440, NULL)
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (30, N'Урок в группе китайского языка для взрослых', N'Китайскийязык.jpg', 4200, 1730, N'25')
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (31, N'Интенсивный онлайн-курс английского языка для компаний по Skype', N'onlinelessons.jpg', 3000, 1160, NULL)
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (32, N'Подготовка к экзамену TOEFL', N'ПодготовкакэкзаменуTOEFL.jpg', 6000, 1070, N'5')
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (33, N'Занятие с репетитором-носителем итальянского языка', N'Итальянскийязык.jpg', 7200, 1370, N'5')
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (34, N'Урок в группе английского языка для взрослых', N'Английскийязык.jpg', 3000, 1010, N'25')
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (35, N'Киноклуб английского языка для взрослых', N'киноклуб.jpg', 4200, 1250, N'5')
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (36, N'Интенсивный курс с преподавателем-носителем французского языка для компаний', N'forcompany.jpg', 4200, 1630, N'15')
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (37, N'Урок в группе испанского языка для школьников', N'Испанскийязык.jpg', 7200, 1910, NULL)
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (38, N'Подготовка к экзамену GRE', N'ПодготовкакэкзаменуGRE.jpeg', 4800, 1300, N'20')
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (39, N'Урок в группе английского языка для студентов', N'Английскийязык.jpg', 4800, 960, N'25')
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (40, N'Занятие с русскоязычным репетитором японского языка', N'Японскийязык.jpg', 2400, 1260, N'10')
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (41, N'Индивидуальный онлайн-урок немецкого языка по Skype', N'onlinelessons.jpg', 5400, 970, NULL)
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (42, N'Интенсивный курс японского языка с русскоязычным преподавателем для компаний', N'forcompany.jpg', 4800, 1500, NULL)
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (43, N'Киноклуб китайского языка для взрослых', N'киноклуб.jpg', 4200, 1800, N'25')
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (44, N'Индивидуальный урок китайского языка с русскоязычным преподавателем', N'Китайскийязык.jpg', 7200, 1860, N'10')
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (45, N'Подготовка к экзамену GMAT', N'ПодготовкакэкзаменуGMAT.png', 4200, 1150, N'5')
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (46, N'Подготовка к экзамену IELTS', N'ПодготовкакэкзаменуIELTS.jpg', 7200, 1730, NULL)
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (47, N'Подготовка к экзамену SAT', N'ПодготовкакэкзаменуSAT.png', 2400, 1560, NULL)
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (48, N'Урок в группе китайского языка для школьников', N'Китайскийязык.jpg', 3000, 1180, N'15')
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (49, N'Киноклуб английского языка для студентов', N'киноклуб.jpg', 4800, 980, NULL)
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (50, N'Киноклуб португальского языка для студентов', N'киноклуб.jpg', 1800, 1170, N'15')
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (51, N'Киноклуб китайского языка для детей', N'киноклуб.jpg', 6000, 1120, N'10')
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (52, N'Урок в группе немецкого языка для школьников', N'Немецкийязык.png', 1800, 1570, N'15')
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (53, N'Индивидуальный онлайн-урок испанского языка по Skype', N'onlinelessons.jpg', 4200, 1780, N'5')
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (54, N'Урок в группе немецкого языка для взрослых', N'Немецкийязык.png', 3600, 930, N'5')
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (55, N'Индивидуальный урок китайского языка с преподавателем-носителем языка', N'Китайскийязык.jpg', 5400, 1480, N'20')
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (56, N'Занятие с русскоязычным репетитором португальского языка', N'Португальскийязык.jpg', 3000, 1970, N'10')
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (57, N'Интенсивный курс китайского языка с русскоязычным преподавателем для компаний', N'forcompany.jpg', 6600, 1470, NULL)
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (58, N'Занятие с русскоязычным репетитором немецкого языка', N'Немецкийязык.png', 1800, 1420, NULL)
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (59, N'Киноклуб английского языка для детей', N'киноклуб.jpg', 2400, 1280, N'5')
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (60, N'Занятие с репетитором-носителем немецкого языка', N'Немецкийязык.png', 7200, 1120, NULL)
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (61, N'Индивидуальный онлайн-урок китайского языка по Skype', N'onlinelessons.jpg', 4200, 1410, NULL)
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (62, N'Индивидуальный урок английского языка с преподавателем-носителем языка', N'Английскийязык.jpg', 7200, 1300, NULL)
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (63, N'Интенсивный курс с преподавателем-носителем немецкого языка для компаний', N'forcompany.jpg', 7200, 1180, N'20')
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (64, N'Интенсивный онлайн-курс немецкого языка для компаний по Skype', N'onlinelessons.jpg', 4200, 1840, N'10')
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (65, N'Урок в группе итальянского языка для школьников', N'Итальянскийязык.jpg', 6000, 1410, N'15')
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (66, N'Индивидуальный урок итальянского языка с русскоязычным преподавателем', N'Итальянскийязык.jpg', 1800, 1330, N'20')
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (67, N'Интенсивный онлайн-курс китайского языка для компаний по Skype', N'onlinelessons.jpg', 7200, 1760, N'15')
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (68, N'Занятие с русскоязычным репетитором французского языка', N'Французскийязык.jpg', 6000, 1870, N'20')
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (69, N'Индивидуальный урок немецкого языка с русскоязычным преподавателем', N'Немецкийязык.png', 1800, 990, N'5')
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (70, N'Индивидуальный онлайн-урок английского языка по Skype', N'onlinelessons.jpg', 6000, 1880, NULL)
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (71, N'Индивидуальный урок французского языка с русскоязычным преподавателем', N'Французскийязык.jpg', 4200, 1390, NULL)
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (72, N'Интенсивный курс португальского языка с русскоязычным преподавателем для компаний', N'forcompany.jpg', 3600, 2010, N'25')
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (73, N'Индивидуальный онлайн-урок французского языка по Skype', N'onlinelessons.jpg', 7200, 2010, NULL)
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (74, N'Интенсивный курс английского языка с русскоязычным преподавателем для компаний', N'forcompany.jpg', 4800, 1210, NULL)
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (75, N'Урок в группе французского языка для взрослых', N'Французскийязык.jpg', 7200, 960, N'15')
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (76, N'Подготовка к экзамену IELTS Speaking Club', N'ПодготовкакэкзаменуIELTS.jpg', 5400, 1430, N'20')
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (77, N'Киноклуб итальянского языка для детей', N'киноклуб.jpg', 4200, 1480, NULL)
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (78, N'Урок в группе итальянского языка для студентов', N'Итальянскийязык.jpg', 6600, 1020, NULL)
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (79, N'Индивидуальный урок итальянского языка с преподавателем-носителем языка', N'Итальянскийязык.jpg', 4800, 1690, NULL)
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (80, N'Киноклуб немецкого языка для детей', N'киноклуб.jpg', 7200, 1670, N'5')
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (81, N'Киноклуб итальянского языка для взрослых', N'киноклуб.jpg', 6600, 1760, NULL)
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (82, N'Киноклуб португальского языка для взрослых', N'киноклуб.jpg', 1800, 950, N'5')
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (83, N'Киноклуб португальского языка для детей', N'киноклуб.jpg', 5400, 1710, N'15')
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (84, N'Киноклуб французского языка для детей', N'киноклуб.jpg', 5400, 1600, N'10')
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (85, N'Урок в группе японского языка для взрослых', N'Японскийязык.jpg', 4800, 1420, N'5')
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (86, N'Интенсивный курс французского языка с русскоязычным преподавателем для компаний', N'forcompany.jpg', 2400, 1940, NULL)
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (87, N'Занятие с русскоязычным репетитором итальянского языка', N'Итальянскийязык.jpg', 4200, 1620, N'20')
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (88, N'Индивидуальный урок английского языка с русскоязычным преподавателем', N'Английскийязык.jpg', 1800, 1910, N'10')
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (89, N'Интенсивный курс с преподавателем-носителем португальского языка для компаний', N'forcompany.jpg', 1800, 1580, NULL)
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (90, N'Интенсивный курс испанского языка с русскоязычным преподавателем для компаний', N'forcompany.jpg', 5400, 1000, N'25')
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (91, N'Киноклуб немецкого языка для студентов', N'киноклуб.jpg', 3000, 1140, N'15')
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (92, N'Занятие с репетитором-носителем французского языка', N'Французскийязык.jpg', 3000, 2040, NULL)
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (93, N'Урок в группе немецкого языка для студентов', N'Немецкийязык.png', 4200, 1240, NULL)
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (94, N'Занятие с русскоязычным репетитором китайского языка', N'Китайскийязык.jpg', 6600, 940, N'15')
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (95, N'Занятие с репетитором-носителем японского языка', N'Японскийязык.jpg', 3000, 1100, N'25')
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (96, N'Урок в группе французского языка для студентов', N'Французскийязык.jpg', 1800, 1910, NULL)
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (97, N'Интенсивный курс итальянского языка с русскоязычным преподавателем для компаний', N'forcompany.jpg', 6600, 900, NULL)
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (98, N'Занятие с русскоязычным репетитором английского языка', N'Английскийязык.jpg', 5400, 1950, N'15')
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (99, N'Интенсивный курс с преподавателем-носителем испанского языка для компаний', N'forcompany.jpg', 5400, 1660, NULL)
INSERT [dbo].[import] ([id], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (100, N'Интенсивный курс с преподавателем-носителем японского языка для компаний', N'forcompany.jpg', 4200, 1380, N'20')
GO
SET IDENTITY_INSERT [dbo].[Service] ON 

INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (1, N'Занятие с репетитором-носителем китайского языка', 1950.0000, 7200, NULL, NULL, N'Китайскийязык.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (2, N'Индивидуальный урок немецкого языка с преподавателем-носителем языка', 1340.0000, 6600, NULL, NULL, N'Немецкийязык.png')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (3, N'Киноклуб китайского языка для студентов', 1990.0000, 6000, NULL, NULL, N'киноклуб.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (4, N'Индивидуальный онлайн-урок японского языка по Skype', 1000.0000, 4800, NULL, 20, N'onlinelessons.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (5, N'Киноклуб испанского языка для студентов', 1050.0000, 2400, NULL, 10, N'киноклуб.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (6, N'Занятие с русскоязычным репетитором испанского языка', 1450.0000, 3000, NULL, 15, N'Испанскийязык.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (7, N'Урок в группе итальянского языка для взрослых', 1290.0000, 2400, NULL, NULL, N'Итальянскийязык.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (8, N'Интенсивный онлайн-курс французского языка для компаний по Skype', 1180.0000, 2400, NULL, 10, N'onlinelessons.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (9, N'Индивидуальный урок французского языка с преподавателем-носителем языка', 1410.0000, 2400, NULL, 20, N'Французскийязык.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (10, N'Урок в группе французского языка для школьников', 1970.0000, 6000, NULL, NULL, N'Французскийязык.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (11, N'Занятие с репетитором-носителем английского языка', 910.0000, 6600, NULL, NULL, N'Английскийязык.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (12, N'Киноклуб французского языка для взрослых', 1770.0000, 5400, NULL, 10, N'киноклуб.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (13, N'Киноклуб немецкого языка для взрослых', 1560.0000, 6000, NULL, 10, N'киноклуб.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (14, N'Урок в группе японского языка для школьников', 1300.0000, 4800, NULL, 5, N'Японскийязык.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (15, N'Индивидуальный урок испанского языка с русскоязычным преподавателем', 1790.0000, 3600, NULL, 15, N'Испанскийязык.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (16, N'Интенсивный онлайн-курс итальянского языка для компаний по Skype', 1230.0000, 4200, NULL, 10, N'onlinelessons.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (17, N'Урок в группе японского языка для студентов', 1860.0000, 3000, NULL, NULL, N'Японскийязык.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (18, N'Интенсивный курс с преподавателем-носителем английского языка для компаний', 1670.0000, 6600, NULL, 10, N'forcompany.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (19, N'Киноклуб итальянского языка для студентов', 1760.0000, 1800, NULL, NULL, N'киноклуб.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (20, N'Урок в группе испанского языка для взрослых', 1730.0000, 1800, NULL, 5, N'Испанскийязык.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (21, N'Урок в группе испанского языка для студентов', 1310.0000, 6000, NULL, 20, N'Испанскийязык.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (22, N'Интенсивный онлайн-курс испанского языка для компаний по Skype', 1510.0000, 7200, NULL, NULL, N'onlinelessons.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (23, N'Урок в группе английского языка для школьников', 900.0000, 6600, NULL, NULL, N'Английскийязык.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (24, N'Занятие с репетитором-носителем испанского языка', 1090.0000, 3000, NULL, 5, N'Испанскийязык.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (25, N'Интенсивный курс с преподавателем-носителем итальянского языка для компаний', 1190.0000, 2400, NULL, 20, N'forcompany.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (26, N'Урок в группе китайского языка для студентов', 2000.0000, 2400, NULL, 20, N'Китайскийязык.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (27, N'Индивидуальный урок испанского языка с преподавателем-носителем языка', 1200.0000, 5400, NULL, 10, N'Испанскийязык.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (28, N'Интенсивный онлайн-курс португальского языка для компаний по Skype', 1610.0000, 4200, NULL, 5, N'onlinelessons.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (29, N'Подготовка к экзамену ACT', 1440.0000, 3000, NULL, NULL, N'ПодготовкакэкзаменуACT.png')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (30, N'Урок в группе китайского языка для взрослых', 1730.0000, 4200, NULL, 25, N'Китайскийязык.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (31, N'Интенсивный онлайн-курс английского языка для компаний по Skype', 1160.0000, 3000, NULL, NULL, N'onlinelessons.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (32, N'Подготовка к экзамену TOEFL', 1070.0000, 6000, NULL, 5, N'ПодготовкакэкзаменуTOEFL.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (33, N'Занятие с репетитором-носителем итальянского языка', 1370.0000, 7200, NULL, 5, N'Итальянскийязык.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (34, N'Урок в группе английского языка для взрослых', 1010.0000, 3000, NULL, 25, N'Английскийязык.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (35, N'Киноклуб английского языка для взрослых', 1250.0000, 4200, NULL, 5, N'киноклуб.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (36, N'Интенсивный курс с преподавателем-носителем французского языка для компаний', 1630.0000, 4200, NULL, 15, N'forcompany.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (37, N'Урок в группе испанского языка для школьников', 1910.0000, 7200, NULL, NULL, N'Испанскийязык.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (38, N'Подготовка к экзамену GRE', 1300.0000, 4800, NULL, 20, N'ПодготовкакэкзаменуGRE.jpeg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (39, N'Урок в группе английского языка для студентов', 960.0000, 4800, NULL, 25, N'Английскийязык.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (40, N'Занятие с русскоязычным репетитором японского языка', 1260.0000, 2400, NULL, 10, N'Японскийязык.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (41, N'Индивидуальный онлайн-урок немецкого языка по Skype', 970.0000, 5400, NULL, NULL, N'onlinelessons.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (42, N'Интенсивный курс японского языка с русскоязычным преподавателем для компаний', 1500.0000, 4800, NULL, NULL, N'forcompany.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (43, N'Киноклуб китайского языка для взрослых', 1800.0000, 4200, NULL, 25, N'киноклуб.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (44, N'Индивидуальный урок китайского языка с русскоязычным преподавателем', 1860.0000, 7200, NULL, 10, N'Китайскийязык.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (45, N'Подготовка к экзамену GMAT', 1150.0000, 4200, NULL, 5, N'ПодготовкакэкзаменуGMAT.png')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (46, N'Подготовка к экзамену IELTS', 1730.0000, 7200, NULL, NULL, N'ПодготовкакэкзаменуIELTS.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (47, N'Подготовка к экзамену SAT', 1560.0000, 2400, NULL, NULL, N'ПодготовкакэкзаменуSAT.png')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (48, N'Урок в группе китайского языка для школьников', 1180.0000, 3000, NULL, 15, N'Китайскийязык.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (49, N'Киноклуб английского языка для студентов', 980.0000, 4800, NULL, NULL, N'киноклуб.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (50, N'Киноклуб португальского языка для студентов', 1170.0000, 1800, NULL, 15, N'киноклуб.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (51, N'Киноклуб китайского языка для детей', 1120.0000, 6000, NULL, 10, N'киноклуб.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (52, N'Урок в группе немецкого языка для школьников', 1570.0000, 1800, NULL, 15, N'Немецкийязык.png')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (53, N'Индивидуальный онлайн-урок испанского языка по Skype', 1780.0000, 4200, NULL, 5, N'onlinelessons.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (54, N'Урок в группе немецкого языка для взрослых', 930.0000, 3600, NULL, 5, N'Немецкийязык.png')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (55, N'Индивидуальный урок китайского языка с преподавателем-носителем языка', 1480.0000, 5400, NULL, 20, N'Китайскийязык.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (56, N'Занятие с русскоязычным репетитором португальского языка', 1970.0000, 3000, NULL, 10, N'Португальскийязык.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (57, N'Интенсивный курс китайского языка с русскоязычным преподавателем для компаний', 1470.0000, 6600, NULL, NULL, N'forcompany.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (58, N'Занятие с русскоязычным репетитором немецкого языка', 1420.0000, 1800, NULL, NULL, N'Немецкийязык.png')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (59, N'Киноклуб английского языка для детей', 1280.0000, 2400, NULL, 5, N'киноклуб.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (60, N'Занятие с репетитором-носителем немецкого языка', 1120.0000, 7200, NULL, NULL, N'Немецкийязык.png')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (61, N'Индивидуальный онлайн-урок китайского языка по Skype', 1410.0000, 4200, NULL, NULL, N'onlinelessons.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (62, N'Индивидуальный урок английского языка с преподавателем-носителем языка', 1300.0000, 7200, NULL, NULL, N'Английскийязык.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (63, N'Интенсивный курс с преподавателем-носителем немецкого языка для компаний', 1180.0000, 7200, NULL, 20, N'forcompany.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (64, N'Интенсивный онлайн-курс немецкого языка для компаний по Skype', 1840.0000, 4200, NULL, 10, N'onlinelessons.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (65, N'Урок в группе итальянского языка для школьников', 1410.0000, 6000, NULL, 15, N'Итальянскийязык.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (66, N'Индивидуальный урок итальянского языка с русскоязычным преподавателем', 1330.0000, 1800, NULL, 20, N'Итальянскийязык.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (67, N'Интенсивный онлайн-курс китайского языка для компаний по Skype', 1760.0000, 7200, NULL, 15, N'onlinelessons.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (68, N'Занятие с русскоязычным репетитором французского языка', 1870.0000, 6000, NULL, 20, N'Французскийязык.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (69, N'Индивидуальный урок немецкого языка с русскоязычным преподавателем', 990.0000, 1800, NULL, 5, N'Немецкийязык.png')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (70, N'Индивидуальный онлайн-урок английского языка по Skype', 1880.0000, 6000, NULL, NULL, N'onlinelessons.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (71, N'Индивидуальный урок французского языка с русскоязычным преподавателем', 1390.0000, 4200, NULL, NULL, N'Французскийязык.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (72, N'Интенсивный курс португальского языка с русскоязычным преподавателем для компаний', 2010.0000, 3600, NULL, 25, N'forcompany.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (73, N'Индивидуальный онлайн-урок французского языка по Skype', 2010.0000, 7200, NULL, NULL, N'onlinelessons.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (74, N'Интенсивный курс английского языка с русскоязычным преподавателем для компаний', 1210.0000, 4800, NULL, NULL, N'forcompany.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (75, N'Урок в группе французского языка для взрослых', 960.0000, 7200, NULL, 15, N'Французскийязык.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (76, N'Подготовка к экзамену IELTS Speaking Club', 1430.0000, 5400, NULL, 20, N'ПодготовкакэкзаменуIELTS.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (77, N'Киноклуб итальянского языка для детей', 1480.0000, 4200, NULL, NULL, N'киноклуб.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (78, N'Урок в группе итальянского языка для студентов', 1020.0000, 6600, NULL, NULL, N'Итальянскийязык.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (79, N'Индивидуальный урок итальянского языка с преподавателем-носителем языка', 1690.0000, 4800, NULL, NULL, N'Итальянскийязык.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (80, N'Киноклуб немецкого языка для детей', 1670.0000, 7200, NULL, 5, N'киноклуб.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (81, N'Киноклуб итальянского языка для взрослых', 1760.0000, 6600, NULL, NULL, N'киноклуб.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (82, N'Киноклуб португальского языка для взрослых', 950.0000, 1800, NULL, 5, N'киноклуб.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (83, N'Киноклуб португальского языка для детей', 1710.0000, 5400, NULL, 15, N'киноклуб.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (84, N'Киноклуб французского языка для детей', 1600.0000, 5400, NULL, 10, N'киноклуб.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (85, N'Урок в группе японского языка для взрослых', 1420.0000, 4800, NULL, 5, N'Японскийязык.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (86, N'Интенсивный курс французского языка с русскоязычным преподавателем для компаний', 1940.0000, 2400, NULL, NULL, N'forcompany.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (87, N'Занятие с русскоязычным репетитором итальянского языка', 1620.0000, 4200, NULL, 20, N'Итальянскийязык.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (88, N'Индивидуальный урок английского языка с русскоязычным преподавателем', 1910.0000, 1800, NULL, 10, N'Английскийязык.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (89, N'Интенсивный курс с преподавателем-носителем португальского языка для компаний', 1580.0000, 1800, NULL, NULL, N'forcompany.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (90, N'Интенсивный курс испанского языка с русскоязычным преподавателем для компаний', 1000.0000, 5400, NULL, 25, N'forcompany.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (91, N'Киноклуб немецкого языка для студентов', 1140.0000, 3000, NULL, 15, N'киноклуб.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (92, N'Занятие с репетитором-носителем французского языка', 2040.0000, 3000, NULL, NULL, N'Французскийязык.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (93, N'Урок в группе немецкого языка для студентов', 1240.0000, 4200, NULL, NULL, N'Немецкийязык.png')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (94, N'Занятие с русскоязычным репетитором китайского языка', 940.0000, 6600, NULL, 15, N'Китайскийязык.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (95, N'Занятие с репетитором-носителем японского языка', 1100.0000, 3000, NULL, 25, N'Японскийязык.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (96, N'Урок в группе французского языка для студентов', 1910.0000, 1800, NULL, NULL, N'Французскийязык.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (97, N'Интенсивный курс итальянского языка с русскоязычным преподавателем для компаний', 900.0000, 6600, NULL, NULL, N'forcompany.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (98, N'Занятие с русскоязычным репетитором английского языка', 1950.0000, 5400, NULL, 15, N'Английскийязык.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (99, N'Интенсивный курс с преподавателем-носителем испанского языка для компаний', 1660.0000, 5400, NULL, NULL, N'forcompany.jpg')
GO
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (100, N'test2', 1380.0000, 4200, N'test', 20, N'UML_state_diagram.png')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (108, N'test', 1342.0000, 14400, N'test', NULL, N'hook.jpg')
SET IDENTITY_INSERT [dbo].[Service] OFF
GO
SET IDENTITY_INSERT [dbo].[ServicePhoto] ON 

INSERT [dbo].[ServicePhoto] ([ID], [ServiceID], [PhotoPath]) VALUES (4, 108, N'C:\Users\User\Desktop\C#\Personage and Weapon\Personage and Weapon\bin\Debug\images\marshal.jpg')
INSERT [dbo].[ServicePhoto] ([ID], [ServiceID], [PhotoPath]) VALUES (5, 108, N'C:\Users\User\Desktop\C#\Personage and Weapon\Personage and Weapon\bin\Debug\images\neon.jpg')
INSERT [dbo].[ServicePhoto] ([ID], [ServiceID], [PhotoPath]) VALUES (6, 109, N'C:\Users\User\Desktop\C#\Personage and Weapon\Personage and Weapon\bin\Debug\images\neon.jpg')
SET IDENTITY_INSERT [dbo].[ServicePhoto] OFF
GO
ALTER TABLE [dbo].[AttachedProduct]  WITH CHECK ADD  CONSTRAINT [FK_AttachedProduct_Product] FOREIGN KEY([MainProductID])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[AttachedProduct] CHECK CONSTRAINT [FK_AttachedProduct_Product]
GO
ALTER TABLE [dbo].[AttachedProduct]  WITH CHECK ADD  CONSTRAINT [FK_AttachedProduct_Product1] FOREIGN KEY([AttachedProductID])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[AttachedProduct] CHECK CONSTRAINT [FK_AttachedProduct_Product1]
GO
ALTER TABLE [dbo].[Client]  WITH CHECK ADD  CONSTRAINT [FK_Client_Gender] FOREIGN KEY([GenderCode])
REFERENCES [dbo].[Gender] ([Code])
GO
ALTER TABLE [dbo].[Client] CHECK CONSTRAINT [FK_Client_Gender]
GO
ALTER TABLE [dbo].[ClientService]  WITH CHECK ADD  CONSTRAINT [FK_ClientService_Client] FOREIGN KEY([ClientID])
REFERENCES [dbo].[Client] ([ID])
GO
ALTER TABLE [dbo].[ClientService] CHECK CONSTRAINT [FK_ClientService_Client]
GO
ALTER TABLE [dbo].[DocumentByService]  WITH CHECK ADD  CONSTRAINT [FK_DocumentByService_ClientService] FOREIGN KEY([ClientServiceID])
REFERENCES [dbo].[ClientService] ([ID])
GO
ALTER TABLE [dbo].[DocumentByService] CHECK CONSTRAINT [FK_DocumentByService_ClientService]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Manufacturer] FOREIGN KEY([ManufacturerID])
REFERENCES [dbo].[Manufacturer] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Manufacturer]
GO
ALTER TABLE [dbo].[ProductPhoto]  WITH CHECK ADD  CONSTRAINT [FK_ProductPhoto_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[ProductPhoto] CHECK CONSTRAINT [FK_ProductPhoto_Product]
GO
ALTER TABLE [dbo].[ProductSale]  WITH CHECK ADD  CONSTRAINT [FK_ProductSale_ClientService] FOREIGN KEY([ClientServiceID])
REFERENCES [dbo].[ClientService] ([ID])
GO
ALTER TABLE [dbo].[ProductSale] CHECK CONSTRAINT [FK_ProductSale_ClientService]
GO
ALTER TABLE [dbo].[ProductSale]  WITH CHECK ADD  CONSTRAINT [FK_ProductSale_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[ProductSale] CHECK CONSTRAINT [FK_ProductSale_Product]
GO
ALTER TABLE [dbo].[TagOfClient]  WITH CHECK ADD  CONSTRAINT [FK_TagOfClient_Client] FOREIGN KEY([ClientID])
REFERENCES [dbo].[Client] ([ID])
GO
ALTER TABLE [dbo].[TagOfClient] CHECK CONSTRAINT [FK_TagOfClient_Client]
GO
ALTER TABLE [dbo].[TagOfClient]  WITH CHECK ADD  CONSTRAINT [FK_TagOfClient_Tag] FOREIGN KEY([TagID])
REFERENCES [dbo].[Tag] ([ID])
GO
ALTER TABLE [dbo].[TagOfClient] CHECK CONSTRAINT [FK_TagOfClient_Tag]
GO
