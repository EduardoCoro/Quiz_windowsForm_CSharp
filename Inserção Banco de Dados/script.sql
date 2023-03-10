USE [master]
GO
/****** Object:  Database [farmacia.mdf]    Script Date: 08/12/2015 10:53:51 ******/
CREATE DATABASE [farmacia.mdf] ON  PRIMARY 
( NAME = N'Farmacia', FILENAME = N'C:\bd\Farmacia.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Farmacia_log', FILENAME = N'C:\bd\Farmacia_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [farmacia.mdf] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [farmacia.mdf].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [farmacia.mdf] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [farmacia.mdf] SET ANSI_NULLS OFF
GO
ALTER DATABASE [farmacia.mdf] SET ANSI_PADDING OFF
GO
ALTER DATABASE [farmacia.mdf] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [farmacia.mdf] SET ARITHABORT OFF
GO
ALTER DATABASE [farmacia.mdf] SET AUTO_CLOSE ON
GO
ALTER DATABASE [farmacia.mdf] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [farmacia.mdf] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [farmacia.mdf] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [farmacia.mdf] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [farmacia.mdf] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [farmacia.mdf] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [farmacia.mdf] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [farmacia.mdf] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [farmacia.mdf] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [farmacia.mdf] SET  DISABLE_BROKER
GO
ALTER DATABASE [farmacia.mdf] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [farmacia.mdf] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [farmacia.mdf] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [farmacia.mdf] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [farmacia.mdf] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [farmacia.mdf] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [farmacia.mdf] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [farmacia.mdf] SET  READ_WRITE
GO
ALTER DATABASE [farmacia.mdf] SET RECOVERY SIMPLE
GO
ALTER DATABASE [farmacia.mdf] SET  MULTI_USER
GO
ALTER DATABASE [farmacia.mdf] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [farmacia.mdf] SET DB_CHAINING OFF
GO
USE [farmacia.mdf]
GO
/****** Object:  Table [dbo].[Produtos]    Script Date: 08/12/2015 10:53:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Produtos](
	[pro_cod] [int] IDENTITY(1,1) NOT NULL,
	[pro_descrição] [varchar](50) NOT NULL,
	[pro_valor] [smallmoney] NOT NULL,
	[pro_qtd] [int] NOT NULL,
 CONSTRAINT [PK_Produtos] PRIMARY KEY CLUSTERED 
(
	[pro_cod] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Produtos] ON
INSERT [dbo].[Produtos] ([pro_cod], [pro_descrição], [pro_valor], [pro_qtd]) VALUES (1, N'Maconha', 10.0000, 4)
INSERT [dbo].[Produtos] ([pro_cod], [pro_descrição], [pro_valor], [pro_qtd]) VALUES (2, N'Pinga', 15.0000, 1)
INSERT [dbo].[Produtos] ([pro_cod], [pro_descrição], [pro_valor], [pro_qtd]) VALUES (3, N'Doril', 2.5000, 50)
SET IDENTITY_INSERT [dbo].[Produtos] OFF
/****** Object:  Table [dbo].[Cidades]    Script Date: 08/12/2015 10:53:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cidades](
	[Cid_cod] [int] IDENTITY(1,1) NOT NULL,
	[Cid_nome] [varchar](50) NOT NULL,
	[Cid_UF] [nchar](2) NOT NULL,
 CONSTRAINT [PK_Cidades] PRIMARY KEY CLUSTERED 
(
	[Cid_cod] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Cidades] ON
INSERT [dbo].[Cidades] ([Cid_cod], [Cid_nome], [Cid_UF]) VALUES (1, N'Paraná', N'PR')
INSERT [dbo].[Cidades] ([Cid_cod], [Cid_nome], [Cid_UF]) VALUES (2, N'Marilía', N'SP')
INSERT [dbo].[Cidades] ([Cid_cod], [Cid_nome], [Cid_UF]) VALUES (3, N'Matão', N'SP')
INSERT [dbo].[Cidades] ([Cid_cod], [Cid_nome], [Cid_UF]) VALUES (4, N'Rio de Janeiro', N'RJ')
INSERT [dbo].[Cidades] ([Cid_cod], [Cid_nome], [Cid_UF]) VALUES (5, N'Barretos', N'SP')
INSERT [dbo].[Cidades] ([Cid_cod], [Cid_nome], [Cid_UF]) VALUES (6, N'Cândido Rodrigues', N'SP')
SET IDENTITY_INSERT [dbo].[Cidades] OFF
/****** Object:  Table [dbo].[funcionario]    Script Date: 08/12/2015 10:53:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[funcionario](
	[fun_cod] [int] IDENTITY(1,1) NOT NULL,
	[fun_nome] [varchar](50) NOT NULL,
	[fun_endereco] [varchar](50) NOT NULL,
	[fun_tel] [nchar](15) NULL,
	[fun_cid] [int] NULL,
	[fun_login] [varchar](10) NOT NULL,
	[fun_senha] [varchar](10) NOT NULL,
 CONSTRAINT [PK_funcionario] PRIMARY KEY CLUSTERED 
(
	[fun_cod] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[funcionario] ON
INSERT [dbo].[funcionario] ([fun_cod], [fun_nome], [fun_endereco], [fun_tel], [fun_cid], [fun_login], [fun_senha]) VALUES (1, N'Joana', N'Rua 3', N'3253-9089      ', 3, N'123', N'123')
INSERT [dbo].[funcionario] ([fun_cod], [fun_nome], [fun_endereco], [fun_tel], [fun_cid], [fun_login], [fun_senha]) VALUES (2, N'Maria', N'Rua 8', N'3253-9087      ', 2, N'321', N'321')
SET IDENTITY_INSERT [dbo].[funcionario] OFF
/****** Object:  Table [dbo].[Clientes]    Script Date: 08/12/2015 10:53:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Clientes](
	[cli_cod] [int] IDENTITY(1,1) NOT NULL,
	[cli_nome] [varchar](50) NOT NULL,
	[cli_endereco] [varchar](50) NOT NULL,
	[cli_telefone] [varchar](50) NULL,
	[cli_cid] [int] NOT NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[cli_cod] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Clientes] ON
INSERT [dbo].[Clientes] ([cli_cod], [cli_nome], [cli_endereco], [cli_telefone], [cli_cid]) VALUES (1, N'João', N'Rua 1', N'3253-1943', 3)
INSERT [dbo].[Clientes] ([cli_cod], [cli_nome], [cli_endereco], [cli_telefone], [cli_cid]) VALUES (2, N'Maria', N'Rua 4', N'3253-1039', 2)
SET IDENTITY_INSERT [dbo].[Clientes] OFF
/****** Object:  Table [dbo].[Vendas]    Script Date: 08/12/2015 10:53:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vendas](
	[ven_num] [int] IDENTITY(1,1) NOT NULL,
	[ven_data] [date] NOT NULL,
	[ven_sitiuação] [nchar](1) NOT NULL,
	[ven_cli] [int] NOT NULL,
 CONSTRAINT [PK_Vendas] PRIMARY KEY CLUSTERED 
(
	[ven_num] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[itens_venda]    Script Date: 08/12/2015 10:53:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[itens_venda](
	[itens_num] [int] IDENTITY(1,1) NOT NULL,
	[itens_pro] [int] NOT NULL,
	[itens_ven] [int] NOT NULL,
	[itens_qtd] [int] NOT NULL,
	[itens_valorU] [smallmoney] NOT NULL,
 CONSTRAINT [PK_itens_venda] PRIMARY KEY CLUSTERED 
(
	[itens_num] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_funcionario_Cidades]    Script Date: 08/12/2015 10:53:52 ******/
ALTER TABLE [dbo].[funcionario]  WITH CHECK ADD  CONSTRAINT [FK_funcionario_Cidades] FOREIGN KEY([fun_cid])
REFERENCES [dbo].[Cidades] ([Cid_cod])
GO
ALTER TABLE [dbo].[funcionario] CHECK CONSTRAINT [FK_funcionario_Cidades]
GO
/****** Object:  ForeignKey [FK_Clientes_Cidades]    Script Date: 08/12/2015 10:53:52 ******/
ALTER TABLE [dbo].[Clientes]  WITH CHECK ADD  CONSTRAINT [FK_Clientes_Cidades] FOREIGN KEY([cli_cid])
REFERENCES [dbo].[Cidades] ([Cid_cod])
GO
ALTER TABLE [dbo].[Clientes] CHECK CONSTRAINT [FK_Clientes_Cidades]
GO
/****** Object:  ForeignKey [FK_Vendas_Clientes]    Script Date: 08/12/2015 10:53:52 ******/
ALTER TABLE [dbo].[Vendas]  WITH CHECK ADD  CONSTRAINT [FK_Vendas_Clientes] FOREIGN KEY([ven_cli])
REFERENCES [dbo].[Clientes] ([cli_cod])
GO
ALTER TABLE [dbo].[Vendas] CHECK CONSTRAINT [FK_Vendas_Clientes]
GO
/****** Object:  ForeignKey [FK_itens_venda_Produtos]    Script Date: 08/12/2015 10:53:52 ******/
ALTER TABLE [dbo].[itens_venda]  WITH CHECK ADD  CONSTRAINT [FK_itens_venda_Produtos] FOREIGN KEY([itens_pro])
REFERENCES [dbo].[Produtos] ([pro_cod])
GO
ALTER TABLE [dbo].[itens_venda] CHECK CONSTRAINT [FK_itens_venda_Produtos]
GO
/****** Object:  ForeignKey [FK_itens_venda_Vendas]    Script Date: 08/12/2015 10:53:52 ******/
ALTER TABLE [dbo].[itens_venda]  WITH CHECK ADD  CONSTRAINT [FK_itens_venda_Vendas] FOREIGN KEY([itens_ven])
REFERENCES [dbo].[Vendas] ([ven_num])
GO
ALTER TABLE [dbo].[itens_venda] CHECK CONSTRAINT [FK_itens_venda_Vendas]
GO
