USE [master]
GO
/****** Object:  Database [locadora]    Script Date: 06/06/2021 21:48:07 ******/
CREATE DATABASE [locadora]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'locadora', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\locadora.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'locadora_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\locadora_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [locadora] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [locadora].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [locadora] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [locadora] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [locadora] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [locadora] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [locadora] SET ARITHABORT OFF 
GO
ALTER DATABASE [locadora] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [locadora] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [locadora] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [locadora] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [locadora] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [locadora] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [locadora] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [locadora] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [locadora] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [locadora] SET  DISABLE_BROKER 
GO
ALTER DATABASE [locadora] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [locadora] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [locadora] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [locadora] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [locadora] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [locadora] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [locadora] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [locadora] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [locadora] SET  MULTI_USER 
GO
ALTER DATABASE [locadora] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [locadora] SET DB_CHAINING OFF 
GO
ALTER DATABASE [locadora] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [locadora] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [locadora] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [locadora] SET QUERY_STORE = OFF
GO
USE [locadora]
GO
/****** Object:  Table [dbo].[Filme]    Script Date: 06/06/2021 21:48:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Filme](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [nchar](200) NOT NULL,
	[DataCriacao] [datetime] NULL,
	[Ativo] [bit] NULL,
	[GeneroId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Genero]    Script Date: 06/06/2021 21:48:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genero](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [nvarchar](100) NOT NULL,
	[DataCriacao] [datetime] NULL,
	[Ativo] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Locacao]    Script Date: 06/06/2021 21:48:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Locacao](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CpfCliente] [nchar](14) NOT NULL,
	[DataLocacao] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LocacaoFilme]    Script Date: 06/06/2021 21:48:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LocacaoFilme](
	[LocacaoId] [int] NOT NULL,
	[FilmeId] [int] NOT NULL,
 CONSTRAINT [PK_LocacaoFilme] PRIMARY KEY CLUSTERED 
(
	[FilmeId] ASC,
	[LocacaoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Filme] ON 

INSERT [dbo].[Filme] ([Id], [Nome], [DataCriacao], [Ativo], [GeneroId]) VALUES (1, N'Corra que a policia vem ai                                                                                                                                                                              ', CAST(N'2021-05-27T20:27:07.230' AS DateTime), 1, 3)
INSERT [dbo].[Filme] ([Id], [Nome], [DataCriacao], [Ativo], [GeneroId]) VALUES (2, N'Star Wars V                                                                                                                                                                                             ', CAST(N'2021-05-27T20:27:07.247' AS DateTime), 1, 2)
INSERT [dbo].[Filme] ([Id], [Nome], [DataCriacao], [Ativo], [GeneroId]) VALUES (3, N'Os aventureiros do bairro proibido                                                                                                                                                                      ', CAST(N'2021-05-27T20:27:07.250' AS DateTime), 1, 1)
INSERT [dbo].[Filme] ([Id], [Nome], [DataCriacao], [Ativo], [GeneroId]) VALUES (4, N'Três homens em conflito                                                                                                                                                                                 ', CAST(N'2021-05-27T20:27:07.250' AS DateTime), 1, 6)
INSERT [dbo].[Filme] ([Id], [Nome], [DataCriacao], [Ativo], [GeneroId]) VALUES (5, N'O Senhor dos Anéis: O Retorno do Rei                                                                                                                                                                    ', CAST(N'2021-05-27T20:27:07.250' AS DateTime), 1, 2)
INSERT [dbo].[Filme] ([Id], [Nome], [DataCriacao], [Ativo], [GeneroId]) VALUES (6, N'Sexta-feira 13                                                                                                                                                                                          ', CAST(N'2021-05-27T20:27:07.257' AS DateTime), 1, 8)
INSERT [dbo].[Filme] ([Id], [Nome], [DataCriacao], [Ativo], [GeneroId]) VALUES (7, N'Corra que a policia vem ai                                                                                                                                                                              ', CAST(N'2021-05-27T20:27:07.230' AS DateTime), 1, 3)
INSERT [dbo].[Filme] ([Id], [Nome], [DataCriacao], [Ativo], [GeneroId]) VALUES (8, N'Superman 2                                                                                                                                                                                              ', CAST(N'2021-05-27T21:27:07.230' AS DateTime), 1, 3)
SET IDENTITY_INSERT [dbo].[Filme] OFF
GO
SET IDENTITY_INSERT [dbo].[Genero] ON 

INSERT [dbo].[Genero] ([Id], [Nome], [DataCriacao], [Ativo]) VALUES (1, N'Ação', CAST(N'2021-05-27T20:19:33.270' AS DateTime), 1)
INSERT [dbo].[Genero] ([Id], [Nome], [DataCriacao], [Ativo]) VALUES (2, N'Aventura', CAST(N'2021-05-27T20:19:33.280' AS DateTime), 1)
INSERT [dbo].[Genero] ([Id], [Nome], [DataCriacao], [Ativo]) VALUES (3, N'Comédia', CAST(N'2021-05-27T20:19:33.280' AS DateTime), 1)
INSERT [dbo].[Genero] ([Id], [Nome], [DataCriacao], [Ativo]) VALUES (4, N'Comédia romântica', CAST(N'2021-05-27T20:19:33.283' AS DateTime), 1)
INSERT [dbo].[Genero] ([Id], [Nome], [DataCriacao], [Ativo]) VALUES (5, N'Documentário', CAST(N'2021-05-27T20:19:33.283' AS DateTime), 1)
INSERT [dbo].[Genero] ([Id], [Nome], [DataCriacao], [Ativo]) VALUES (6, N'Faroeste', CAST(N'2021-05-27T20:19:33.287' AS DateTime), 1)
INSERT [dbo].[Genero] ([Id], [Nome], [DataCriacao], [Ativo]) VALUES (7, N'Suspense', CAST(N'2021-05-27T20:19:33.290' AS DateTime), 1)
INSERT [dbo].[Genero] ([Id], [Nome], [DataCriacao], [Ativo]) VALUES (8, N'Terror', CAST(N'2021-05-27T20:19:33.290' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Genero] OFF
GO
ALTER TABLE [dbo].[Filme]  WITH CHECK ADD FOREIGN KEY([GeneroId])
REFERENCES [dbo].[Genero] ([Id])
GO
ALTER TABLE [dbo].[Filme]  WITH CHECK ADD  CONSTRAINT [FK_Filme_Genero] FOREIGN KEY([GeneroId])
REFERENCES [dbo].[Genero] ([Id])
GO
ALTER TABLE [dbo].[Filme] CHECK CONSTRAINT [FK_Filme_Genero]
GO
ALTER TABLE [dbo].[LocacaoFilme]  WITH CHECK ADD  CONSTRAINT [FK_LocacaoFilme_Filme] FOREIGN KEY([FilmeId])
REFERENCES [dbo].[Filme] ([Id])
GO
ALTER TABLE [dbo].[LocacaoFilme] CHECK CONSTRAINT [FK_LocacaoFilme_Filme]
GO
ALTER TABLE [dbo].[LocacaoFilme]  WITH CHECK ADD  CONSTRAINT [FK_LocacaoFilme_Locacao] FOREIGN KEY([LocacaoId])
REFERENCES [dbo].[Locacao] ([Id])
GO
ALTER TABLE [dbo].[LocacaoFilme] CHECK CONSTRAINT [FK_LocacaoFilme_Locacao]
GO
USE [master]
GO
ALTER DATABASE [locadora] SET  READ_WRITE 
GO
