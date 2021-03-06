USE [master]
GO
/****** Object:  Database [QuizApi]    Script Date: 30.05.2021 12:31:39 ******/
CREATE DATABASE [QuizApi]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuizApi', FILENAME = N'C:\Users\Damian\QuizApi.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QuizApi_log', FILENAME = N'C:\Users\Damian\QuizApi_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [QuizApi] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuizApi].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuizApi] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuizApi] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuizApi] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuizApi] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuizApi] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuizApi] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QuizApi] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuizApi] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuizApi] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuizApi] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuizApi] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuizApi] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuizApi] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuizApi] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuizApi] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QuizApi] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuizApi] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuizApi] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuizApi] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuizApi] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuizApi] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [QuizApi] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuizApi] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QuizApi] SET  MULTI_USER 
GO
ALTER DATABASE [QuizApi] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuizApi] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuizApi] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuizApi] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QuizApi] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QuizApi] SET QUERY_STORE = OFF
GO
USE [QuizApi]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [QuizApi]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 30.05.2021 12:31:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Answers]    Script Date: 30.05.2021 12:31:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Answers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Text] [nvarchar](max) NULL,
	[ImageUrl] [nvarchar](max) NULL,
	[QuestionId] [int] NULL,
 CONSTRAINT [PK_Answers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Questions]    Script Date: 30.05.2021 12:31:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Questions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Text] [nvarchar](max) NULL,
	[ImageUrl] [nvarchar](max) NULL,
	[CorectAnswer] [nvarchar](max) NULL,
	[QuizId] [int] NULL,
 CONSTRAINT [PK_Questions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quizs]    Script Date: 30.05.2021 12:31:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quizs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[ImageUrl] [nvarchar](max) NULL,
 CONSTRAINT [PK_Quizs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210528104722_Initial', N'5.0.6')
GO
SET IDENTITY_INSERT [dbo].[Answers] ON 

INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (1, N'Odp1', NULL, 1)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (2, N'Odp2', NULL, 1)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (3, N'Odp3', NULL, 1)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (4, N'Odp4', NULL, 1)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (7, N'nie ma pracy', NULL, 5)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (8, N'w piekarni', NULL, 5)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (9, N'w rzeźni', NULL, 5)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (10, N'na bazarze', NULL, 5)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (11, N'Waldemar', NULL, 6)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (12, N'Ferdek', NULL, 6)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (13, N'Halinka', NULL, 6)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (14, N'Mariolka', NULL, 6)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (15, N'"Wszyscy kochają Raymonda"', NULL, 7)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (16, N'"Świat według Bundych"', NULL, 7)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (17, N'"Przyjaciele"', NULL, 7)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (18, N'"Różowe lata 70."', NULL, 7)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (19, N'przy ulicy Ćwiartki 3/4', NULL, 8)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (20, N'przy ulicy Alternatywy 4', NULL, 8)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (21, N'przy ulicy Połówki 0/5', NULL, 8)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (22, N'przy ulicy Piwnej 0/7', NULL, 8)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (23, N'Marian Paździoch', NULL, 9)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (24, N'Waldemar Kiepski', NULL, 9)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (25, N'Ferdynand Kiepski', NULL, 9)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (26, N'Andrzej Kozłowski', NULL, 9)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (27, N'Ryszard Kotys', NULL, 10)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (28, N'Andrzej Grabowski', NULL, 10)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (29, N'Bartosz Żukowski', NULL, 10)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (30, N'Bohdan Smoleń', NULL, 10)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (31, N'Piersi', NULL, 11)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (32, N'Krzysztof Krawczyk', NULL, 11)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (33, N'Big Cyc', NULL, 11)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (34, N'Kult', NULL, 11)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (35, N'Jasny Full', NULL, 12)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (36, N'Mocny Full', NULL, 12)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (37, N'Mocne Pełne', NULL, 12)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (38, N'Jasne Pełne', NULL, 12)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (39, N'Rozalia', NULL, 13)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (40, N'Jadwiga', NULL, 13)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (41, N'Emilia', NULL, 13)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (42, N'Jolanta', NULL, 13)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (43, N'"Miś Uszatek"', NULL, 14)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (44, N'"Reksio"', NULL, 14)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (45, N'"Koziołek Matołek"', NULL, 14)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (46, N'"Bolek i Lolek"', NULL, 14)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (47, N'Z Kampanii', NULL, 15)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (48, N'Z Toskanii', NULL, 15)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (49, N'Z Lombardii', NULL, 15)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (50, N'Z Sardynii', NULL, 15)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (51, N'Al Pacino', NULL, 16)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (52, N'Robert De Niro', NULL, 16)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (53, N'James Caan', NULL, 16)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (54, N'Marlon Brando', NULL, 16)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (55, N'"... to miłość"', NULL, 17)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (56, N'"... każdego można zabić"', NULL, 17)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (57, N'"... to że rodzina Corleone będzie zawsze rządzić"', NULL, 17)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (58, N'"... wszystkim chodzi o pieniądze i władzę"', NULL, 17)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (59, N'2', NULL, 18)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (60, N'3', NULL, 18)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (61, N'4', NULL, 18)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (62, N'1', NULL, 18)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (63, N'pizzę', NULL, 19)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (64, N'cannoli', NULL, 19)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (65, N'cantuccini', NULL, 19)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (66, N'foccacie', NULL, 19)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (67, N'Do Imperium Rzymskiego', NULL, 20)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (68, N'Do ZSRR', NULL, 20)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (69, N'Do wikingów', NULL, 20)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (70, N'Do Cesarstwa Bizantyjskiego', NULL, 20)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (71, N'Vito Corleone', NULL, 21)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (72, N'Fredo Corleone', NULL, 21)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (73, N'Michael Corleone', NULL, 21)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (74, N'Sentino Corleone', NULL, 21)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (75, N'na handlu oliwą', NULL, 22)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (76, N'sprowadzał wino z Włoch', NULL, 22)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (77, N'handlował ubraniami', NULL, 22)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (78, N'miał sieć restauracji', NULL, 22)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (79, N'"... wycelowana w ciebie broń"', NULL, 23)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (80, N'"... atmosfera pieniądza"', NULL, 23)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (81, N'"... odpowiednio sformułowana grożba"', NULL, 23)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (82, N'"... kieliszek wina"', NULL, 23)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (83, N'Zdradził Michaela i przekazywał wrogom informacje', NULL, 24)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (84, N'Zastrzelił córkę Michaela', NULL, 24)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (85, N'Próbował przejąć władzę w klanie i zabić brata', NULL, 24)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (86, N'Przeszedł do innego klanu', NULL, 24)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (87, N'Freddie Mercury, Brian May, Robert Plant, David Gilmour', NULL, 25)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (88, N'Freddie Mercury, Brian May, Roger Taylor, John Deacon', NULL, 25)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (89, N'Freddie Mercury, Roger Taylor, Bruce Dickinson, Roger Waters', NULL, 25)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (90, N'Freddie Mercury, John Deacon, Ozzy Osbourne, Peter Gabriel', NULL, 25)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (91, N'Farrokh Bulsara', NULL, 26)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (92, N'Frederick Mercury', NULL, 26)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (93, N'Federico Mercurio', NULL, 26)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (94, N'Fred Johnson', NULL, 26)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (95, N'w 1970', NULL, 27)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (96, N'w 1968', NULL, 27)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (97, N'w 1972', NULL, 27)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (98, N'w 1975', NULL, 27)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (99, N'Cry', NULL, 28)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (100, N'Breathe', NULL, 28)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (101, N'Smile', NULL, 28)
GO
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (102, N'Dance', NULL, 28)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (103, N'"Don''t Stop Me Now"', NULL, 29)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (104, N'"Killer Queen"', NULL, 29)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (105, N'"We Will Rock You"', NULL, 29)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (106, N'"Love of my life"', NULL, 29)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (107, N'"Queen"', NULL, 30)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (108, N'"Sheer Heart Attack"', NULL, 30)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (109, N'"A Night at the Opera"', NULL, 30)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (110, N'"The Game"', NULL, 30)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (111, N'"We Are the Champions"', NULL, 31)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (112, N'"Bohemian Rhapsody"', NULL, 31)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (113, N'"Somebody to Love"', NULL, 31)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (114, N'"Don''t stop me now"', NULL, 31)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (115, N'"Blue Velvet"', NULL, 32)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (116, N'"Nieśmiertelny"', NULL, 32)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (117, N'"Labirynt"', NULL, 32)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (118, N'"Chłopcy z ferajny"', NULL, 32)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (119, N'1,5 miliarda widzów', NULL, 33)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (120, N'900 milionów widzów', NULL, 33)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (121, N'100 milionów widzów', NULL, 33)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (122, N'500 milionów widzów', NULL, 33)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (123, N'"Crazy Little Thing Called Love"', NULL, 34)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (124, N'"Under Pressure"', NULL, 34)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (125, N'"A Kind of Magic"', NULL, 34)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (126, N'"Bohemian Rhapsody"', NULL, 34)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (127, N'Z czech', NULL, 35)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (128, N'Z białorusi', NULL, 35)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (129, N'Ze słowacji', NULL, 35)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (130, N'Z ukrainy', NULL, 35)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (131, N'Anka', NULL, 36)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (132, N'Hanka', NULL, 36)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (133, N'Kaśka', NULL, 37)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (134, N'Zośka', NULL, 36)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (135, N'Tajemnice z wiklinowej zatoki', NULL, 37)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (136, N'Wodnik Szuwarek', NULL, 37)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (137, N'Bajki z mchu i paproci', NULL, 37)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (138, N'Rozbójnik Rumcajs', NULL, 37)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (139, N'Gucio i Cezar', NULL, 38)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (140, N'Kuba i Śruba', NULL, 38)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (141, N'Eliasz i Pistulka', NULL, 38)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (142, N'Kajko i Kokosz', NULL, 38)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (143, N'Kudłatek', NULL, 39)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (144, N'Colargol', NULL, 39)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (145, N'Fantazy', NULL, 39)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (146, N'Puchatek', NULL, 39)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (147, N'Do Pacynkowa', NULL, 40)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (148, N'Do Koziołkowa', NULL, 40)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (149, N'Do Pacanowa', NULL, 40)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (150, N'Do Pacanic', NULL, 40)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (151, N'Gucio', NULL, 41)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (152, N'Jasio', NULL, 41)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (153, N'Kazio', NULL, 41)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (154, N'Rysiu', NULL, 41)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (155, N'Łapka', NULL, 42)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (156, N'Nosek', NULL, 42)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (157, N'Oczko', NULL, 42)
INSERT [dbo].[Answers] ([Id], [Text], [ImageUrl], [QuestionId]) VALUES (158, N'Uszko', NULL, 42)
SET IDENTITY_INSERT [dbo].[Answers] OFF
GO
SET IDENTITY_INSERT [dbo].[Questions] ON 

INSERT [dbo].[Questions] ([Id], [Text], [ImageUrl], [CorectAnswer], [QuizId]) VALUES (1, N'Pytanie1', NULL, N'Odpowiedz1', 1)
INSERT [dbo].[Questions] ([Id], [Text], [ImageUrl], [CorectAnswer], [QuizId]) VALUES (3, N'Pytanie2', NULL, N'Odpowiedz2', 1)
INSERT [dbo].[Questions] ([Id], [Text], [ImageUrl], [CorectAnswer], [QuizId]) VALUES (4, N'Pytanie3', NULL, N'Odpowiedz3', 1)
INSERT [dbo].[Questions] ([Id], [Text], [ImageUrl], [CorectAnswer], [QuizId]) VALUES (5, N'Gdzie pracuje Arnold Boczek?', N'\kiepscy_1.jpg', N'w rzeźni', 2)
INSERT [dbo].[Questions] ([Id], [Text], [ImageUrl], [CorectAnswer], [QuizId]) VALUES (6, N'Kto utrzymuje rodzinę Kiepskich?', N'\kiepscy_2.jpg', N'Halinka', 2)
INSERT [dbo].[Questions] ([Id], [Text], [ImageUrl], [CorectAnswer], [QuizId]) VALUES (7, N'Inspiracją do powstania "Kiepskich" był amerykański serial. Jaki?', N'\kiepscy_3.jpg', N'"Świat według Bundych"', 2)
INSERT [dbo].[Questions] ([Id], [Text], [ImageUrl], [CorectAnswer], [QuizId]) VALUES (8, N'Kiepscy mieszkają we Wrocławiu. Pod jakim adresem?', N'\kiepscy_4.jpg', N'przy ulicy Ćwiartki 3/4', 2)
INSERT [dbo].[Questions] ([Id], [Text], [ImageUrl], [CorectAnswer], [QuizId]) VALUES (9, N'"Ważne, żeby zarobić, ale żeby się nie narobić". Który z bohaterów serialu zwykł tak mówić?', N'\kiepscy_5.jpg', N'Ferdynand Kiepski', 2)
INSERT [dbo].[Questions] ([Id], [Text], [ImageUrl], [CorectAnswer], [QuizId]) VALUES (10, N'Kto wciela się w rolę Paździocha?', N'\kiepscy_6.jpg', N'Ryszard Kotys', 2)
INSERT [dbo].[Questions] ([Id], [Text], [ImageUrl], [CorectAnswer], [QuizId]) VALUES (11, N'Kto wykonuje piosenkę do serialu "Świat według Kiepskich"?', N'\kiepscy_7.jpg', N'Big Cyc', 2)
INSERT [dbo].[Questions] ([Id], [Text], [ImageUrl], [CorectAnswer], [QuizId]) VALUES (12, N'Jak nazywa się ulubiony trunek Ferdynanda?', N'\kiepscy_8.jpg', N'Mocny Full', 2)
INSERT [dbo].[Questions] ([Id], [Text], [ImageUrl], [CorectAnswer], [QuizId]) VALUES (13, N'Z Kiepskimi mieszkała także babka. Jak miała na imię?', N'\kiepscy_9.jpg', N'Rozalia', 2)
INSERT [dbo].[Questions] ([Id], [Text], [ImageUrl], [CorectAnswer], [QuizId]) VALUES (14, N'Ulubiona kreskówka babki to...', N'\kiepscy_10.jpg', N'"Koziołek Matołek"', 2)
INSERT [dbo].[Questions] ([Id], [Text], [ImageUrl], [CorectAnswer], [QuizId]) VALUES (15, N'Z której części Włoch pochodzi rodzina Mario Puzo, autora powieści "Ojciec chrzestny", na której oparł swoje filmy Francis Ford Coppola?', N'\ojciec_chrzestny_1.jpg', N'Z Kampanii', 3)
INSERT [dbo].[Questions] ([Id], [Text], [ImageUrl], [CorectAnswer], [QuizId]) VALUES (16, N'Film "Ojciec chrzestny II", do którego scenariusz współtworzył Mario Puzo, pokazuje młodość Vita Corleone. Kto zagrał młodego Vita?', N'\ojciec_chrzestny_2.jpg', N'Robert De Niro', 3)
INSERT [dbo].[Questions] ([Id], [Text], [ImageUrl], [CorectAnswer], [QuizId]) VALUES (17, N'Dokończ cytat z "Ojca chrzestnego II": "Jeśli cokolwiek w życiu jest pewne, i jeżeli historia nas czegoś uczy, to tego, że..."', N'\ojciec_chrzestny_3.jpg', N'"... każdego można zabić"', 3)
INSERT [dbo].[Questions] ([Id], [Text], [ImageUrl], [CorectAnswer], [QuizId]) VALUES (18, N'Puzo pracował nad adaptacją swojej powieści pod scenariusze Francisa Forda Coppoli. Otrzymał za to Oscary. Ile konkretnie?', N'\ojciec_chrzestny_4.jpg', N'2', 3)
INSERT [dbo].[Questions] ([Id], [Text], [ImageUrl], [CorectAnswer], [QuizId]) VALUES (19, N'"Zostaw broń, weź..." - dokończ ten słynny cytat.', N'\ojciec_chrzestny_5.jpg', N'cantuccini', 3)
INSERT [dbo].[Questions] ([Id], [Text], [ImageUrl], [CorectAnswer], [QuizId]) VALUES (20, N'Do czego Frank porównuje rodzinę Corleone w "Ojcu Chrzestnym II"?', N'\ojciec_chrzestny_6.jpg', N'Do Imperium Rzymskiego', 3)
INSERT [dbo].[Questions] ([Id], [Text], [ImageUrl], [CorectAnswer], [QuizId]) VALUES (21, N'Kto powiedział: "trzymaj swoich przyjaciół blisko, a wrogów jeszcze bliżej"?', N'\ojciec_chrzestny_7.jpg', N'Michael Corleone', 3)
INSERT [dbo].[Questions] ([Id], [Text], [ImageUrl], [CorectAnswer], [QuizId]) VALUES (22, N'Na czym don Vito zbił swój majątek?', N'\ojciec_chrzestny_8.jpg', N'na handlu oliwą', 3)
INSERT [dbo].[Questions] ([Id], [Text], [ImageUrl], [CorectAnswer], [QuizId]) VALUES (23, N'"Nic tak nie sprzyja mądrej i rzeczowej dyskusji, jak..." - dokończ cytat z powieści "Ojciec chrzestny".', N'\ojciec_chrzestny_9.jpg', N'"... atmosfera pieniądza"', 3)
INSERT [dbo].[Questions] ([Id], [Text], [ImageUrl], [CorectAnswer], [QuizId]) VALUES (24, N'"Złamałeś mi serce!" - słyszy Fredo Corleone od Michaela. Co zrobił Fredo?', N'\ojciec_chrzestny_10.jpg', N'Zdradził Michaela i przekazywał wrogom informacje', 3)
INSERT [dbo].[Questions] ([Id], [Text], [ImageUrl], [CorectAnswer], [QuizId]) VALUES (25, N'Kto wchodził w skład zespołu Queen?', NULL, N'Freddie Mercury, Brian May, Roger Taylor, John Deacon', 4)
INSERT [dbo].[Questions] ([Id], [Text], [ImageUrl], [CorectAnswer], [QuizId]) VALUES (26, N'Jak naprawdę nazywał się Freddie Mercury?', NULL, N'Farrokh Bulsara', 4)
INSERT [dbo].[Questions] ([Id], [Text], [ImageUrl], [CorectAnswer], [QuizId]) VALUES (27, N'W którym roku powstał zespół Queen?', NULL, N'w 1970', 4)
INSERT [dbo].[Questions] ([Id], [Text], [ImageUrl], [CorectAnswer], [QuizId]) VALUES (28, N'Zanim Mercury dołączył do Maya i Taylora, ich zespół nazywał się:', NULL, N'Smile', 4)
INSERT [dbo].[Questions] ([Id], [Text], [ImageUrl], [CorectAnswer], [QuizId]) VALUES (29, N'Pierwszym wielkim hitem Queen był utwór:', NULL, N'"We Will Rock You"', 4)
INSERT [dbo].[Questions] ([Id], [Text], [ImageUrl], [CorectAnswer], [QuizId]) VALUES (30, N'Pierwszą płytą Queen była:', NULL, N'"Queen"', 4)
INSERT [dbo].[Questions] ([Id], [Text], [ImageUrl], [CorectAnswer], [QuizId]) VALUES (31, N'Pierwszą piosenką Queen, która wskoczyła na 1. miejsce list przebojów i zapewniła grupie sukces komercyjny, była:', NULL, N'"Bohemian Rhapsody"', 4)
INSERT [dbo].[Questions] ([Id], [Text], [ImageUrl], [CorectAnswer], [QuizId]) VALUES (32, N'Queen stworzył ścieżkę dźwiękową do filmu:', NULL, N'Nieśmiertelny"', 4)
INSERT [dbo].[Questions] ([Id], [Text], [ImageUrl], [CorectAnswer], [QuizId]) VALUES (33, N'Ile osób oglądało w telewizji koncert Live Aid 13 lipca 1985 roku? Przypomnijmy, że występ Queen na stadionie Wembley uważany jest za najlepszy koncert rockowy w historii.', NULL, N'1,5 miliarda widzów', 4)
INSERT [dbo].[Questions] ([Id], [Text], [ImageUrl], [CorectAnswer], [QuizId]) VALUES (34, N'Jaki tytuł ma utwór nagrany przez Queen z Davidem Bowiem?', NULL, N'"Under Pressure"', 4)
INSERT [dbo].[Questions] ([Id], [Text], [ImageUrl], [CorectAnswer], [QuizId]) VALUES (35, N'Z którego kraju pochodziła bajka o przygodach tytułowego "Krecika"?', N'\bajki_1.jpg', N'Z czech', 5)
INSERT [dbo].[Questions] ([Id], [Text], [ImageUrl], [CorectAnswer], [QuizId]) VALUES (36, N'Jak miała na imię żona głównego bohatera bajki "Rozbójnik Rumcajs"?', N'\bajki_2.jpg', N'Hanka', 5)
INSERT [dbo].[Questions] ([Id], [Text], [ImageUrl], [CorectAnswer], [QuizId]) VALUES (37, N'W której bajce pojawili się Żwirek i Muchomorek?', N'\bajki_3.jpg', N'Bajki z mchu i paproci', 5)
INSERT [dbo].[Questions] ([Id], [Text], [ImageUrl], [CorectAnswer], [QuizId]) VALUES (38, N'Jak miał na imię motyl, który przyjaźnił się z tytułową "Makową panienką"?', N'\bajki_4.jpg', N'Emanuel', 5)
INSERT [dbo].[Questions] ([Id], [Text], [ImageUrl], [CorectAnswer], [QuizId]) VALUES (39, N'W której bajce pojawił się ten utalentowany i rudowłosy chłopiec?', N'\bajki_5.jpg', N'Pomysłowy Dobromir', 5)
INSERT [dbo].[Questions] ([Id], [Text], [ImageUrl], [CorectAnswer], [QuizId]) VALUES (40, N'Jak nazywały się te dwie postacie? Ich imiona to tytuł bajki, w której występowały.', N'\bajki_6.jpg', N'Gucio i Cezar', 5)
INSERT [dbo].[Questions] ([Id], [Text], [ImageUrl], [CorectAnswer], [QuizId]) VALUES (41, N'Który ze znanych misiów występuje na poniższym kadrze?', N'\bajki_7.jpg', N'Colargol', 5)
INSERT [dbo].[Questions] ([Id], [Text], [ImageUrl], [CorectAnswer], [QuizId]) VALUES (42, N'Do której miejscowości chciał dotrzeć Koziołek Matołek?', N'\bajki_8.jpg', N'Do Pacanowa', 5)
INSERT [dbo].[Questions] ([Id], [Text], [ImageUrl], [CorectAnswer], [QuizId]) VALUES (43, N'Jak miał na imię przyjaciel pszczółki Mai?', N'\bajki_9.jpg', N'Gucio', 5)
INSERT [dbo].[Questions] ([Id], [Text], [ImageUrl], [CorectAnswer], [QuizId]) VALUES (44, N'Która część ciała misia Uszatka była "klapnięta"?', N'\bajki_10.jpg', N'Uszko', 5)
SET IDENTITY_INSERT [dbo].[Questions] OFF
GO
SET IDENTITY_INSERT [dbo].[Quizs] ON 

INSERT [dbo].[Quizs] ([Id], [Title], [Description], [ImageUrl]) VALUES (1, N'Testowy Quiz', N'Test', N'\2f58763d-8d15-45f6-bf35-adcffd344b61.jpg')
INSERT [dbo].[Quizs] ([Id], [Title], [Description], [ImageUrl]) VALUES (2, N'Kiepscy', N'Sprawdź swoją wiedze z tego tematu', NULL)
INSERT [dbo].[Quizs] ([Id], [Title], [Description], [ImageUrl]) VALUES (3, N'Ojciec Chrzestny', N'Sprawdź swoją wiedze z tego tematu', NULL)
INSERT [dbo].[Quizs] ([Id], [Title], [Description], [ImageUrl]) VALUES (4, N'Queen', N'Sprawdź swoją wiedze z tego tematu', NULL)
INSERT [dbo].[Quizs] ([Id], [Title], [Description], [ImageUrl]) VALUES (5, N'Bajki', N'Sprawdź swoją wiedze z tego tematu', N'\bajki_1.jpg')
SET IDENTITY_INSERT [dbo].[Quizs] OFF
GO
/****** Object:  Index [IX_Answers_QuestionId]    Script Date: 30.05.2021 12:31:39 ******/
CREATE NONCLUSTERED INDEX [IX_Answers_QuestionId] ON [dbo].[Answers]
(
	[QuestionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Questions_QuizId]    Script Date: 30.05.2021 12:31:39 ******/
CREATE NONCLUSTERED INDEX [IX_Questions_QuizId] ON [dbo].[Questions]
(
	[QuizId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Answers]  WITH CHECK ADD  CONSTRAINT [FK_Answers_Questions_QuestionId] FOREIGN KEY([QuestionId])
REFERENCES [dbo].[Questions] ([Id])
GO
ALTER TABLE [dbo].[Answers] CHECK CONSTRAINT [FK_Answers_Questions_QuestionId]
GO
ALTER TABLE [dbo].[Questions]  WITH CHECK ADD  CONSTRAINT [FK_Questions_Quizs_QuizId] FOREIGN KEY([QuizId])
REFERENCES [dbo].[Quizs] ([Id])
GO
ALTER TABLE [dbo].[Questions] CHECK CONSTRAINT [FK_Questions_Quizs_QuizId]
GO
USE [master]
GO
ALTER DATABASE [QuizApi] SET  READ_WRITE 
GO
