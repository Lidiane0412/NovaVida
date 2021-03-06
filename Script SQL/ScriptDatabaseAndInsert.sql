USE master
GO

--CRIANDO O BANDO DE DADOS

CREATE DATABASE [Andradas]
 
GO
USE [Andradas]
GO

-- CRIANDO A TABELA DE MIGRATIONS DO EF

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

-- CRIANDO A TABELA DE LOG DE IMPORTAÇÃO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LogImportacao](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NomeArquivo] [varchar](255) NOT NULL,
	[DateImportacao] [datetime] NOT NULL,
 CONSTRAINT [PK_LogImport] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- CRIANDO A TABELA DE Alunos

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Alunos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](50) NOT NULL,
	[PagamentoMensal] [decimal](18, 6) NOT NULL,
	[DataVencimento] [datetime] NOT NULL,
	[CriadoEm] [datetime] NOT NULL,
	[ProfessorId] [int] NOT NULL,
 CONSTRAINT [PK_Alunos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- CRIANDO A TABELA DE PROFESSORES
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Professores](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](50) NOT NULL,
	[CriadoEm] [datetime] NOT NULL,
 CONSTRAINT [PK_Professores] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- INSERT DA TABELA DE MIGRATION
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200614144800_database', N'2.2.6-servicing-10079')
SET IDENTITY_INSERT [dbo].[LogImport] ON 

INSERT [dbo].[LogImport] ([Id], [NomeArquivo], [DateImportacao]) VALUES (1, N'TesteInsertUnico.txt', CAST(N'2020-08-29T11:49:11.440' AS DateTime))
INSERT [dbo].[LogImport] ([Id], [NomeArquivo], [DateImportacao]) VALUES (2, N'TesteInsert.txt', CAST(N'2020-08-29T23:53:48.973' AS DateTime))
INSERT [dbo].[LogImport] ([Id], [NomeArquivo], [DateImportacao]) VALUES (3, N'TesteInsert.txt', CAST(N'2020-08-29T12:14:57.573' AS DateTime))
INSERT [dbo].[LogImport] ([Id], [NomeArquivo], [DateImportacao]) VALUES (4, N'TesteInsert2.txt', CAST(N'2020-08-29T12:16:11.303' AS DateTime))
SET IDENTITY_INSERT [dbo].[LogImportacao] OFF

-- INSERT DA TABELA DE Alunos
SET IDENTITY_INSERT [dbo].[Alunos] ON 


INSERT [dbo].[Alunos] ([Id], [Nome], [PagamentoMensal], [DataVencimento], [CriadoEm], [ProfessorId]) VALUES (2, N'Mirella Mariana Duarte', CAST(500.000000 AS Decimal(18, 6)), CAST(N'2020-08-29T00:00:00.000' AS DateTime), CAST(N'2020-08-29T23:53:48.570' AS DateTime), 2)
INSERT [dbo].[Alunos] ([Id], [Nome], [PagamentoMensal], [DataVencimento], [CriadoEm], [ProfessorId]) VALUES (3, N'Heloise Débora Caldeira', CAST(500.000000 AS Decimal(18, 6)), CAST(N'2020-08-29T00:00:00.000' AS DateTime), CAST(N'2020-08-29T23:53:48.663' AS DateTime), 2)
INSERT [dbo].[Alunos] ([Id], [Nome], [PagamentoMensal], [DataVencimento], [CriadoEm], [ProfessorId]) VALUES (4, N'Mariah Heloisa da Silva', CAST(500.000000 AS Decimal(18, 6)), CAST(N'2020-08-29T00:00:00.000' AS DateTime), CAST(N'2020-08-29T23:53:48.670' AS DateTime), 2)
INSERT [dbo].[Alunos] ([Id], [Nome], [PagamentoMensal], [DataVencimento], [CriadoEm], [ProfessorId]) VALUES (5, N'Anabela Antunez', CAST(500.000000 AS Decimal(18, 6)), CAST(N'2020-08-29T00:00:00.000' AS DateTime), CAST(N'2020-08-29T23:53:48.670' AS DateTime), 2)
INSERT [dbo].[Alunos] ([Id], [Nome], [PagamentoMensal], [DataVencimento], [CriadoEm], [ProfessorId]) VALUES (6, N'Angelica Cintra', CAST(500.000000 AS Decimal(18, 6)), CAST(N'2020-08-29T00:00:00.000' AS DateTime), CAST(N'2020-08-29T23:53:48.673' AS DateTime), 2)
INSERT [dbo].[Alunos] ([Id], [Nome], [PagamentoMensal], [DataVencimento], [CriadoEm], [ProfessorId]) VALUES (7, N'Antonio Vilhena', CAST(500.000000 AS Decimal(18, 6)), CAST(N'2020-08-29T00:00:00.000' AS DateTime), CAST(N'2020-08-29T23:53:48.677' AS DateTime), 2)
INSERT [dbo].[Alunos] ([Id], [Nome], [PagamentoMensal], [DataVencimento], [CriadoEm], [ProfessorId]) VALUES (8, N'Benedito Murilo Daniel Porto', CAST(500.000000 AS Decimal(18, 6)), CAST(N'2020-08-29T00:00:00.000' AS DateTime), CAST(N'2020-08-29T23:53:48.680' AS DateTime), 2)
INSERT [dbo].[Alunos] ([Id], [Nome], [PagamentoMensal], [DataVencimento], [CriadoEm], [ProfessorId]) VALUES (9, N'Anibal Paes', CAST(500.000000 AS Decimal(18, 6)), CAST(N'2020-08-29T00:00:00.000' AS DateTime), CAST(N'2020-08-29T23:53:48.680' AS DateTime), 2)
INSERT [dbo].[Alunos] ([Id], [Nome], [PagamentoMensal], [DataVencimento], [CriadoEm], [ProfessorId]) VALUES (10, N'Augusto Figueiroa', CAST(800.000000 AS Decimal(18, 6)), CAST(N'2020-08-29T00:00:00.000' AS DateTime), CAST(N'2020-08-29T23:53:48.687' AS DateTime), 2)
INSERT [dbo].[Alunos] ([Id], [Nome], [PagamentoMensal], [DataVencimento], [CriadoEm], [ProfessorId]) VALUES (11, N'Murilo Pietro Brito', CAST(800.000000 AS Decimal(18, 6)), CAST(N'2020-08-29T00:00:00.000' AS DateTime), CAST(N'2020-08-29T23:53:48.690' AS DateTime), 2)

