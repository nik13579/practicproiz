USE [master]
GO
/****** Object:  Database [AdminPril]    Script Date: 21.12.2023 5:56:12 ******/
CREATE DATABASE [AdminPril]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AdminPril', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS02\MSSQL\DATA\AdminPril.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'AdminPril_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS02\MSSQL\DATA\AdminPril_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [AdminPril] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AdminPril].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AdminPril] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AdminPril] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AdminPril] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AdminPril] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AdminPril] SET ARITHABORT OFF 
GO
ALTER DATABASE [AdminPril] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [AdminPril] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AdminPril] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AdminPril] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AdminPril] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AdminPril] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AdminPril] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AdminPril] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AdminPril] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AdminPril] SET  DISABLE_BROKER 
GO
ALTER DATABASE [AdminPril] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AdminPril] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AdminPril] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AdminPril] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AdminPril] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AdminPril] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AdminPril] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AdminPril] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [AdminPril] SET  MULTI_USER 
GO
ALTER DATABASE [AdminPril] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AdminPril] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AdminPril] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AdminPril] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [AdminPril] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [AdminPril] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [AdminPril] SET QUERY_STORE = OFF
GO
USE [AdminPril]
GO
/****** Object:  Table [dbo].[Personal]    Script Date: 21.12.2023 5:56:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personal](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FIO] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[IdPost] [int] NULL,
	[BirthDate] [date] NULL,
	[Pol] [nvarchar](50) NULL,
	[Adress] [nvarchar](50) NULL,
	[Photo] [nvarchar](50) NULL,
 CONSTRAINT [PK_Personal] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhoneSprav]    Script Date: 21.12.2023 5:56:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhoneSprav](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FIO] [nvarchar](50) NULL,
	[IdPost] [int] NULL,
	[Phone] [nvarchar](50) NULL,
 CONSTRAINT [PK_PhoneSprav] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Post]    Script Date: 21.12.2023 5:56:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Post] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 21.12.2023 5:56:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 21.12.2023 5:56:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Login] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[IdRole] [int] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Personal] ON 

INSERT [dbo].[Personal] ([Id], [FIO], [Phone], [IdPost], [BirthDate], [Pol], [Adress], [Photo]) VALUES (3, N'Живов Николай Андреевич', N'89057564646', 4, CAST(N'1975-07-27' AS Date), N'мужской', N'г. Арзамас', NULL)
INSERT [dbo].[Personal] ([Id], [FIO], [Phone], [IdPost], [BirthDate], [Pol], [Adress], [Photo]) VALUES (4, N'Климов Никита Михайлович', N'89084242478', 2, CAST(N'2004-02-26' AS Date), N'мужской', N'г. Арзамас', NULL)
INSERT [dbo].[Personal] ([Id], [FIO], [Phone], [IdPost], [BirthDate], [Pol], [Adress], [Photo]) VALUES (6, N'Мухина Ирина Сергеевна', NULL, 1, NULL, N'Ж', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Personal] OFF
GO
SET IDENTITY_INSERT [dbo].[PhoneSprav] ON 

INSERT [dbo].[PhoneSprav] ([Id], [FIO], [IdPost], [Phone]) VALUES (1, N'Мухина Ирина Сергеевна', 1, N'89044656354')
INSERT [dbo].[PhoneSprav] ([Id], [FIO], [IdPost], [Phone]) VALUES (2, N'Живов Николай Андреевич', 4, N'89057564646')
INSERT [dbo].[PhoneSprav] ([Id], [FIO], [IdPost], [Phone]) VALUES (3, N'Климов Никита Михайлович', 2, N'89084242478')
INSERT [dbo].[PhoneSprav] ([Id], [FIO], [IdPost], [Phone]) VALUES (4, N'Попович Максим', 2, N'89081483568')
SET IDENTITY_INSERT [dbo].[PhoneSprav] OFF
GO
SET IDENTITY_INSERT [dbo].[Post] ON 

INSERT [dbo].[Post] ([Id], [Name]) VALUES (1, N'Бухгалтер')
INSERT [dbo].[Post] ([Id], [Name]) VALUES (2, N'Администратор')
INSERT [dbo].[Post] ([Id], [Name]) VALUES (3, N'Главный бухгалтер')
INSERT [dbo].[Post] ([Id], [Name]) VALUES (4, N'Глава местного управления')
INSERT [dbo].[Post] ([Id], [Name]) VALUES (5, N'Помощник главы')
SET IDENTITY_INSERT [dbo].[Post] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([Id], [Name]) VALUES (1, N'Администратор')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (2, N'Пользователь')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [Login], [Password], [IdRole]) VALUES (2, N'Admin', N'1', 1)
INSERT [dbo].[Users] ([Id], [Login], [Password], [IdRole]) VALUES (3, N'user', N'2', 2)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Personal]  WITH CHECK ADD  CONSTRAINT [FK_Personal_Post] FOREIGN KEY([IdPost])
REFERENCES [dbo].[Post] ([Id])
GO
ALTER TABLE [dbo].[Personal] CHECK CONSTRAINT [FK_Personal_Post]
GO
ALTER TABLE [dbo].[PhoneSprav]  WITH CHECK ADD  CONSTRAINT [FK_PhoneSprav_Post] FOREIGN KEY([IdPost])
REFERENCES [dbo].[Post] ([Id])
GO
ALTER TABLE [dbo].[PhoneSprav] CHECK CONSTRAINT [FK_PhoneSprav_Post]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Role] FOREIGN KEY([IdRole])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Role]
GO
USE [master]
GO
ALTER DATABASE [AdminPril] SET  READ_WRITE 
GO
