USE [votacionesdb]
GO
/****** Object:  Table [dbo].[candidato]    Script Date: 27/03/2021 20:03:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[candidato](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_municipio] [bigint] NOT NULL,
	[id_partido] [bigint] NOT NULL,
	[id_tipo_eleccion] [bigint] NOT NULL,
	[foto] [image] NOT NULL,
 CONSTRAINT [PK__candidat__3213E83F10AA17E0] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[departamento]    Script Date: 27/03/2021 20:03:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[departamento](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[municipio]    Script Date: 27/03/2021 20:03:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[municipio](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[id_departamento] [bigint] NOT NULL,
 CONSTRAINT [PK__municipi__3213E83F199D0D50] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[partido]    Script Date: 27/03/2021 20:03:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[partido](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[foto] [image] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[registro_nacional]    Script Date: 27/03/2021 20:03:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[registro_nacional](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[primer_apellido] [varchar](50) NOT NULL,
	[segundo_apellido] [varchar](50) NOT NULL,
	[fecha_nacimiento] [timestamp] NOT NULL,
	[numero_dui] [varchar](15) NOT NULL,
	[genero] [varchar](10) NOT NULL,
	[ocupacion] [varchar](50) NOT NULL,
	[nacionalidad] [varchar](20) NOT NULL,
	[direccion] [varchar](200) NOT NULL,
	[foto] [image] NOT NULL,
	[id_municipio] [bigint] NOT NULL,
 CONSTRAINT [PK__registro__3213E83F567D566C] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[roles]    Script Date: 27/03/2021 20:03:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[roles](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tipo_eleccion]    Script Date: 27/03/2021 20:03:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tipo_eleccion](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[usuarios]    Script Date: 27/03/2021 20:03:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[usuarios](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[usuario] [varchar](50) NULL,
	[pass] [varchar](50) NULL,
	[fecha_creacion] [timestamp] NULL,
	[correo] [varchar](50) NULL,
	[id_registro_nacional] [bigint] NULL,
	[id_role] [bigint] NULL,
 CONSTRAINT [PK__usuarios__3213E83F20C1FCA9] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[votos]    Script Date: 27/03/2021 20:03:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[votos](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_candidato] [bigint] NOT NULL,
	[id_usuario] [bigint] NOT NULL,
	[voto_nulo] [bit] NOT NULL,
 CONSTRAINT [PK__votos__3213E83F8D6B45F6] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[candidato]  WITH CHECK ADD  CONSTRAINT [FK_candidato_municipio] FOREIGN KEY([id_municipio])
REFERENCES [dbo].[municipio] ([id])
GO
ALTER TABLE [dbo].[candidato] CHECK CONSTRAINT [FK_candidato_municipio]
GO
ALTER TABLE [dbo].[candidato]  WITH CHECK ADD  CONSTRAINT [FK_candidato_partido] FOREIGN KEY([id_partido])
REFERENCES [dbo].[partido] ([id])
GO
ALTER TABLE [dbo].[candidato] CHECK CONSTRAINT [FK_candidato_partido]
GO
ALTER TABLE [dbo].[candidato]  WITH CHECK ADD  CONSTRAINT [FK_candidato_tipo_eleccion] FOREIGN KEY([id_tipo_eleccion])
REFERENCES [dbo].[tipo_eleccion] ([id])
GO
ALTER TABLE [dbo].[candidato] CHECK CONSTRAINT [FK_candidato_tipo_eleccion]
GO
ALTER TABLE [dbo].[municipio]  WITH CHECK ADD  CONSTRAINT [FK_municipio_departamento] FOREIGN KEY([id_departamento])
REFERENCES [dbo].[departamento] ([id])
GO
ALTER TABLE [dbo].[municipio] CHECK CONSTRAINT [FK_municipio_departamento]
GO
ALTER TABLE [dbo].[registro_nacional]  WITH CHECK ADD  CONSTRAINT [FK_registro_nacional_municipio] FOREIGN KEY([id_municipio])
REFERENCES [dbo].[municipio] ([id])
GO
ALTER TABLE [dbo].[registro_nacional] CHECK CONSTRAINT [FK_registro_nacional_municipio]
GO
ALTER TABLE [dbo].[usuarios]  WITH CHECK ADD  CONSTRAINT [FK_usuarios_registro_nacional] FOREIGN KEY([id_registro_nacional])
REFERENCES [dbo].[registro_nacional] ([id])
GO
ALTER TABLE [dbo].[usuarios] CHECK CONSTRAINT [FK_usuarios_registro_nacional]
GO
ALTER TABLE [dbo].[usuarios]  WITH CHECK ADD  CONSTRAINT [FK_usuarios_roles] FOREIGN KEY([id_role])
REFERENCES [dbo].[roles] ([id])
GO
ALTER TABLE [dbo].[usuarios] CHECK CONSTRAINT [FK_usuarios_roles]
GO
ALTER TABLE [dbo].[votos]  WITH CHECK ADD  CONSTRAINT [FK_votos_candidato] FOREIGN KEY([id_candidato])
REFERENCES [dbo].[candidato] ([id])
GO
ALTER TABLE [dbo].[votos] CHECK CONSTRAINT [FK_votos_candidato]
GO
ALTER TABLE [dbo].[votos]  WITH CHECK ADD  CONSTRAINT [FK_votos_usuarios] FOREIGN KEY([id_usuario])
REFERENCES [dbo].[usuarios] ([id])
GO
ALTER TABLE [dbo].[votos] CHECK CONSTRAINT [FK_votos_usuarios]
GO