SET IDENTITY_INSERT [dbo].[Alunos] OFF

-- INSERT DA TABELA DE PROFESSORES
SET IDENTITY_INSERT [dbo].[Professores] ON 

INSERT [dbo].[Professores] ([Id], [Nome], [CriadoEm]) VALUES (1, N'Isabella Branches', CAST(N'2020-08-29T19:26:48.903' AS DateTime))
INSERT [dbo].[Professores] ([Id], [Nome], [CriadoEm]) VALUES (2, N'Eric Fernandes Cordeiro', CAST(N'2020-08-29T19:32:12.740' AS DateTime))
INSERT [dbo].[Professores] ([Id], [Nome], [CriadoEm]) VALUES (3, N'Ligia Fernandes', CAST(N'2020-08-29T19:32:18.460' AS DateTime))
INSERT [dbo].[Professores] ([Id], [Nome], [CriadoEm]) VALUES (2, N'Aida Portella', CAST(N'2020-08-29T19:32:23.680' AS DateTime))
INSERT [dbo].[Professores] ([Id], [Nome], [CriadoEm]) VALUES (3, N'Michael Romeo', CAST(N'2020-08-29T20:02:05.593' AS DateTime))
SET IDENTITY_INSERT [dbo].[Professores] OFF


CREATE NONCLUSTERED INDEX [IX_Alunos_ProfessorId] ON [dbo].[Alunos]
(
	[ProfessorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

-- ALTERANDO OS CAMPOS DE DATAS DA TABELA PARA SEREM AUTOMATICAMENTE SETADOS COMO DATETIME

ALTER TABLE [dbo].[LogImportacao] ADD  DEFAULT (getdate()) FOR [DateImport]
GO
ALTER TABLE [dbo].[Alunos] ADD  DEFAULT (getdate()) FOR [DataVencimento]
GO
ALTER TABLE [dbo].[Alunos] ADD  DEFAULT (getdate()) FOR [CriadoEm]
GO
ALTER TABLE [dbo].[Professores] ADD  DEFAULT (getdate()) FOR [CriadoEm]
GO
ALTER TABLE [dbo].[Alunos]  WITH CHECK ADD  CONSTRAINT [FK_Alunos_Professores_ProfessorId] FOREIGN KEY([ProfessorId])
REFERENCES [dbo].[Professores] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Alunos] CHECK CONSTRAINT [FK_Alunos_Professores_ProfessorId]
GO
USE [master]
GO
ALTER DATABASE [Andradas] SET  READ_WRITE 
GO
