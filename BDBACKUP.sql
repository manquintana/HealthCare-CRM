USE [AFILIADOS]
GO
/****** Object:  Table [dbo].[Plan]    Script Date: 2/27/2019 2:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Plan](
	[id] [int] NOT NULL,
	[Descripcion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Tipo_Plan] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Practica]    Script Date: 2/27/2019 2:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Practica](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Tipo_Practica] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Prestador]    Script Date: 2/27/2019 2:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prestador](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Apellido] [nvarchar](50) NOT NULL,
	[IdPractica] [int] NOT NULL,
 CONSTRAINT [PK_Prestadores] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Socio]    Script Date: 2/27/2019 2:40:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Socio](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Apellido] [nvarchar](50) NOT NULL,
	[Documento] [nvarchar](50) NOT NULL,
	[FechaNacimiento] [datetime] NOT NULL,
	[Tipo_Socio] [int] NOT NULL,
	[Tipo_Plan] [int] NOT NULL,
 CONSTRAINT [PK_Usuario_Socio] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Socio_Prestador]    Script Date: 2/27/2019 2:40:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Socio_Prestador](
	[idSocio] [int] NOT NULL,
	[idPrestador] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo_Socio]    Script Date: 2/27/2019 2:40:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_Socio](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Tipo_Socio] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Plan] ([id], [Descripcion]) VALUES (1, N'2000')
INSERT [dbo].[Plan] ([id], [Descripcion]) VALUES (2, N'3000')
INSERT [dbo].[Plan] ([id], [Descripcion]) VALUES (3, N'4000')
INSERT [dbo].[Plan] ([id], [Descripcion]) VALUES (4, N'5800')
SET IDENTITY_INSERT [dbo].[Practica] ON 

INSERT [dbo].[Practica] ([id], [Descripcion]) VALUES (1, N'Kinesiologia')
INSERT [dbo].[Practica] ([id], [Descripcion]) VALUES (2, N'Fonoaudilogia')
INSERT [dbo].[Practica] ([id], [Descripcion]) VALUES (3, N'Consulta Medica')
INSERT [dbo].[Practica] ([id], [Descripcion]) VALUES (4, N'Oncologia')
INSERT [dbo].[Practica] ([id], [Descripcion]) VALUES (5, N'Traumatologia')
SET IDENTITY_INSERT [dbo].[Practica] OFF
SET IDENTITY_INSERT [dbo].[Prestador] ON 

INSERT [dbo].[Prestador] ([id], [Nombre], [Apellido], [IdPractica]) VALUES (1, N'Raul', N'Trupino', 2)
INSERT [dbo].[Prestador] ([id], [Nombre], [Apellido], [IdPractica]) VALUES (2, N'Maria', N'Bolson', 4)
INSERT [dbo].[Prestador] ([id], [Nombre], [Apellido], [IdPractica]) VALUES (3, N'Daniel', N'Boris', 1)
INSERT [dbo].[Prestador] ([id], [Nombre], [Apellido], [IdPractica]) VALUES (4, N'Carlos', N'Parin', 3)
INSERT [dbo].[Prestador] ([id], [Nombre], [Apellido], [IdPractica]) VALUES (5, N'Gustavo', N'Chere', 2)
INSERT [dbo].[Prestador] ([id], [Nombre], [Apellido], [IdPractica]) VALUES (6, N'Santiago', N'Pascual', 5)
SET IDENTITY_INSERT [dbo].[Prestador] OFF
SET IDENTITY_INSERT [dbo].[Socio] ON 

INSERT [dbo].[Socio] ([id], [Nombre], [Apellido], [Documento], [FechaNacimiento], [Tipo_Socio], [Tipo_Plan]) VALUES (1, N'Alicia Ester', N'Marino', N'24567857', CAST(N'1976-12-25T00:00:00.000' AS DateTime), 1, 1)
INSERT [dbo].[Socio] ([id], [Nombre], [Apellido], [Documento], [FechaNacimiento], [Tipo_Socio], [Tipo_Plan]) VALUES (2, N'Lucas', N'Prietto', N'34985834', CAST(N'2001-05-07T00:00:00.000' AS DateTime), 1, 2)
INSERT [dbo].[Socio] ([id], [Nombre], [Apellido], [Documento], [FechaNacimiento], [Tipo_Socio], [Tipo_Plan]) VALUES (3, N'Norberto', N'Manteiga', N'32461098', CAST(N'1994-01-17T00:00:00.000' AS DateTime), 2, 1)
INSERT [dbo].[Socio] ([id], [Nombre], [Apellido], [Documento], [FechaNacimiento], [Tipo_Socio], [Tipo_Plan]) VALUES (4, N'Marta Susana', N'Bolognese', N'19092763', CAST(N'1965-03-12T00:00:00.000' AS DateTime), 2, 2)
INSERT [dbo].[Socio] ([id], [Nombre], [Apellido], [Documento], [FechaNacimiento], [Tipo_Socio], [Tipo_Plan]) VALUES (5, N'Blanca', N'Lavalle', N'22435876', CAST(N'1970-08-24T00:00:00.000' AS DateTime), 3, 1)
SET IDENTITY_INSERT [dbo].[Socio] OFF
INSERT [dbo].[Socio_Prestador] ([idSocio], [idPrestador]) VALUES (1, 2)
INSERT [dbo].[Socio_Prestador] ([idSocio], [idPrestador]) VALUES (2, 1)
INSERT [dbo].[Socio_Prestador] ([idSocio], [idPrestador]) VALUES (3, 6)
INSERT [dbo].[Socio_Prestador] ([idSocio], [idPrestador]) VALUES (4, 3)
INSERT [dbo].[Socio_Prestador] ([idSocio], [idPrestador]) VALUES (5, 4)
SET IDENTITY_INSERT [dbo].[Tipo_Socio] ON 

INSERT [dbo].[Tipo_Socio] ([id], [Descripcion]) VALUES (1, N'Directo   ')
INSERT [dbo].[Tipo_Socio] ([id], [Descripcion]) VALUES (2, N'Empresa   ')
INSERT [dbo].[Tipo_Socio] ([id], [Descripcion]) VALUES (3, N'Organizacion')
SET IDENTITY_INSERT [dbo].[Tipo_Socio] OFF
ALTER TABLE [dbo].[Prestador]  WITH CHECK ADD  CONSTRAINT [FK_Prestadores_Tipo_Practica] FOREIGN KEY([IdPractica])
REFERENCES [dbo].[Practica] ([id])
GO
ALTER TABLE [dbo].[Prestador] CHECK CONSTRAINT [FK_Prestadores_Tipo_Practica]
GO
ALTER TABLE [dbo].[Socio]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Socio_Tipo_Plan] FOREIGN KEY([Tipo_Plan])
REFERENCES [dbo].[Plan] ([id])
GO
ALTER TABLE [dbo].[Socio] CHECK CONSTRAINT [FK_Usuario_Socio_Tipo_Plan]
GO
ALTER TABLE [dbo].[Socio]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Socio_Tipo_Socio] FOREIGN KEY([Tipo_Socio])
REFERENCES [dbo].[Tipo_Socio] ([id])
GO
ALTER TABLE [dbo].[Socio] CHECK CONSTRAINT [FK_Usuario_Socio_Tipo_Socio]
GO
ALTER TABLE [dbo].[Socio_Prestador]  WITH CHECK ADD  CONSTRAINT [FK_Socio_Prestador_Socio] FOREIGN KEY([idSocio])
REFERENCES [dbo].[Socio] ([id])
GO
ALTER TABLE [dbo].[Socio_Prestador] CHECK CONSTRAINT [FK_Socio_Prestador_Socio]
GO
ALTER TABLE [dbo].[Socio_Prestador]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Prestador_Prestadores] FOREIGN KEY([idPrestador])
REFERENCES [dbo].[Prestador] ([id])
GO
ALTER TABLE [dbo].[Socio_Prestador] CHECK CONSTRAINT [FK_Usuario_Prestador_Prestadores]
GO
