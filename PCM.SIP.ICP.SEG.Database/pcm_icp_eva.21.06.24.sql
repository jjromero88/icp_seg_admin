USE [pcm_icp_eva]
GO
/****** Object:  Table [dbo].[ENTIDAD]    Script Date: 21/06/2024 22:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ENTIDAD](
	[entidad_id] [int] IDENTITY(1,1) NOT NULL,
	[entidadgrupo_id] [int] NULL,
	[entidadsector_id] [int] NULL,
	[modalidadintegridad_id] [int] NULL,
	[ubigeo_id] [int] NULL,
	[numero_ruc] [varchar](11) NULL,
	[codigo] [varchar](30) NULL,
	[acronimo] [varchar](20) NULL,
	[nombre] [varchar](250) NULL,
	[estado] [bit] NULL,
	[usuario_reg] [varchar](20) NULL,
	[fecha_reg] [datetime] NULL,
	[usuario_act] [varchar](20) NULL,
	[fecha_act] [datetime] NULL,
 CONSTRAINT [PK__ENTIDAD__2D930D745A0BCA8A] PRIMARY KEY CLUSTERED 
(
	[entidad_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ENTIDADGRUPO]    Script Date: 21/06/2024 22:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ENTIDADGRUPO](
	[entidadgrupo_id] [int] IDENTITY(1,1) NOT NULL,
	[codigo] [varchar](10) NULL,
	[abreviatura] [varchar](50) NULL,
	[descripcion] [varchar](150) NULL,
	[estado] [bit] NULL,
	[usuario_reg] [varchar](20) NULL,
	[fecha_reg] [datetime] NULL,
	[usuario_act] [varchar](20) NULL,
	[fecha_act] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[entidadgrupo_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ENTIDADSECTOR]    Script Date: 21/06/2024 22:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ENTIDADSECTOR](
	[entidadsector_id] [int] IDENTITY(1,1) NOT NULL,
	[tiposector_id] [int] NULL,
	[codigo] [varchar](10) NULL,
	[abreviatura] [varchar](50) NULL,
	[descripcion] [varchar](150) NULL,
	[estado] [bit] NULL,
	[usuario_reg] [varchar](20) NULL,
	[fecha_reg] [datetime] NULL,
	[usuario_act] [varchar](20) NULL,
	[fecha_act] [datetime] NULL,
 CONSTRAINT [PK__ENTIDADS__F88440813C037E3F] PRIMARY KEY CLUSTERED 
(
	[entidadsector_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MODALIDADINTEGRIDAD]    Script Date: 21/06/2024 22:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MODALIDADINTEGRIDAD](
	[modalidadintegridad_id] [int] IDENTITY(1,1) NOT NULL,
	[codigo] [varchar](10) NULL,
	[abreviatura] [varchar](50) NULL,
	[descripcion] [varchar](150) NULL,
	[estado] [bit] NULL,
	[usuario_reg] [varchar](20) NULL,
	[fecha_reg] [datetime] NULL,
	[usuario_act] [varchar](20) NULL,
	[fecha_act] [datetime] NULL,
 CONSTRAINT [PK_MODALIDADINTEGRIDAD] PRIMARY KEY CLUSTERED 
(
	[modalidadintegridad_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PERSONA]    Script Date: 21/06/2024 22:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PERSONA](
	[persona_id] [int] IDENTITY(1,1) NOT NULL,
	[nombres] [varchar](100) NULL,
	[apellido_paterno] [varchar](100) NULL,
	[apellido_materno] [varchar](100) NULL,
	[numdocumento] [varchar](20) NULL,
	[email] [varchar](50) NULL,
	[telefono_movil] [varchar](20) NULL,
	[estado] [bit] NULL,
	[usuario_reg] [varchar](20) NULL,
	[fecha_reg] [datetime] NULL,
	[usuario_act] [varchar](20) NULL,
	[fecha_act] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[persona_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TIPOSECTOR]    Script Date: 21/06/2024 22:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TIPOSECTOR](
	[tiposector_id] [int] IDENTITY(1,1) NOT NULL,
	[codigo] [varchar](10) NULL,
	[abreviatura] [varchar](50) NULL,
	[descripcion] [varchar](150) NULL,
	[estado] [bit] NULL,
	[usuario_reg] [varchar](20) NULL,
	[fecha_reg] [datetime] NULL,
	[usuario_act] [varchar](20) NULL,
	[fecha_act] [datetime] NULL,
 CONSTRAINT [PK_TIPOSECTOR] PRIMARY KEY CLUSTERED 
(
	[tiposector_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UBIGEO]    Script Date: 21/06/2024 22:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UBIGEO](
	[ubigeo_id] [int] NOT NULL,
	[ubigeo_reniec] [varchar](20) NULL,
	[ubigeo_inei] [varchar](20) NULL,
	[departamento_inei] [varchar](2) NULL,
	[departamento] [varchar](50) NULL,
	[provincia_inei] [varchar](10) NULL,
	[provincia] [varchar](50) NULL,
	[distrito] [varchar](50) NULL,
	[region] [varchar](50) NULL,
	[macroregion_inei] [varchar](50) NULL,
	[macroregion_minsa] [varchar](50) NULL,
	[iso_3166_2] [varchar](10) NULL,
	[fips] [varchar](2) NULL,
	[superficie] [float] NULL,
	[altitud] [float] NULL,
	[latitud] [float] NULL,
	[longitud] [float] NULL,
	[Frontera] [varchar](2) NULL,
 CONSTRAINT [PK_UBIGEO] PRIMARY KEY CLUSTERED 
(
	[ubigeo_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ENTIDAD] ON 
GO
INSERT [dbo].[ENTIDAD] ([entidad_id], [entidadgrupo_id], [entidadsector_id], [modalidadintegridad_id], [ubigeo_id], [numero_ruc], [codigo], [acronimo], [nombre], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (2, 5, 25, 1, 1294, N'10214458745', N'001', N'VUCE', N'Ventanilla Única de Comercio Exterior', 1, N'jjromero88', CAST(N'2024-06-18T16:34:21.147' AS DateTime), N'jjromero88', CAST(N'2024-06-18T20:37:23.720' AS DateTime))
GO
INSERT [dbo].[ENTIDAD] ([entidad_id], [entidadgrupo_id], [entidadsector_id], [modalidadintegridad_id], [ubigeo_id], [numero_ruc], [codigo], [acronimo], [nombre], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (3, 1, 1, 7, 1281, N'20131380870', N'0001', N'CCFFAA', N'COMANDO CONJUNTO DE LAS FUERZAS ARMADAS', 1, N'jjromero88', CAST(N'2024-06-18T20:16:44.520' AS DateTime), N'jjromero88', NULL)
GO
SET IDENTITY_INSERT [dbo].[ENTIDAD] OFF
GO
SET IDENTITY_INSERT [dbo].[ENTIDADGRUPO] ON 
GO
INSERT [dbo].[ENTIDADGRUPO] ([entidadgrupo_id], [codigo], [abreviatura], [descripcion], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (1, N'00001', N'Ejecutivo', N'Poder Ejecutivo', 1, N'sys', CAST(N'2024-06-11T20:44:25.650' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ENTIDADGRUPO] ([entidadgrupo_id], [codigo], [abreviatura], [descripcion], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (2, N'00002', N'PJ', N'Poder Judicial', 1, N'sys', CAST(N'2024-06-11T20:44:37.367' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ENTIDADGRUPO] ([entidadgrupo_id], [codigo], [abreviatura], [descripcion], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (3, N'00003', N'PL', N'Poder Legislativo', 1, N'sys', CAST(N'2024-06-11T20:44:49.307' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ENTIDADGRUPO] ([entidadgrupo_id], [codigo], [abreviatura], [descripcion], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (4, N'00004', N'OCA', N'Organismos Constitucionales Autonomos', 1, N'sys', CAST(N'2024-06-11T20:45:08.993' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ENTIDADGRUPO] ([entidadgrupo_id], [codigo], [abreviatura], [descripcion], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (5, N'00005', N'GR', N'Gobierno Regional', 1, N'sys', CAST(N'2024-06-11T20:45:24.660' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ENTIDADGRUPO] ([entidadgrupo_id], [codigo], [abreviatura], [descripcion], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (6, N'00006', N'GL', N'Gobierno Local', 1, N'sys', CAST(N'2024-06-17T19:20:22.327' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[ENTIDADGRUPO] OFF
GO
SET IDENTITY_INSERT [dbo].[ENTIDADSECTOR] ON 
GO
INSERT [dbo].[ENTIDADSECTOR] ([entidadsector_id], [tiposector_id], [codigo], [abreviatura], [descripcion], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (1, 1, N'00001', N'MINDEF', N'Ministerio de Defensa', 1, N'sys', CAST(N'2024-06-17T21:32:43.353' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ENTIDADSECTOR] ([entidadsector_id], [tiposector_id], [codigo], [abreviatura], [descripcion], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (2, 1, N'00002', N'MINCUL', N'Ministerio de Cultura', 1, N'sys', CAST(N'2024-06-17T21:32:43.353' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ENTIDADSECTOR] ([entidadsector_id], [tiposector_id], [codigo], [abreviatura], [descripcion], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (3, 1, N'00003', N'MINEDU', N'Ministerio de Educación', 1, N'sys', CAST(N'2024-06-17T21:32:43.353' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ENTIDADSECTOR] ([entidadsector_id], [tiposector_id], [codigo], [abreviatura], [descripcion], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (4, 1, N'00004', N'MINSA', N'Ministerio de Salud', 1, N'sys', CAST(N'2024-06-17T21:32:43.353' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ENTIDADSECTOR] ([entidadsector_id], [tiposector_id], [codigo], [abreviatura], [descripcion], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (5, 1, N'00005', N'MINAGRI', N'Ministerio de Agricultura y Riego', 1, N'sys', CAST(N'2024-06-17T21:32:43.353' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ENTIDADSECTOR] ([entidadsector_id], [tiposector_id], [codigo], [abreviatura], [descripcion], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (6, 1, N'00006', N'MIMP', N'Ministerio de la Mujer y Poblaciones Vulnerables', 1, N'sys', CAST(N'2024-06-17T21:32:43.353' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ENTIDADSECTOR] ([entidadsector_id], [tiposector_id], [codigo], [abreviatura], [descripcion], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (7, 1, N'00007', N'MINAM', N'Ministerio del Ambiente', 1, N'sys', CAST(N'2024-06-17T21:32:43.353' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ENTIDADSECTOR] ([entidadsector_id], [tiposector_id], [codigo], [abreviatura], [descripcion], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (8, 1, N'00008', N'MINCETUR', N'Ministerio de Comercio Exterior y Turismo', 1, N'sys', CAST(N'2024-06-17T21:32:43.353' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ENTIDADSECTOR] ([entidadsector_id], [tiposector_id], [codigo], [abreviatura], [descripcion], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (9, 1, N'00009', N'MEF', N'Ministerio de Economía y Finanzas', 1, N'sys', CAST(N'2024-06-17T21:32:43.353' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ENTIDADSECTOR] ([entidadsector_id], [tiposector_id], [codigo], [abreviatura], [descripcion], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (10, 1, N'00010', N'MINEM', N'Ministerio de Energía y Minas', 1, N'sys', CAST(N'2024-06-17T21:32:43.353' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ENTIDADSECTOR] ([entidadsector_id], [tiposector_id], [codigo], [abreviatura], [descripcion], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (11, 1, N'00011', N'MINJUS', N'Ministerio de Justicia y Derechos Humanos', 1, N'sys', CAST(N'2024-06-17T21:32:43.353' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ENTIDADSECTOR] ([entidadsector_id], [tiposector_id], [codigo], [abreviatura], [descripcion], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (12, 1, N'00012', N'MININTER', N'Ministerio del Interior', 1, N'sys', CAST(N'2024-06-17T21:32:43.353' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ENTIDADSECTOR] ([entidadsector_id], [tiposector_id], [codigo], [abreviatura], [descripcion], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (13, 1, N'00013', N'MTPE', N'Ministerio de Trabajo y Promoción del Empleo', 1, N'sys', CAST(N'2024-06-17T21:32:43.353' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ENTIDADSECTOR] ([entidadsector_id], [tiposector_id], [codigo], [abreviatura], [descripcion], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (14, 1, N'00014', N'MTC', N'Ministerio de Transportes y Comunicaciones', 1, N'sys', CAST(N'2024-06-17T21:32:43.353' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ENTIDADSECTOR] ([entidadsector_id], [tiposector_id], [codigo], [abreviatura], [descripcion], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (15, 1, N'00015', N'MVCS', N'Ministerio de Vivienda, Construcción y Saneamiento', 1, N'sys', CAST(N'2024-06-17T21:32:43.353' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ENTIDADSECTOR] ([entidadsector_id], [tiposector_id], [codigo], [abreviatura], [descripcion], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (16, 1, N'00016', N'MIDIS', N'Ministerio de Desarrollo e Inclusión Social', 1, N'sys', CAST(N'2024-06-17T21:32:43.353' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ENTIDADSECTOR] ([entidadsector_id], [tiposector_id], [codigo], [abreviatura], [descripcion], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (17, 1, N'00017', N'RREE', N'Ministerio de Relaciones Exteriores', 1, N'sys', CAST(N'2024-06-17T21:32:43.353' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ENTIDADSECTOR] ([entidadsector_id], [tiposector_id], [codigo], [abreviatura], [descripcion], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (18, 1, N'00018', N'PRODUCE', N'Ministerio de Producción', 1, N'sys', CAST(N'2024-06-17T21:32:43.353' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ENTIDADSECTOR] ([entidadsector_id], [tiposector_id], [codigo], [abreviatura], [descripcion], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (19, 1, N'00019', N'PCM', N'Presidencia del Consejo de Ministros', 1, N'sys', CAST(N'2024-06-17T21:32:43.353' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ENTIDADSECTOR] ([entidadsector_id], [tiposector_id], [codigo], [abreviatura], [descripcion], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (20, 1, N'00020', N'SUPERINT', N'Superintendencias (SUNAT, SUNARP, etc.)', 1, N'sys', CAST(N'2024-06-17T21:32:43.353' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ENTIDADSECTOR] ([entidadsector_id], [tiposector_id], [codigo], [abreviatura], [descripcion], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (21, 1, N'00021', N'ORGREG', N'Organismos Reguladores (OSINERGMIN, OSIPTEL, etc.)', 1, N'sys', CAST(N'2024-06-17T21:32:43.353' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ENTIDADSECTOR] ([entidadsector_id], [tiposector_id], [codigo], [abreviatura], [descripcion], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (22, 2, N'00022', N'PJ', N'Poder Judicial', 1, N'sys', CAST(N'2024-06-17T21:32:43.353' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ENTIDADSECTOR] ([entidadsector_id], [tiposector_id], [codigo], [abreviatura], [descripcion], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (23, 2, N'00023', N'MP', N'Ministerio Público', 1, N'sys', CAST(N'2024-06-17T21:32:43.353' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ENTIDADSECTOR] ([entidadsector_id], [tiposector_id], [codigo], [abreviatura], [descripcion], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (24, 2, N'00024', N'TC', N'Tribunal Constitucional', 1, N'sys', CAST(N'2024-06-17T21:32:43.353' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ENTIDADSECTOR] ([entidadsector_id], [tiposector_id], [codigo], [abreviatura], [descripcion], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (25, 2, N'00025', N'JNJ', N'Consejo Nacional de la Magistratura (ahora Junta Nacional de Justicia)', 1, N'sys', CAST(N'2024-06-17T21:32:43.353' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ENTIDADSECTOR] ([entidadsector_id], [tiposector_id], [codigo], [abreviatura], [descripcion], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (26, 2, N'00026', N'DP', N'Defensoría del Pueblo', 1, N'sys', CAST(N'2024-06-17T21:32:43.353' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ENTIDADSECTOR] ([entidadsector_id], [tiposector_id], [codigo], [abreviatura], [descripcion], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (27, 2, N'00027', N'JNE', N'Jurado Nacional de Elecciones', 1, N'sys', CAST(N'2024-06-17T21:32:43.353' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ENTIDADSECTOR] ([entidadsector_id], [tiposector_id], [codigo], [abreviatura], [descripcion], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (28, 2, N'00028', N'ONPE', N'Oficina Nacional de Procesos Electorales (ONPE)', 1, N'sys', CAST(N'2024-06-17T21:32:43.353' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ENTIDADSECTOR] ([entidadsector_id], [tiposector_id], [codigo], [abreviatura], [descripcion], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (29, 2, N'00029', N'RENIEC', N'Registro Nacional de Identificación y Estado Civil (RENIEC)', 1, N'sys', CAST(N'2024-06-17T21:32:43.353' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ENTIDADSECTOR] ([entidadsector_id], [tiposector_id], [codigo], [abreviatura], [descripcion], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (30, 3, N'00030', N'GOREA', N'Gobierno Regional de Amazonas', 1, N'sys', CAST(N'2024-06-17T21:32:43.353' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ENTIDADSECTOR] ([entidadsector_id], [tiposector_id], [codigo], [abreviatura], [descripcion], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (31, 3, N'00031', N'GOREAN', N'Gobierno Regional de Áncash', 1, N'sys', CAST(N'2024-06-17T21:32:43.353' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ENTIDADSECTOR] ([entidadsector_id], [tiposector_id], [codigo], [abreviatura], [descripcion], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (32, 3, N'00032', N'GOREAP', N'Gobierno Regional de Apurímac', 1, N'sys', CAST(N'2024-06-17T21:32:43.353' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ENTIDADSECTOR] ([entidadsector_id], [tiposector_id], [codigo], [abreviatura], [descripcion], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (33, 3, N'00033', N'GOREAR', N'Gobierno Regional de Arequipa', 1, N'sys', CAST(N'2024-06-17T21:32:43.353' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ENTIDADSECTOR] ([entidadsector_id], [tiposector_id], [codigo], [abreviatura], [descripcion], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (34, 3, N'00034', N'GOREAY', N'Gobierno Regional de Ayacucho', 1, N'sys', CAST(N'2024-06-17T21:32:43.353' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ENTIDADSECTOR] ([entidadsector_id], [tiposector_id], [codigo], [abreviatura], [descripcion], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (35, 3, N'00035', N'GORECAJ', N'Gobierno Regional de Cajamarca', 1, N'sys', CAST(N'2024-06-17T21:32:43.353' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ENTIDADSECTOR] ([entidadsector_id], [tiposector_id], [codigo], [abreviatura], [descripcion], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (36, 3, N'00036', N'GORECALL', N'Gobierno Regional del Callao', 1, N'sys', CAST(N'2024-06-17T21:32:43.353' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ENTIDADSECTOR] ([entidadsector_id], [tiposector_id], [codigo], [abreviatura], [descripcion], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (37, 3, N'00037', N'GORECU', N'Gobierno Regional de Cusco', 1, N'sys', CAST(N'2024-06-17T21:32:43.353' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ENTIDADSECTOR] ([entidadsector_id], [tiposector_id], [codigo], [abreviatura], [descripcion], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (38, 3, N'00038', N'GOREHV', N'Gobierno Regional de Huancavelica', 1, N'sys', CAST(N'2024-06-17T21:32:43.353' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ENTIDADSECTOR] ([entidadsector_id], [tiposector_id], [codigo], [abreviatura], [descripcion], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (39, 3, N'00039', N'GOREHU', N'Gobierno Regional de Huánuco', 1, N'sys', CAST(N'2024-06-17T21:32:43.353' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ENTIDADSECTOR] ([entidadsector_id], [tiposector_id], [codigo], [abreviatura], [descripcion], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (40, 3, N'00040', N'GOREIC', N'Gobierno Regional de Ica', 1, N'sys', CAST(N'2024-06-17T21:32:43.353' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ENTIDADSECTOR] ([entidadsector_id], [tiposector_id], [codigo], [abreviatura], [descripcion], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (41, 3, N'00041', N'GOREJ', N'Gobierno Regional de Junín', 1, N'sys', CAST(N'2024-06-17T21:32:43.353' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ENTIDADSECTOR] ([entidadsector_id], [tiposector_id], [codigo], [abreviatura], [descripcion], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (42, 3, N'00042', N'GORELL', N'Gobierno Regional de La Libertad', 1, N'sys', CAST(N'2024-06-17T21:32:43.353' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ENTIDADSECTOR] ([entidadsector_id], [tiposector_id], [codigo], [abreviatura], [descripcion], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (43, 3, N'00043', N'GORELAMB', N'Gobierno Regional de Lambayeque', 1, N'sys', CAST(N'2024-06-17T21:32:43.353' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ENTIDADSECTOR] ([entidadsector_id], [tiposector_id], [codigo], [abreviatura], [descripcion], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (44, 3, N'00044', N'GORELP', N'Gobierno Regional de Lima Provincias', 1, N'sys', CAST(N'2024-06-17T21:32:43.353' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ENTIDADSECTOR] ([entidadsector_id], [tiposector_id], [codigo], [abreviatura], [descripcion], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (45, 3, N'00045', N'GORELOR', N'Gobierno Regional de Loreto', 1, N'sys', CAST(N'2024-06-17T21:32:43.353' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ENTIDADSECTOR] ([entidadsector_id], [tiposector_id], [codigo], [abreviatura], [descripcion], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (46, 3, N'00046', N'GOREMD', N'Gobierno Regional de Madre de Dios', 1, N'sys', CAST(N'2024-06-17T21:32:43.353' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ENTIDADSECTOR] ([entidadsector_id], [tiposector_id], [codigo], [abreviatura], [descripcion], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (47, 3, N'00047', N'GOREMQ', N'Gobierno Regional de Moquegua', 1, N'sys', CAST(N'2024-06-17T21:32:43.353' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ENTIDADSECTOR] ([entidadsector_id], [tiposector_id], [codigo], [abreviatura], [descripcion], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (48, 3, N'00048', N'GOREPA', N'Gobierno Regional de Pasco', 1, N'sys', CAST(N'2024-06-17T21:32:43.353' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ENTIDADSECTOR] ([entidadsector_id], [tiposector_id], [codigo], [abreviatura], [descripcion], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (49, 3, N'00049', N'GOREPI', N'Gobierno Regional de Piura', 1, N'sys', CAST(N'2024-06-17T21:32:43.353' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ENTIDADSECTOR] ([entidadsector_id], [tiposector_id], [codigo], [abreviatura], [descripcion], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (50, 3, N'00050', N'GOREPU', N'Gobierno Regional de Puno', 1, N'sys', CAST(N'2024-06-17T21:32:43.353' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ENTIDADSECTOR] ([entidadsector_id], [tiposector_id], [codigo], [abreviatura], [descripcion], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (51, 3, N'00051', N'GORESM', N'Gobierno Regional de San Martín', 1, N'sys', CAST(N'2024-06-17T21:32:43.353' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ENTIDADSECTOR] ([entidadsector_id], [tiposector_id], [codigo], [abreviatura], [descripcion], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (52, 3, N'00052', N'GORETA', N'Gobierno Regional de Tacna', 1, N'sys', CAST(N'2024-06-17T21:32:43.353' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ENTIDADSECTOR] ([entidadsector_id], [tiposector_id], [codigo], [abreviatura], [descripcion], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (53, 3, N'00053', N'GORETU', N'Gobierno Regional de Tumbes', 1, N'sys', CAST(N'2024-06-17T21:32:43.353' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ENTIDADSECTOR] ([entidadsector_id], [tiposector_id], [codigo], [abreviatura], [descripcion], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (54, 3, N'00054', N'GOREUC', N'Gobierno Regional de Ucayali', 1, N'sys', CAST(N'2024-06-17T21:32:43.353' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ENTIDADSECTOR] ([entidadsector_id], [tiposector_id], [codigo], [abreviatura], [descripcion], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (55, 3, N'00055', N'GORELM', N'Gobierno Regional de Lima Metropolitana (GORE Lima)', 1, N'sys', CAST(N'2024-06-17T21:32:43.353' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[ENTIDADSECTOR] OFF
GO
SET IDENTITY_INSERT [dbo].[MODALIDADINTEGRIDAD] ON 
GO
INSERT [dbo].[MODALIDADINTEGRIDAD] ([modalidadintegridad_id], [codigo], [abreviatura], [descripcion], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (1, N'00001', NULL, N'Area Personal', 1, N'sys', CAST(N'2024-06-17T19:25:45.247' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[MODALIDADINTEGRIDAD] ([modalidadintegridad_id], [codigo], [abreviatura], [descripcion], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (2, N'00002', NULL, N'Asesor de Presidencia de Corte', 1, N'sys', CAST(N'2024-06-17T19:25:51.430' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[MODALIDADINTEGRIDAD] ([modalidadintegridad_id], [codigo], [abreviatura], [descripcion], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (3, N'00003', NULL, N'Coordinacion', 1, N'sys', CAST(N'2024-06-17T19:26:27.397' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[MODALIDADINTEGRIDAD] ([modalidadintegridad_id], [codigo], [abreviatura], [descripcion], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (4, N'00004', NULL, N'Coordinacion Ejecutiva', 1, N'sys', CAST(N'2024-06-17T19:26:31.340' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[MODALIDADINTEGRIDAD] ([modalidadintegridad_id], [codigo], [abreviatura], [descripcion], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (5, N'00005', NULL, N'Delegación a la Oficina de Administración', 1, N'sys', CAST(N'2024-06-17T19:26:58.163' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[MODALIDADINTEGRIDAD] ([modalidadintegridad_id], [codigo], [abreviatura], [descripcion], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (6, N'00006', NULL, N'Delegacion a la Oficina General de Recursos Humanos / Administración  (Entidad con ROF o MOP)', 1, N'sys', CAST(N'2024-06-17T19:27:18.993' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[MODALIDADINTEGRIDAD] ([modalidadintegridad_id], [codigo], [abreviatura], [descripcion], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (7, N'00007', NULL, N'Dirección Ejecutiva', 1, N'sys', CAST(N'2024-06-17T19:29:30.830' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[MODALIDADINTEGRIDAD] ([modalidadintegridad_id], [codigo], [abreviatura], [descripcion], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (8, N'00008', NULL, N'Equipo de Trabajo', 1, N'sys', CAST(N'2024-06-17T19:29:34.897' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[MODALIDADINTEGRIDAD] OFF
GO
SET IDENTITY_INSERT [dbo].[PERSONA] ON 
GO
INSERT [dbo].[PERSONA] ([persona_id], [nombres], [apellido_paterno], [apellido_materno], [numdocumento], [email], [telefono_movil], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (12, N'Juan Jose', N'Romero', N'Lizano', N'45338843', N'juanjor1988@pcm.gob.pe', N'963258777', 1, N'jjromero88', CAST(N'2024-06-13T20:30:27.170' AS DateTime), N'jjromero88', CAST(N'2024-06-17T22:39:35.467' AS DateTime))
GO
INSERT [dbo].[PERSONA] ([persona_id], [nombres], [apellido_paterno], [apellido_materno], [numdocumento], [email], [telefono_movil], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (13, N'Jessica', N'Alvarez', N'Arbi', N'09012254', N'jessica01@pcm.gob.pe', N'965877025', 1, N'jjromero88', CAST(N'2024-06-14T15:54:55.887' AS DateTime), NULL, CAST(N'2024-06-17T22:39:16.543' AS DateTime))
GO
INSERT [dbo].[PERSONA] ([persona_id], [nombres], [apellido_paterno], [apellido_materno], [numdocumento], [email], [telefono_movil], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (14, N'gustavo', N'Alcantara', N'Tejada', N'47488888', N'gustavo292@gmail.com', N'9890000', 0, N'jjromero88', CAST(N'2024-06-17T14:39:21.797' AS DateTime), N'jjromero88', NULL)
GO
INSERT [dbo].[PERSONA] ([persona_id], [nombres], [apellido_paterno], [apellido_materno], [numdocumento], [email], [telefono_movil], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (15, N'Ernesto', N'Garcia', N'Sanchez', N'45874458', N'ernestog001@pcm.gob.pe', N'965001452', 0, N'jjromero88', CAST(N'2024-06-17T18:32:54.100' AS DateTime), N'jjromero88', NULL)
GO
INSERT [dbo].[PERSONA] ([persona_id], [nombres], [apellido_paterno], [apellido_materno], [numdocumento], [email], [telefono_movil], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (16, N'Andrea', N'Loyola', N'Tejada', N'47388829', N'andrealoyola91@gmail.com', N'920020001', 1, N'jjromero88', CAST(N'2024-06-17T22:57:09.923' AS DateTime), N'jjromero88', CAST(N'2024-06-21T22:42:57.697' AS DateTime))
GO
INSERT [dbo].[PERSONA] ([persona_id], [nombres], [apellido_paterno], [apellido_materno], [numdocumento], [email], [telefono_movil], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (17, N'Rodrigo', N'Lopez', N'Hidalgo', N'47856669', N'rodrigolh99@gmail.com', N'903999381', 1, N'jjromero88', CAST(N'2024-06-17T22:58:07.700' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PERSONA] ([persona_id], [nombres], [apellido_paterno], [apellido_materno], [numdocumento], [email], [telefono_movil], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (18, N'Lucia', N'Pereda', N'Benitez', N'45874447', N'lucia90292@pcm.gob.pe', N'960245874', 1, N'jjromero88', CAST(N'2024-06-17T22:58:39.650' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PERSONA] ([persona_id], [nombres], [apellido_paterno], [apellido_materno], [numdocumento], [email], [telefono_movil], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (19, N'Luis Alberto', N'Pinedo', N'Rodriguez', N'48883929', N'luis2102@gmail.com', N'965877005', 1, N'jjromero88', CAST(N'2024-06-17T22:59:25.923' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[PERSONA] OFF
GO
SET IDENTITY_INSERT [dbo].[TIPOSECTOR] ON 
GO
INSERT [dbo].[TIPOSECTOR] ([tiposector_id], [codigo], [abreviatura], [descripcion], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (1, N'00001', N'Ejecutivo', N'Ejecutivo', 1, N'sys', CAST(N'2024-06-17T19:33:57.210' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[TIPOSECTOR] ([tiposector_id], [codigo], [abreviatura], [descripcion], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (2, N'00002', N'Judicial', N'Judicial', 1, N'sys', CAST(N'2024-06-17T19:33:59.913' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[TIPOSECTOR] ([tiposector_id], [codigo], [abreviatura], [descripcion], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (3, N'00003', N'Región', N'Región', 1, N'sys', CAST(N'2024-06-17T19:34:01.930' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[TIPOSECTOR] OFF
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1, N'010101', N'010101', N'01', N'AMAZONAS', N'0101', N'CHACHAPOYAS', N'CHACHAPOYAS', N'AMAZONAS', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-AMA', N'01', 154, 2338, -6.2294, -77.8728, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (2, N'010102', N'010102', N'01', N'AMAZONAS', N'0101', N'CHACHAPOYAS', N'ASUNCION', N'AMAZONAS', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-AMA', N'01', 26, 2823, -6.0325, -77.7108, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (3, N'010103', N'010103', N'01', N'AMAZONAS', N'0101', N'CHACHAPOYAS', N'BALSAS', N'AMAZONAS', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-AMA', N'01', 357, 859, -6.8358, -78.0197, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (4, N'010104', N'010104', N'01', N'AMAZONAS', N'0101', N'CHACHAPOYAS', N'CHETO', N'AMAZONAS', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-AMA', N'01', 57, 2143, -6.2556, -77.7008, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (5, N'010105', N'010105', N'01', N'AMAZONAS', N'0101', N'CHACHAPOYAS', N'CHILIQUIN', N'AMAZONAS', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-AMA', N'01', 143, 2677, -6.0783, -77.7375, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (6, N'010106', N'010106', N'01', N'AMAZONAS', N'0101', N'CHACHAPOYAS', N'CHUQUIBAMBA', N'AMAZONAS', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-AMA', N'01', 279, 2803, -6.935, -77.8542, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (7, N'010107', N'010107', N'01', N'AMAZONAS', N'0101', N'CHACHAPOYAS', N'GRANADA', N'AMAZONAS', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-AMA', N'01', 181, 3041, -6.1064, -77.6286, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (8, N'010108', N'010108', N'01', N'AMAZONAS', N'0101', N'CHACHAPOYAS', N'HUANCAS', N'AMAZONAS', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-AMA', N'01', 49, 2591, -6.1736, -77.8644, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (9, N'010109', N'010109', N'01', N'AMAZONAS', N'0101', N'CHACHAPOYAS', N'LA JALCA', N'AMAZONAS', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-AMA', N'01', 380, 2869, -6.4847, -77.815, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (10, N'010110', N'010110', N'01', N'AMAZONAS', N'0101', N'CHACHAPOYAS', N'LEIMEBAMBA', N'AMAZONAS', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-AMA', N'01', 373, 2226, -6.7075, -77.8039, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (11, N'010111', N'010111', N'01', N'AMAZONAS', N'0101', N'CHACHAPOYAS', N'LEVANTO', N'AMAZONAS', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-AMA', N'01', 78, 2681, -6.3078, -77.8992, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (12, N'010112', N'010112', N'01', N'AMAZONAS', N'0101', N'CHACHAPOYAS', N'MAGDALENA', N'AMAZONAS', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-AMA', N'01', 135, 1892, -6.3731, -77.9017, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (13, N'010113', N'010113', N'01', N'AMAZONAS', N'0101', N'CHACHAPOYAS', N'MARISCAL CASTILLA', N'AMAZONAS', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-AMA', N'01', 84, 2210, -6.5944, -77.8086, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (14, N'010114', N'010114', N'01', N'AMAZONAS', N'0101', N'CHACHAPOYAS', N'MOLINOPAMPA', N'AMAZONAS', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-AMA', N'01', 334, 2405, -6.2092, -77.6692, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (15, N'010115', N'010115', N'01', N'AMAZONAS', N'0101', N'CHACHAPOYAS', N'MONTEVIDEO', N'AMAZONAS', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-AMA', N'01', 119, 2421, -6.6181, -77.8022, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (16, N'010116', N'010116', N'01', N'AMAZONAS', N'0101', N'CHACHAPOYAS', N'OLLEROS', N'AMAZONAS', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-AMA', N'01', 125, 3053, -6.0239, -77.6764, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (17, N'010117', N'010117', N'01', N'AMAZONAS', N'0101', N'CHACHAPOYAS', N'QUINJALCA', N'AMAZONAS', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-AMA', N'01', 92, 3151, -6.0914, -77.6786, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (18, N'010118', N'010118', N'01', N'AMAZONAS', N'0101', N'CHACHAPOYAS', N'SAN FRANCISCO DE DAGUAS', N'AMAZONAS', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-AMA', N'01', 47, 2254, -6.2292, -77.74, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (19, N'010119', N'010119', N'01', N'AMAZONAS', N'0101', N'CHACHAPOYAS', N'SAN ISIDRO DE MAINO', N'AMAZONAS', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-AMA', N'01', 102, 2339, -6.3372, -77.8806, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (20, N'010120', N'010120', N'01', N'AMAZONAS', N'0101', N'CHACHAPOYAS', N'SOLOCO', N'AMAZONAS', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-AMA', N'01', 84, 2387, -6.2606, -77.7442, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (21, N'010121', N'010121', N'01', N'AMAZONAS', N'0101', N'CHACHAPOYAS', N'SONCHE', N'AMAZONAS', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-AMA', N'01', 113, 2089, -6.2189, -77.7753, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (22, N'010205', N'010201', N'01', N'AMAZONAS', N'0102', N'BAGUA', N'BAGUA', N'AMAZONAS', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-AMA', N'01', 151, 408, -5.6389, -78.5311, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (23, N'010202', N'010202', N'01', N'AMAZONAS', N'0102', N'BAGUA', N'ARAMANGO', N'AMAZONAS', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-AMA', N'01', 809, 502, -5.4164, -78.4378, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (24, N'010203', N'010203', N'01', N'AMAZONAS', N'0102', N'BAGUA', N'COPALLIN', N'AMAZONAS', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-AMA', N'01', 99, 693, -5.675, -78.4231, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (25, N'010204', N'010204', N'01', N'AMAZONAS', N'0102', N'BAGUA', N'EL PARCO', N'AMAZONAS', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-AMA', N'01', 18, 626, -5.625, -78.4753, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (26, N'010206', N'010205', N'01', N'AMAZONAS', N'0102', N'BAGUA', N'IMAZA', N'AMAZONAS', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-AMA', N'01', 4431, 317, -5.1636, -78.2889, N'SI')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (27, N'010201', N'010206', N'01', N'AMAZONAS', N'0102', N'BAGUA', N'LA PECA', N'AMAZONAS', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-AMA', N'01', 144, 892, -5.6119, -78.4369, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (28, N'010301', N'010301', N'01', N'AMAZONAS', N'0103', N'BONGARA', N'JUMBILLA', N'AMAZONAS', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-AMA', N'01', 154, 2081, -5.9044, -77.7978, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (29, N'010304', N'010302', N'01', N'AMAZONAS', N'0103', N'BONGARA', N'CHISQUILLA', N'AMAZONAS', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-AMA', N'01', 175, 2057, -5.8975, -77.7861, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (30, N'010305', N'010303', N'01', N'AMAZONAS', N'0103', N'BONGARA', N'CHURUJA', N'AMAZONAS', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-AMA', N'01', 33, 1399, -6.0194, -77.9519, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (31, N'010302', N'010304', N'01', N'AMAZONAS', N'0103', N'BONGARA', N'COROSHA', N'AMAZONAS', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-AMA', N'01', 46, 2297, -5.8433, -77.8225, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (32, N'010303', N'010305', N'01', N'AMAZONAS', N'0103', N'BONGARA', N'CUISPES', N'AMAZONAS', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-AMA', N'01', 111, 1912, -5.9283, -77.9461, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (33, N'010306', N'010306', N'01', N'AMAZONAS', N'0103', N'BONGARA', N'FLORIDA', N'AMAZONAS', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-AMA', N'01', 203, 2251, -5.8261, -77.9694, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (34, N'010312', N'010307', N'01', N'AMAZONAS', N'0103', N'BONGARA', N'JAZAN', N'AMAZONAS', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-AMA', N'01', 89, 1342, -5.9414, -77.9772, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (35, N'010307', N'010308', N'01', N'AMAZONAS', N'0103', N'BONGARA', N'RECTA', N'AMAZONAS', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-AMA', N'01', 25, 2166, -5.9178, -77.7889, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (36, N'010308', N'010309', N'01', N'AMAZONAS', N'0103', N'BONGARA', N'SAN CARLOS', N'AMAZONAS', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-AMA', N'01', 101, 1942, -5.9661, -77.9453, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (37, N'010309', N'010310', N'01', N'AMAZONAS', N'0103', N'BONGARA', N'SHIPASBAMBA', N'AMAZONAS', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-AMA', N'01', 127, 1668, -5.9106, -77.9806, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (38, N'010310', N'010311', N'01', N'AMAZONAS', N'0103', N'BONGARA', N'VALERA', N'AMAZONAS', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-AMA', N'01', 90, 1928, -6.0428, -77.9192, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (39, N'010311', N'010312', N'01', N'AMAZONAS', N'0103', N'BONGARA', N'YAMBRASBAMBA', N'AMAZONAS', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-AMA', N'01', 1716, 1887, -5.7353, -77.925, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (40, N'010601', N'010401', N'01', N'AMAZONAS', N'0104', N'CONDORCANQUI', N'NIEVA', N'AMAZONAS', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-AMA', N'01', 4482, 189, -4.5922, -77.8644, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (41, N'010603', N'010402', N'01', N'AMAZONAS', N'0104', N'CONDORCANQUI', N'EL CENEPA', N'AMAZONAS', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-AMA', N'01', 5458, 253, -4.4556, -78.1589, N'SI')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (42, N'010602', N'010403', N'01', N'AMAZONAS', N'0104', N'CONDORCANQUI', N'RIO SANTIAGO', N'AMAZONAS', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-AMA', N'01', 8035, 190, -4.0158, -77.7608, N'SI')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (43, N'010401', N'010501', N'01', N'AMAZONAS', N'0105', N'LUYA', N'LAMUD', N'AMAZONAS', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-AMA', N'01', 69, 2328, -6.1392, -77.9522, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (44, N'010402', N'010502', N'01', N'AMAZONAS', N'0105', N'LUYA', N'CAMPORREDONDO', N'AMAZONAS', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-AMA', N'01', 376, 1748, -6.2133, -78.32, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (45, N'010403', N'010503', N'01', N'AMAZONAS', N'0105', N'LUYA', N'COCABAMBA', N'AMAZONAS', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-AMA', N'01', 356, 2273, -6.6142, -78.005, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (46, N'010404', N'010504', N'01', N'AMAZONAS', N'0105', N'LUYA', N'COLCAMAR', N'AMAZONAS', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-AMA', N'01', 107, 2355, -6.2994, -77.9731, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (47, N'010405', N'010505', N'01', N'AMAZONAS', N'0105', N'LUYA', N'CONILA', N'AMAZONAS', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-AMA', N'01', 256, 2767, -6.1592, -78.1419, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (48, N'010406', N'010506', N'01', N'AMAZONAS', N'0105', N'LUYA', N'INGUILPATA', N'AMAZONAS', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-AMA', N'01', 118, 2380, -6.2394, -77.9539, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (49, N'010407', N'010507', N'01', N'AMAZONAS', N'0105', N'LUYA', N'LONGUITA', N'AMAZONAS', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-AMA', N'01', 58, 2799, -6.4136, -77.9683, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (50, N'010408', N'010508', N'01', N'AMAZONAS', N'0105', N'LUYA', N'LONYA CHICO', N'AMAZONAS', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-AMA', N'01', 84, 2329, -6.2297, -77.955, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (51, N'010409', N'010509', N'01', N'AMAZONAS', N'0105', N'LUYA', N'LUYA', N'AMAZONAS', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-AMA', N'01', 91, 2359, -6.1642, -77.9442, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (52, N'010410', N'010510', N'01', N'AMAZONAS', N'0105', N'LUYA', N'LUYA VIEJO', N'AMAZONAS', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-AMA', N'01', 74, 2924, -6.1275, -78.085, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (53, N'010411', N'010511', N'01', N'AMAZONAS', N'0105', N'LUYA', N'MARIA', N'AMAZONAS', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-AMA', N'01', 80, 2757, -6.4289, -77.9608, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (54, N'010412', N'010512', N'01', N'AMAZONAS', N'0105', N'LUYA', N'OCALLI', N'AMAZONAS', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-AMA', N'01', 177, 1757, -6.2353, -78.2664, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (55, N'010413', N'010513', N'01', N'AMAZONAS', N'0105', N'LUYA', N'OCUMAL', N'AMAZONAS', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-AMA', N'01', 236, 1898, -6.2825, -78.2108, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (56, N'010414', N'010514', N'01', N'AMAZONAS', N'0105', N'LUYA', N'PISUQUIA', N'AMAZONAS', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-AMA', N'01', 307, 2049, -6.4533, -78.0919, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (57, N'010423', N'010515', N'01', N'AMAZONAS', N'0105', N'LUYA', N'PROVIDENCIA', N'AMAZONAS', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-AMA', N'01', 71, 1784, -6.2972, -78.2408, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (58, N'010415', N'010516', N'01', N'AMAZONAS', N'0105', N'LUYA', N'SAN CRISTOBAL', N'AMAZONAS', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-AMA', N'01', 33, 2636, -6.1017, -77.9597, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (59, N'010416', N'010517', N'01', N'AMAZONAS', N'0105', N'LUYA', N'SAN FRANCISCO DEL YESO', N'AMAZONAS', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-AMA', N'01', 114, 2404, -6.6469, -77.8117, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (60, N'010417', N'010518', N'01', N'AMAZONAS', N'0105', N'LUYA', N'SAN JERONIMO', N'AMAZONAS', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-AMA', N'01', 215, 2498, -6.0597, -77.9744, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (61, N'010418', N'010519', N'01', N'AMAZONAS', N'0105', N'LUYA', N'SAN JUAN DE LOPECANCHA', N'AMAZONAS', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-AMA', N'01', 88, 2164, -6.4964, -77.8619, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (62, N'010419', N'010520', N'01', N'AMAZONAS', N'0105', N'LUYA', N'SANTA CATALINA', N'AMAZONAS', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-AMA', N'01', 126, 2574, -6.1136, -78.0608, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (63, N'010420', N'010521', N'01', N'AMAZONAS', N'0105', N'LUYA', N'SANTO TOMAS', N'AMAZONAS', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-AMA', N'01', 85, 2837, -6.5725, -77.8658, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (64, N'010421', N'010522', N'01', N'AMAZONAS', N'0105', N'LUYA', N'TINGO', N'AMAZONAS', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-AMA', N'01', 103, 1800, -6.3797, -77.9058, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (65, N'010422', N'010523', N'01', N'AMAZONAS', N'0105', N'LUYA', N'TRITA', N'AMAZONAS', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-AMA', N'01', 13, 2888, -6.1519, -77.9808, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (66, N'010501', N'010601', N'01', N'AMAZONAS', N'0106', N'RODRIGUEZ DE MENDOZA', N'SAN NICOLAS', N'AMAZONAS', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-AMA', N'01', 206, 1616, -6.3953, -77.4822, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (67, N'010503', N'010602', N'01', N'AMAZONAS', N'0106', N'RODRIGUEZ DE MENDOZA', N'CHIRIMOTO', N'AMAZONAS', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-AMA', N'01', 153, 1663, -6.5231, -77.4425, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (68, N'010502', N'010603', N'01', N'AMAZONAS', N'0106', N'RODRIGUEZ DE MENDOZA', N'COCHAMAL', N'AMAZONAS', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-AMA', N'01', 199, 1720, -6.4075, -77.5853, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (69, N'010504', N'010604', N'01', N'AMAZONAS', N'0106', N'RODRIGUEZ DE MENDOZA', N'HUAMBO', N'AMAZONAS', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-AMA', N'01', 100, 1731, -6.4311, -77.5367, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (70, N'010505', N'010605', N'01', N'AMAZONAS', N'0106', N'RODRIGUEZ DE MENDOZA', N'LIMABAMBA', N'AMAZONAS', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-AMA', N'01', 318, 1677, -6.4981, -77.4989, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (71, N'010506', N'010606', N'01', N'AMAZONAS', N'0106', N'RODRIGUEZ DE MENDOZA', N'LONGAR', N'AMAZONAS', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-AMA', N'01', 66, 1623, -6.3858, -77.5467, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (72, N'010508', N'010607', N'01', N'AMAZONAS', N'0106', N'RODRIGUEZ DE MENDOZA', N'MARISCAL BENAVIDES', N'AMAZONAS', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-AMA', N'01', 176, 1592, -6.3861, -77.5044, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (73, N'010507', N'010608', N'01', N'AMAZONAS', N'0106', N'RODRIGUEZ DE MENDOZA', N'MILPUC', N'AMAZONAS', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-AMA', N'01', 27, 1665, -6.5, -77.4364, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (74, N'010509', N'010609', N'01', N'AMAZONAS', N'0106', N'RODRIGUEZ DE MENDOZA', N'OMIA', N'AMAZONAS', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-AMA', N'01', 175, 1368, -6.4678, -77.3956, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (75, N'010510', N'010610', N'01', N'AMAZONAS', N'0106', N'RODRIGUEZ DE MENDOZA', N'SANTA ROSA', N'AMAZONAS', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-AMA', N'01', 34, 1770, -6.4536, -77.4553, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (76, N'010511', N'010611', N'01', N'AMAZONAS', N'0106', N'RODRIGUEZ DE MENDOZA', N'TOTORA', N'AMAZONAS', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-AMA', N'01', 6, 1674, -6.4931, -77.4717, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (77, N'010512', N'010612', N'01', N'AMAZONAS', N'0106', N'RODRIGUEZ DE MENDOZA', N'VISTA ALEGRE', N'AMAZONAS', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-AMA', N'01', 899, 1504, -6.1508, -77.3039, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (78, N'010701', N'010701', N'01', N'AMAZONAS', N'0107', N'UTCUBAMBA', N'BAGUA GRANDE', N'AMAZONAS', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-AMA', N'01', 747, 444, -5.7547, -78.4428, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (79, N'010702', N'010702', N'01', N'AMAZONAS', N'0107', N'UTCUBAMBA', N'CAJARURO', N'AMAZONAS', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-AMA', N'01', 1746, 469, -5.7364, -78.4267, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (80, N'010703', N'010703', N'01', N'AMAZONAS', N'0107', N'UTCUBAMBA', N'CUMBA', N'AMAZONAS', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-AMA', N'01', 293, 477, -5.9356, -78.6636, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (81, N'010704', N'010704', N'01', N'AMAZONAS', N'0107', N'UTCUBAMBA', N'EL MILAGRO', N'AMAZONAS', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-AMA', N'01', 314, 392, -5.6378, -78.5583, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (82, N'010705', N'010705', N'01', N'AMAZONAS', N'0107', N'UTCUBAMBA', N'JAMALCA', N'AMAZONAS', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-AMA', N'01', 358, 1184, -5.8942, -78.2378, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (83, N'010706', N'010706', N'01', N'AMAZONAS', N'0107', N'UTCUBAMBA', N'LONYA GRANDE', N'AMAZONAS', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-AMA', N'01', 328, 1269, -6.0964, -78.4225, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (84, N'010707', N'010707', N'01', N'AMAZONAS', N'0107', N'UTCUBAMBA', N'YAMON', N'AMAZONAS', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-AMA', N'01', 58, 1052, -6.0508, -78.5289, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (85, N'020101', N'020101', N'02', N'ANCASH', N'0201', N'HUARAZ', N'HUARAZ', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 433, 3073, -9.5297, -77.5292, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (86, N'020103', N'020102', N'02', N'ANCASH', N'0201', N'HUARAZ', N'COCHABAMBA', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 136, 2135, -9.495, -77.8594, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (87, N'020104', N'020103', N'02', N'ANCASH', N'0201', N'HUARAZ', N'COLCABAMBA', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 51, 3154, -9.5947, -77.8086, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (88, N'020105', N'020104', N'02', N'ANCASH', N'0201', N'HUARAZ', N'HUANCHAY', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 209, 2592, -9.7236, -77.8186, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (89, N'020102', N'020105', N'02', N'ANCASH', N'0201', N'HUARAZ', N'INDEPENDENCIA', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 343, 3047, -9.5144, -77.5325, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (90, N'020106', N'020106', N'02', N'ANCASH', N'0201', N'HUARAZ', N'JANGAS', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 60, 2824, -9.4006, -77.5775, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (91, N'020107', N'020107', N'02', N'ANCASH', N'0201', N'HUARAZ', N'LA LIBERTAD', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 164, 3343, -9.6331, -77.7414, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (92, N'020108', N'020108', N'02', N'ANCASH', N'0201', N'HUARAZ', N'OLLEROS', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 223, 3443, -9.6667, -77.4656, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (93, N'020109', N'020109', N'02', N'ANCASH', N'0201', N'HUARAZ', N'PAMPAS', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 358, 3698, -9.6553, -77.8261, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (94, N'020110', N'020110', N'02', N'ANCASH', N'0201', N'HUARAZ', N'PARIACOTO', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 163, 1264, -9.5594, -77.8906, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (95, N'020111', N'020111', N'02', N'ANCASH', N'0201', N'HUARAZ', N'PIRA', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 244, 3602, -9.5811, -77.7072, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (96, N'020112', N'020112', N'02', N'ANCASH', N'0201', N'HUARAZ', N'TARICA', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 110, 2832, -9.3936, -77.575, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (97, N'020201', N'020201', N'02', N'ANCASH', N'0202', N'AIJA', N'AIJA', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 160, 3421, -9.7803, -77.6106, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (98, N'020203', N'020202', N'02', N'ANCASH', N'0202', N'AIJA', N'CORIS', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 267, 2903, -9.8206, -77.7194, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (99, N'020205', N'020203', N'02', N'ANCASH', N'0202', N'AIJA', N'HUACLLAN', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 38, 3020, -9.7981, -77.6753, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (100, N'020206', N'020204', N'02', N'ANCASH', N'0202', N'AIJA', N'LA MERCED', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 153, 3311, -9.7356, -77.6161, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (101, N'020208', N'020205', N'02', N'ANCASH', N'0202', N'AIJA', N'SUCCHA', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 79, 3167, -9.8231, -77.6497, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (102, N'021601', N'020301', N'02', N'ANCASH', N'0203', N'ANTONIO RAYMONDI', N'LLAMELLIN', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 91, 3400, -9.1008, -77.0169, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (103, N'021602', N'020302', N'02', N'ANCASH', N'0203', N'ANTONIO RAYMONDI', N'ACZO', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 69, 2680, -9.1519, -76.9889, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (104, N'021603', N'020303', N'02', N'ANCASH', N'0203', N'ANTONIO RAYMONDI', N'CHACCHO', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 74, 3371, -9.0597, -77.0583, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (105, N'021604', N'020304', N'02', N'ANCASH', N'0203', N'ANTONIO RAYMONDI', N'CHINGAS', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 49, 2866, -9.1186, -76.9919, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (106, N'021605', N'020305', N'02', N'ANCASH', N'0203', N'ANTONIO RAYMONDI', N'MIRGAS', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 176, 3147, -9.0786, -77.0925, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (107, N'021606', N'020306', N'02', N'ANCASH', N'0203', N'ANTONIO RAYMONDI', N'SAN JUAN DE RONTOY', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 103, 3503, -9.1753, -77.0028, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (108, N'021801', N'020401', N'02', N'ANCASH', N'0204', N'ASUNCION', N'CHACAS', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 448, 3387, -9.1622, -77.3658, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (109, N'021802', N'020402', N'02', N'ANCASH', N'0204', N'ASUNCION', N'ACOCHACA', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 81, 2864, -9.1147, -77.3683, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (110, N'020301', N'020501', N'02', N'ANCASH', N'0205', N'BOLOGNESI', N'CHIQUIAN', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 184, 3410, -10.1519, -77.1564, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (111, N'020302', N'020502', N'02', N'ANCASH', N'0205', N'BOLOGNESI', N'ABELARDO PARDO LEZAMETA', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 11, 2108, -10.2992, -77.1464, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (112, N'020321', N'020503', N'02', N'ANCASH', N'0205', N'BOLOGNESI', N'ANTONIO RAYMONDI', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 119, 2139, -10.1572, -77.4706, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (113, N'020304', N'020504', N'02', N'ANCASH', N'0205', N'BOLOGNESI', N'AQUIA', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 435, 3356, -10.0744, -77.145, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (114, N'020305', N'020505', N'02', N'ANCASH', N'0205', N'BOLOGNESI', N'CAJACAY', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 193, 2616, -10.1553, -77.4397, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (115, N'020322', N'020506', N'02', N'ANCASH', N'0205', N'BOLOGNESI', N'CANIS', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 19, 2465, -10.3389, -77.1689, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (116, N'020323', N'020507', N'02', N'ANCASH', N'0205', N'BOLOGNESI', N'COLQUIOC', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 275, 772, -10.3122, -77.6153, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (117, N'020325', N'020508', N'02', N'ANCASH', N'0205', N'BOLOGNESI', N'HUALLANCA', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 873, 3563, -9.8994, -76.9417, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (118, N'020311', N'020509', N'02', N'ANCASH', N'0205', N'BOLOGNESI', N'HUASTA', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 388, 3382, -10.1233, -77.1467, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (119, N'020310', N'020510', N'02', N'ANCASH', N'0205', N'BOLOGNESI', N'HUAYLLACAYAN', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 128, 3287, -10.245, -77.4347, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (120, N'020324', N'020511', N'02', N'ANCASH', N'0205', N'BOLOGNESI', N'LA PRIMAVERA', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 69, 2658, -10.3356, -77.1253, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (121, N'020313', N'020512', N'02', N'ANCASH', N'0205', N'BOLOGNESI', N'MANGAS', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 116, 3492, -10.3694, -77.1033, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (122, N'020315', N'020513', N'02', N'ANCASH', N'0205', N'BOLOGNESI', N'PACLLON', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 212, 3296, -10.2344, -77.0717, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (123, N'020317', N'020514', N'02', N'ANCASH', N'0205', N'BOLOGNESI', N'SAN MIGUEL DE CORPANQUI', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 44, 3405, -10.285, -77.1989, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (124, N'020320', N'020515', N'02', N'ANCASH', N'0205', N'BOLOGNESI', N'TICLLOS', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 89, 3665, -10.2531, -77.1908, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (125, N'020401', N'020601', N'02', N'ANCASH', N'0206', N'CARHUAZ', N'CARHUAZ', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 195, 2663, -9.2814, -77.6467, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (126, N'020402', N'020602', N'02', N'ANCASH', N'0206', N'CARHUAZ', N'ACOPAMPA', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 14, 2692, -9.2947, -77.6253, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (127, N'020403', N'020603', N'02', N'ANCASH', N'0206', N'CARHUAZ', N'AMASHCA', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 12, 2905, -9.2392, -77.6467, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (128, N'020404', N'020604', N'02', N'ANCASH', N'0206', N'CARHUAZ', N'ANTA', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 41, 2800, -9.3578, -77.5989, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (129, N'020405', N'020605', N'02', N'ANCASH', N'0206', N'CARHUAZ', N'ATAQUERO', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 47, 2749, -9.2622, -77.6917, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (130, N'020406', N'020606', N'02', N'ANCASH', N'0206', N'CARHUAZ', N'MARCARA', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 157, 2767, -9.3228, -77.6036, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (131, N'020407', N'020607', N'02', N'ANCASH', N'0206', N'CARHUAZ', N'PARIAHUANCA', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 12, 2830, -9.3653, -77.5808, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (132, N'020408', N'020608', N'02', N'ANCASH', N'0206', N'CARHUAZ', N'SAN MIGUEL DE ACO', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 134, 2956, -9.3683, -77.5644, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (133, N'020409', N'020609', N'02', N'ANCASH', N'0206', N'CARHUAZ', N'SHILLA', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 130, 3036, -9.2317, -77.625, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (134, N'020410', N'020610', N'02', N'ANCASH', N'0206', N'CARHUAZ', N'TINCO', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 15, 2606, -9.2708, -77.6775, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (135, N'020411', N'020611', N'02', N'ANCASH', N'0206', N'CARHUAZ', N'YUNGAR', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 46, 2836, -9.3775, -77.5922, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (136, N'021701', N'020701', N'02', N'ANCASH', N'0207', N'CARLOS FERMIN FITZCARRALD', N'SAN LUIS', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 256, 3145, -9.0942, -77.3289, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (137, N'021703', N'020702', N'02', N'ANCASH', N'0207', N'CARLOS FERMIN FITZCARRALD', N'SAN NICOLAS', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 197, 2890, -8.9758, -77.1892, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (138, N'021702', N'020703', N'02', N'ANCASH', N'0207', N'CARLOS FERMIN FITZCARRALD', N'YAUYA', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 170, 3257, -8.9911, -77.2914, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (139, N'020501', N'020801', N'02', N'ANCASH', N'0208', N'CASMA', N'CASMA', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 1205, 59, -9.4758, -78.3064, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (140, N'020502', N'020802', N'02', N'ANCASH', N'0208', N'CASMA', N'BUENA VISTA ALTA', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 477, 225, -9.4325, -78.2069, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (141, N'020503', N'020803', N'02', N'ANCASH', N'0208', N'CASMA', N'COMANDANTE NOEL', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 222, 14, -9.4625, -78.3847, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (142, N'020505', N'020804', N'02', N'ANCASH', N'0208', N'CASMA', N'YAUTAN', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 357, 831, -9.5114, -77.9964, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (143, N'020601', N'020901', N'02', N'ANCASH', N'0209', N'CORONGO', N'CORONGO', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 143, 3172, -8.5708, -77.8989, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (144, N'020602', N'020902', N'02', N'ANCASH', N'0209', N'CORONGO', N'ACO', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 57, 3118, -8.5231, -77.8778, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (145, N'020603', N'020903', N'02', N'ANCASH', N'0209', N'CORONGO', N'BAMBAS', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 151, 2943, -8.6025, -77.9969, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (146, N'020604', N'020904', N'02', N'ANCASH', N'0209', N'CORONGO', N'CUSCA', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 412, 3196, -8.5133, -77.8647, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (147, N'020605', N'020905', N'02', N'ANCASH', N'0209', N'CORONGO', N'LA PAMPA', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 94, 1803, -8.6611, -77.9008, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (148, N'020606', N'020906', N'02', N'ANCASH', N'0209', N'CORONGO', N'YANAC', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 46, 2877, -8.6186, -77.8647, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (149, N'020607', N'020907', N'02', N'ANCASH', N'0209', N'CORONGO', N'YUPAN', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 86, 2781, -8.6144, -77.9686, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (150, N'020801', N'021001', N'02', N'ANCASH', N'0210', N'HUARI', N'HUARI', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 399, 3114, -9.3472, -77.1708, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (151, N'020816', N'021002', N'02', N'ANCASH', N'0210', N'HUARI', N'ANRA', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 80, 3197, -9.2347, -76.9264, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (152, N'020802', N'021003', N'02', N'ANCASH', N'0210', N'HUARI', N'CAJAY', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 159, 3175, -9.3258, -77.1575, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (153, N'020803', N'021004', N'02', N'ANCASH', N'0210', N'HUARI', N'CHAVIN DE HUANTAR', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 434, 3115, -9.5886, -77.1783, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (154, N'020804', N'021005', N'02', N'ANCASH', N'0210', N'HUARI', N'HUACACHI', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 87, 3498, -9.3156, -76.9386, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (155, N'020806', N'021006', N'02', N'ANCASH', N'0210', N'HUARI', N'HUACCHIS', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 72, 3491, -9.2006, -76.7869, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (156, N'020805', N'021007', N'02', N'ANCASH', N'0210', N'HUARI', N'HUACHIS', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 154, 3275, -9.41, -77.1, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (157, N'020807', N'021008', N'02', N'ANCASH', N'0210', N'HUARI', N'HUANTAR', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 156, 3363, -9.4519, -77.1767, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (158, N'020808', N'021009', N'02', N'ANCASH', N'0210', N'HUARI', N'MASIN', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 75, 2547, -9.3658, -77.0964, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (159, N'020809', N'021010', N'02', N'ANCASH', N'0210', N'HUARI', N'PAUCAS', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 135, 3433, -9.1525, -76.8994, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (160, N'020810', N'021011', N'02', N'ANCASH', N'0210', N'HUARI', N'PONTO', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 118, 3142, -9.3261, -77.0044, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (161, N'020811', N'021012', N'02', N'ANCASH', N'0210', N'HUARI', N'RAHUAPAMPA', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 9, 2521, -9.3592, -77.0786, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (162, N'020812', N'021013', N'02', N'ANCASH', N'0210', N'HUARI', N'RAPAYAN', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 143, 3233, -9.2025, -76.7594, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (163, N'020813', N'021014', N'02', N'ANCASH', N'0210', N'HUARI', N'SAN MARCOS', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 557, 2988, -9.5242, -77.1569, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (164, N'020814', N'021015', N'02', N'ANCASH', N'0210', N'HUARI', N'SAN PEDRO DE CHANA', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 139, 3439, -9.4031, -77.0111, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (165, N'020815', N'021016', N'02', N'ANCASH', N'0210', N'HUARI', N'UCO', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 54, 3347, -9.1883, -76.9283, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (166, N'021901', N'021101', N'02', N'ANCASH', N'0211', N'HUARMEY', N'HUARMEY', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 2894, 30, -10.0689, -78.1517, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (167, N'021902', N'021102', N'02', N'ANCASH', N'0211', N'HUARMEY', N'COCHAPETI', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 100, 3529, -9.9872, -77.6461, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (168, N'021905', N'021103', N'02', N'ANCASH', N'0211', N'HUARMEY', N'CULEBRAS', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 630, 41, -9.9503, -78.2222, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (169, N'021903', N'021104', N'02', N'ANCASH', N'0211', N'HUARMEY', N'HUAYAN', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 59, 2702, -9.8753, -77.7083, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (170, N'021904', N'021105', N'02', N'ANCASH', N'0211', N'HUARMEY', N'MALVAS', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 220, 3132, -9.9297, -77.6578, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (171, N'020701', N'021201', N'02', N'ANCASH', N'0212', N'HUAYLAS', N'CARAZ', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 247, 2273, -9.0486, -77.8047, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (172, N'020702', N'021202', N'02', N'ANCASH', N'0212', N'HUAYLAS', N'HUALLANCA', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 179, 1391, -8.8189, -77.8631, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (173, N'020703', N'021203', N'02', N'ANCASH', N'0212', N'HUAYLAS', N'HUATA', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 71, 2712, -9.0164, -77.8614, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (174, N'020704', N'021204', N'02', N'ANCASH', N'0212', N'HUAYLAS', N'HUAYLAS', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 57, 2735, -8.8725, -77.8928, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (175, N'020705', N'021205', N'02', N'ANCASH', N'0212', N'HUAYLAS', N'MATO', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 107, 2209, -8.9614, -77.8425, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (176, N'020706', N'021206', N'02', N'ANCASH', N'0212', N'HUAYLAS', N'PAMPAROMAS', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 496, 2772, -9.0733, -77.9817, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (177, N'020707', N'021207', N'02', N'ANCASH', N'0212', N'HUAYLAS', N'PUEBLO LIBRE', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 131, 2485, -9.11, -77.8019, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (178, N'020708', N'021208', N'02', N'ANCASH', N'0212', N'HUAYLAS', N'SANTA CRUZ', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 358, 2890, -8.9519, -77.815, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (179, N'020710', N'021209', N'02', N'ANCASH', N'0212', N'HUAYLAS', N'SANTO TORIBIO', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 82, 2926, -8.8644, -77.9147, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (180, N'020709', N'021210', N'02', N'ANCASH', N'0212', N'HUAYLAS', N'YURACMARCA', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 566, 1484, -8.7375, -77.9039, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (181, N'020901', N'021301', N'02', N'ANCASH', N'0213', N'MARISCAL LUZURIAGA', N'PISCOBAMBA', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 46, 3326, -8.865, -77.3578, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (182, N'020902', N'021302', N'02', N'ANCASH', N'0213', N'MARISCAL LUZURIAGA', N'CASCA', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 77, 3176, -8.8556, -77.3986, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (183, N'020908', N'021303', N'02', N'ANCASH', N'0213', N'MARISCAL LUZURIAGA', N'ELEAZAR GUZMAN BARRON', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 94, 2845, -8.9022, -77.2439, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (184, N'020904', N'021304', N'02', N'ANCASH', N'0213', N'MARISCAL LUZURIAGA', N'FIDEL OLIVAS ESCUDERO', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 205, 2849, -8.8061, -77.2797, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (185, N'020905', N'021305', N'02', N'ANCASH', N'0213', N'MARISCAL LUZURIAGA', N'LLAMA', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 48, 2839, -8.915, -77.3014, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (186, N'020906', N'021306', N'02', N'ANCASH', N'0213', N'MARISCAL LUZURIAGA', N'LLUMPA', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 143, 2900, -8.9608, -77.3675, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (187, N'020903', N'021307', N'02', N'ANCASH', N'0213', N'MARISCAL LUZURIAGA', N'LUCMA', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 77, 3096, -8.9194, -77.4108, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (188, N'020907', N'021308', N'02', N'ANCASH', N'0213', N'MARISCAL LUZURIAGA', N'MUSGA', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 40, 3001, -8.9061, -77.3392, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (189, N'022007', N'021401', N'02', N'ANCASH', N'0214', N'OCROS', N'OCROS', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 231, 3238, -10.4033, -77.3967, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (190, N'022001', N'021402', N'02', N'ANCASH', N'0214', N'OCROS', N'ACAS', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 252, 3712, -10.4575, -77.3278, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (191, N'022002', N'021403', N'02', N'ANCASH', N'0214', N'OCROS', N'CAJAMARQUILLA', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 76, 3545, -10.3542, -77.1992, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (192, N'022003', N'021404', N'02', N'ANCASH', N'0214', N'OCROS', N'CARHUAPAMPA', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 110, 2250, -10.4975, -77.2428, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (193, N'022004', N'021405', N'02', N'ANCASH', N'0214', N'OCROS', N'COCHAS', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 409, 1290, -10.5367, -77.4228, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (194, N'022005', N'021406', N'02', N'ANCASH', N'0214', N'OCROS', N'CONGAS', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 130, 3112, -10.3375, -77.4428, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (195, N'022006', N'021407', N'02', N'ANCASH', N'0214', N'OCROS', N'LLIPA', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 34, 2767, -10.3925, -77.1908, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (196, N'022008', N'021408', N'02', N'ANCASH', N'0214', N'OCROS', N'SAN CRISTOBAL DE RAJAN', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 68, 3634, -10.3869, -77.2194, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (197, N'022009', N'021409', N'02', N'ANCASH', N'0214', N'OCROS', N'SAN PEDRO', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 531, 2243, -10.3719, -77.4872, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (198, N'022010', N'021410', N'02', N'ANCASH', N'0214', N'OCROS', N'SANTIAGO DE CHILCAS', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 86, 3692, -10.4386, -77.3658, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (199, N'021001', N'021501', N'02', N'ANCASH', N'0215', N'PALLASCA', N'CABANA', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 150, 3156, -8.3931, -78.0089, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (200, N'021002', N'021502', N'02', N'ANCASH', N'0215', N'PALLASCA', N'BOLOGNESI', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 87, 2931, -8.3506, -78.0506, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (201, N'021003', N'021503', N'02', N'ANCASH', N'0215', N'PALLASCA', N'CONCHUCOS', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 585, 3206, -8.2686, -77.8528, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (202, N'021004', N'021504', N'02', N'ANCASH', N'0215', N'PALLASCA', N'HUACASCHUQUE', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 64, 3140, -8.3064, -78.0047, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (203, N'021005', N'021505', N'02', N'ANCASH', N'0215', N'PALLASCA', N'HUANDOVAL', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 116, 3063, -8.3311, -77.9753, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (204, N'021006', N'021506', N'02', N'ANCASH', N'0215', N'PALLASCA', N'LACABAMBA', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 65, 3427, -8.2603, -77.8983, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (205, N'021007', N'021507', N'02', N'ANCASH', N'0215', N'PALLASCA', N'LLAPO', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 29, 3416, -8.5144, -78.0422, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (206, N'021008', N'021508', N'02', N'ANCASH', N'0215', N'PALLASCA', N'PALLASCA', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 60, 3086, -8.2531, -77.9994, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (207, N'021009', N'021509', N'02', N'ANCASH', N'0215', N'PALLASCA', N'PAMPAS', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 438, 3216, -8.1953, -77.8958, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (208, N'021010', N'021510', N'02', N'ANCASH', N'0215', N'PALLASCA', N'SANTA ROSA', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 299, 2413, -8.5278, -78.0675, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (209, N'021011', N'021511', N'02', N'ANCASH', N'0215', N'PALLASCA', N'TAUCA', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 209, 3368, -8.4703, -78.0378, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (210, N'021101', N'021601', N'02', N'ANCASH', N'0216', N'POMABAMBA', N'POMABAMBA', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 348, 2964, -8.8211, -77.4603, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (211, N'021102', N'021602', N'02', N'ANCASH', N'0216', N'POMABAMBA', N'HUAYLLAN', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 89, 2993, -8.8581, -77.4356, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (212, N'021103', N'021603', N'02', N'ANCASH', N'0216', N'POMABAMBA', N'PAROBAMBA', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 331, 3182, -8.6958, -77.4297, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (213, N'021104', N'021604', N'02', N'ANCASH', N'0216', N'POMABAMBA', N'QUINUABAMBA', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 146, 3129, -8.6972, -77.3983, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (214, N'021201', N'021701', N'02', N'ANCASH', N'0217', N'RECUAY', N'RECUAY', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 143, 3428, -9.7217, -77.4564, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (215, N'021210', N'021702', N'02', N'ANCASH', N'0217', N'RECUAY', N'CATAC', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 1018, 3579, -9.8017, -77.4306, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (216, N'021202', N'021703', N'02', N'ANCASH', N'0217', N'RECUAY', N'COTAPARACO', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 173, 3032, -9.9933, -77.5881, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (217, N'021203', N'021704', N'02', N'ANCASH', N'0217', N'RECUAY', N'HUAYLLAPAMPA', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 105, 2908, -10.0556, -77.5367, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (218, N'021209', N'021705', N'02', N'ANCASH', N'0217', N'RECUAY', N'LLACLLIN', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 101, 3020, -10.0692, -77.6217, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (219, N'021204', N'021706', N'02', N'ANCASH', N'0217', N'RECUAY', N'MARCA', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 185, 2615, -10.0892, -77.4744, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (220, N'021205', N'021707', N'02', N'ANCASH', N'0217', N'RECUAY', N'PAMPAS CHICO', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 101, 3552, -10.1147, -77.3981, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (221, N'021206', N'021708', N'02', N'ANCASH', N'0217', N'RECUAY', N'PARARIN', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 255, 3402, -10.05, -77.6544, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (222, N'021207', N'021709', N'02', N'ANCASH', N'0217', N'RECUAY', N'TAPACOCHA', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 81, 3596, -10.0103, -77.5692, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (223, N'021208', N'021710', N'02', N'ANCASH', N'0217', N'RECUAY', N'TICAPAMPA', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 142, 3485, -9.7606, -77.4428, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (224, N'021301', N'021801', N'02', N'ANCASH', N'0218', N'SANTA', N'CHIMBOTE', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 1461, 52, -9.0417, -78.6078, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (225, N'021302', N'021802', N'02', N'ANCASH', N'0218', N'SANTA', N'CACERES DEL PERU', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 550, 1210, -9.0131, -78.1381, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (226, N'021308', N'021803', N'02', N'ANCASH', N'0218', N'SANTA', N'COISHCO', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 9, 31, -9.0231, -78.6161, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (227, N'021303', N'021804', N'02', N'ANCASH', N'0218', N'SANTA', N'MACATE', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 585, 2731, -8.7603, -78.0614, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (228, N'021304', N'021805', N'02', N'ANCASH', N'0218', N'SANTA', N'MORO', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 359, 504, -9.1389, -78.1833, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (229, N'021305', N'021806', N'02', N'ANCASH', N'0218', N'SANTA', N'NEPEÑA', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 458, 159, -9.1728, -78.3608, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (230, N'021306', N'021807', N'02', N'ANCASH', N'0218', N'SANTA', N'SAMANCO', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 154, 17, -9.2622, -78.4958, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (231, N'021307', N'021808', N'02', N'ANCASH', N'0218', N'SANTA', N'SANTA', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 42, 35, -8.9878, -78.6131, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (232, N'021309', N'021809', N'02', N'ANCASH', N'0218', N'SANTA', N'NUEVO CHIMBOTE', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 390, 40, -9.1286, -78.5308, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (233, N'021401', N'021901', N'02', N'ANCASH', N'0219', N'SIHUAS', N'SIHUAS', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 44, 2767, -8.5544, -77.6308, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (234, N'021407', N'021902', N'02', N'ANCASH', N'0219', N'SIHUAS', N'ACOBAMBA', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 153, 3147, -8.3261, -77.5819, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (235, N'021402', N'021903', N'02', N'ANCASH', N'0219', N'SIHUAS', N'ALFONSO UGARTE', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 81, 3197, -8.4561, -77.4267, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (236, N'021408', N'021904', N'02', N'ANCASH', N'0219', N'SIHUAS', N'CASHAPAMPA', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 67, 3430, -8.5611, -77.6531, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (237, N'021403', N'021905', N'02', N'ANCASH', N'0219', N'SIHUAS', N'CHINGALPO', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 173, 3157, -8.3386, -77.5975, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (238, N'021404', N'021906', N'02', N'ANCASH', N'0219', N'SIHUAS', N'HUAYLLABAMBA', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 288, 3329, -8.5347, -77.5669, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (239, N'021405', N'021907', N'02', N'ANCASH', N'0219', N'SIHUAS', N'QUICHES', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 147, 3035, -8.395, -77.4911, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (240, N'021409', N'021908', N'02', N'ANCASH', N'0219', N'SIHUAS', N'RAGASH', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 208, 3437, -8.5317, -77.6658, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (241, N'021410', N'021909', N'02', N'ANCASH', N'0219', N'SIHUAS', N'SAN JUAN', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 209, 2739, -8.6464, -77.5819, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (242, N'021406', N'021910', N'02', N'ANCASH', N'0219', N'SIHUAS', N'SICSIBAMBA', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 86, 3148, -8.6233, -77.5356, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (243, N'021501', N'022001', N'02', N'ANCASH', N'0220', N'YUNGAY', N'YUNGAY', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 277, 2517, -9.14, -77.7447, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (244, N'021502', N'022002', N'02', N'ANCASH', N'0220', N'YUNGAY', N'CASCAPARA', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 138, 2742, -9.2264, -77.7172, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (245, N'021503', N'022003', N'02', N'ANCASH', N'0220', N'YUNGAY', N'MANCOS', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 64, 2542, -9.19, -77.7122, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (246, N'021504', N'022004', N'02', N'ANCASH', N'0220', N'YUNGAY', N'MATACOTO', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 44, 2486, -9.1769, -77.7472, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (247, N'021505', N'022005', N'02', N'ANCASH', N'0220', N'YUNGAY', N'QUILLO', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 374, 1267, -9.3286, -78.0417, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (248, N'021506', N'022006', N'02', N'ANCASH', N'0220', N'YUNGAY', N'RANRAHIRCA', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 23, 2496, -9.1731, -77.7225, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (249, N'021507', N'022007', N'02', N'ANCASH', N'0220', N'YUNGAY', N'SHUPLUY', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 162, 2517, -9.2169, -77.6939, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (250, N'021508', N'022008', N'02', N'ANCASH', N'0220', N'YUNGAY', N'YANAMA', N'ANCASH', N'CENTRO', N'MACROREGION NORTE', N'PE-ANC', N'02', 280, 3389, -9.0206, -77.4708, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (251, N'030101', N'030101', N'03', N'APURIMAC', N'0301', N'ABANCAY', N'ABANCAY', N'APURIMAC', N'SUR', N'MACROREGION CENTRO', N'PE-APU', N'03', 313, 2500, -13.6289, -72.8861, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (252, N'030104', N'030102', N'03', N'APURIMAC', N'0301', N'ABANCAY', N'CHACOCHE', N'APURIMAC', N'SUR', N'MACROREGION CENTRO', N'PE-APU', N'03', 186, 3482, -13.9411, -72.9911, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (253, N'030102', N'030103', N'03', N'APURIMAC', N'0301', N'ABANCAY', N'CIRCA', N'APURIMAC', N'SUR', N'MACROREGION CENTRO', N'PE-APU', N'03', 642, 3206, -13.8783, -72.8758, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (254, N'030103', N'030104', N'03', N'APURIMAC', N'0301', N'ABANCAY', N'CURAHUASI', N'APURIMAC', N'SUR', N'MACROREGION CENTRO', N'PE-APU', N'03', 818, 2694, -13.5414, -72.6961, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (255, N'030105', N'030105', N'03', N'APURIMAC', N'0301', N'ABANCAY', N'HUANIPACA', N'APURIMAC', N'SUR', N'MACROREGION CENTRO', N'PE-APU', N'03', 433, 3155, -13.4922, -72.9333, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (256, N'030106', N'030106', N'03', N'APURIMAC', N'0301', N'ABANCAY', N'LAMBRAMA', N'APURIMAC', N'SUR', N'MACROREGION CENTRO', N'PE-APU', N'03', 522, 3126, -13.8708, -72.7697, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (257, N'030107', N'030107', N'03', N'APURIMAC', N'0301', N'ABANCAY', N'PICHIRHUA', N'APURIMAC', N'SUR', N'MACROREGION CENTRO', N'PE-APU', N'03', 371, 2766, -13.8608, -73.0733, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (258, N'030108', N'030108', N'03', N'APURIMAC', N'0301', N'ABANCAY', N'SAN PEDRO DE CACHORA', N'APURIMAC', N'SUR', N'MACROREGION CENTRO', N'PE-APU', N'03', 109, 2916, -13.5142, -72.8142, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (259, N'030109', N'030109', N'03', N'APURIMAC', N'0301', N'ABANCAY', N'TAMBURCO', N'APURIMAC', N'SUR', N'MACROREGION CENTRO', N'PE-APU', N'03', 55, 2620, -13.6222, -72.8733, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (260, N'030301', N'030201', N'03', N'APURIMAC', N'0302', N'ANDAHUAYLAS', N'ANDAHUAYLAS', N'APURIMAC', N'SUR', N'MACROREGION CENTRO', N'PE-APU', N'03', 174, 2836, -13.6561, -73.3897, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (261, N'030302', N'030202', N'03', N'APURIMAC', N'0302', N'ANDAHUAYLAS', N'ANDARAPA', N'APURIMAC', N'SUR', N'MACROREGION CENTRO', N'PE-APU', N'03', 172, 3002, -13.5281, -73.3658, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (262, N'030303', N'030203', N'03', N'APURIMAC', N'0302', N'ANDAHUAYLAS', N'CHIARA', N'APURIMAC', N'SUR', N'MACROREGION CENTRO', N'PE-APU', N'03', 149, 3289, -13.8672, -73.6689, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (263, N'030304', N'030204', N'03', N'APURIMAC', N'0302', N'ANDAHUAYLAS', N'HUANCARAMA', N'APURIMAC', N'SUR', N'MACROREGION CENTRO', N'PE-APU', N'03', 153, 2976, -13.6447, -73.0856, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (264, N'030305', N'030205', N'03', N'APURIMAC', N'0302', N'ANDAHUAYLAS', N'HUANCARAY', N'APURIMAC', N'SUR', N'MACROREGION CENTRO', N'PE-APU', N'03', 112, 2909, -13.7572, -73.5275, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (265, N'030317', N'030206', N'03', N'APURIMAC', N'0302', N'ANDAHUAYLAS', N'HUAYANA', N'APURIMAC', N'SUR', N'MACROREGION CENTRO', N'PE-APU', N'03', 97, 3196, -14.0508, -73.6094, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (266, N'030306', N'030207', N'03', N'APURIMAC', N'0302', N'ANDAHUAYLAS', N'KISHUARA', N'APURIMAC', N'SUR', N'MACROREGION CENTRO', N'PE-APU', N'03', 310, 3717, -13.6911, -73.1186, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (267, N'030307', N'030208', N'03', N'APURIMAC', N'0302', N'ANDAHUAYLAS', N'PACOBAMBA', N'APURIMAC', N'SUR', N'MACROREGION CENTRO', N'PE-APU', N'03', 246, 2712, -13.6153, -73.0839, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (268, N'030313', N'030209', N'03', N'APURIMAC', N'0302', N'ANDAHUAYLAS', N'PACUCHA', N'APURIMAC', N'SUR', N'MACROREGION CENTRO', N'PE-APU', N'03', 170, 3162, -13.6094, -73.3442, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (269, N'030308', N'030210', N'03', N'APURIMAC', N'0302', N'ANDAHUAYLAS', N'PAMPACHIRI', N'APURIMAC', N'SUR', N'MACROREGION CENTRO', N'PE-APU', N'03', 603, 3388, -14.1869, -73.5447, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (270, N'030314', N'030211', N'03', N'APURIMAC', N'0302', N'ANDAHUAYLAS', N'POMACOCHA', N'APURIMAC', N'SUR', N'MACROREGION CENTRO', N'PE-APU', N'03', 129, 3673, -14.0839, -73.5908, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (271, N'030309', N'030212', N'03', N'APURIMAC', N'0302', N'ANDAHUAYLAS', N'SAN ANTONIO DE CACHI', N'APURIMAC', N'SUR', N'MACROREGION CENTRO', N'PE-APU', N'03', 179, 3258, -13.7731, -73.6033, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (272, N'030310', N'030213', N'03', N'APURIMAC', N'0302', N'ANDAHUAYLAS', N'SAN JERONIMO', N'APURIMAC', N'SUR', N'MACROREGION CENTRO', N'PE-APU', N'03', 237, 2973, -13.6517, -73.3658, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (273, N'030318', N'030214', N'03', N'APURIMAC', N'0302', N'ANDAHUAYLAS', N'SAN MIGUEL DE CHACCRAMPA', N'APURIMAC', N'SUR', N'MACROREGION CENTRO', N'PE-APU', N'03', 83, 3681, -13.9611, -73.6078, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (274, N'030315', N'030215', N'03', N'APURIMAC', N'0302', N'ANDAHUAYLAS', N'SANTA MARIA DE CHICMO', N'APURIMAC', N'SUR', N'MACROREGION CENTRO', N'PE-APU', N'03', 162, 3287, -13.6575, -73.4939, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (275, N'030311', N'030216', N'03', N'APURIMAC', N'0302', N'ANDAHUAYLAS', N'TALAVERA', N'APURIMAC', N'SUR', N'MACROREGION CENTRO', N'PE-APU', N'03', 148, 2842, -13.6542, -73.4289, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (276, N'030316', N'030217', N'03', N'APURIMAC', N'0302', N'ANDAHUAYLAS', N'TUMAY HUARACA', N'APURIMAC', N'SUR', N'MACROREGION CENTRO', N'PE-APU', N'03', 447, 3409, -14.0528, -73.5658, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (277, N'030312', N'030218', N'03', N'APURIMAC', N'0302', N'ANDAHUAYLAS', N'TURPO', N'APURIMAC', N'SUR', N'MACROREGION CENTRO', N'PE-APU', N'03', 122, 3327, -13.7856, -73.4742, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (278, N'030319', N'030219', N'03', N'APURIMAC', N'0302', N'ANDAHUAYLAS', N'KAQUIABAMBA', N'APURIMAC', N'SUR', N'MACROREGION CENTRO', N'PE-APU', N'03', 98, 3087, -13.5325, -73.2883, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (279, N'030320', N'030220', N'03', N'APURIMAC', N'0302', N'ANDAHUAYLAS', N'JOSE MARIA ARGUEDAS', N'APURIMAC', N'SUR', N'MACROREGION CENTRO', N'PE-APU', N'03', 196, 3590, -13.7342, -73.3506, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (280, N'030401', N'030301', N'03', N'APURIMAC', N'0303', N'ANTABAMBA', N'ANTABAMBA', N'APURIMAC', N'SUR', N'MACROREGION CENTRO', N'PE-APU', N'03', 604, 3664, -14.3653, -72.8772, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (281, N'030402', N'030302', N'03', N'APURIMAC', N'0303', N'ANTABAMBA', N'EL ORO', N'APURIMAC', N'SUR', N'MACROREGION CENTRO', N'PE-APU', N'03', 69, 3304, -14.2089, -73.0583, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (282, N'030403', N'030303', N'03', N'APURIMAC', N'0303', N'ANTABAMBA', N'HUAQUIRCA', N'APURIMAC', N'SUR', N'MACROREGION CENTRO', N'PE-APU', N'03', 338, 3500, -14.3394, -72.895, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (283, N'030404', N'030304', N'03', N'APURIMAC', N'0303', N'ANTABAMBA', N'JUAN ESPINOZA MEDRANO', N'APURIMAC', N'SUR', N'MACROREGION CENTRO', N'PE-APU', N'03', 623, 3316, -14.4283, -72.915, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (284, N'030405', N'030305', N'03', N'APURIMAC', N'0303', N'ANTABAMBA', N'OROPESA', N'APURIMAC', N'SUR', N'MACROREGION CENTRO', N'PE-APU', N'03', 1180, 3327, -14.2606, -72.5636, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (285, N'030406', N'030306', N'03', N'APURIMAC', N'0303', N'ANTABAMBA', N'PACHACONAS', N'APURIMAC', N'SUR', N'MACROREGION CENTRO', N'PE-APU', N'03', 227, 3465, -14.2233, -73.0164, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (286, N'030407', N'030307', N'03', N'APURIMAC', N'0303', N'ANTABAMBA', N'SABAINO', N'APURIMAC', N'SUR', N'MACROREGION CENTRO', N'PE-APU', N'03', 179, 3441, -14.3133, -72.9453, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (287, N'030201', N'030401', N'03', N'APURIMAC', N'0304', N'AYMARAES', N'CHALHUANCA', N'APURIMAC', N'SUR', N'MACROREGION CENTRO', N'PE-APU', N'03', 322, 2929, -14.2944, -73.2447, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (288, N'030202', N'030402', N'03', N'APURIMAC', N'0304', N'AYMARAES', N'CAPAYA', N'APURIMAC', N'SUR', N'MACROREGION CENTRO', N'PE-APU', N'03', 78, 3311, -14.1178, -73.3211, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (289, N'030203', N'030403', N'03', N'APURIMAC', N'0304', N'AYMARAES', N'CARAYBAMBA', N'APURIMAC', N'SUR', N'MACROREGION CENTRO', N'PE-APU', N'03', 235, 3324, -14.3781, -73.1608, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (290, N'030206', N'030404', N'03', N'APURIMAC', N'0304', N'AYMARAES', N'CHAPIMARCA', N'APURIMAC', N'SUR', N'MACROREGION CENTRO', N'PE-APU', N'03', 213, 3423, -13.975, -73.065, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (291, N'030204', N'030405', N'03', N'APURIMAC', N'0304', N'AYMARAES', N'COLCABAMBA', N'APURIMAC', N'SUR', N'MACROREGION CENTRO', N'PE-APU', N'03', 96, 3174, -14.0064, -73.2542, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (292, N'030205', N'030406', N'03', N'APURIMAC', N'0304', N'AYMARAES', N'COTARUSE', N'APURIMAC', N'SUR', N'MACROREGION CENTRO', N'PE-APU', N'03', 1750, 3268, -14.4158, -73.205, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (293, N'030207', N'030407', N'03', N'APURIMAC', N'0304', N'AYMARAES', N'HUAYLLO', N'APURIMAC', N'SUR', N'MACROREGION CENTRO', N'PE-APU', N'03', 73, 3172, -14.1331, -73.2678, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (294, N'030217', N'030408', N'03', N'APURIMAC', N'0304', N'AYMARAES', N'JUSTO APU SAHUARAURA', N'APURIMAC', N'SUR', N'MACROREGION CENTRO', N'PE-APU', N'03', 98, 3133, -14.1481, -73.1739, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (295, N'030208', N'030409', N'03', N'APURIMAC', N'0304', N'AYMARAES', N'LUCRE', N'APURIMAC', N'SUR', N'MACROREGION CENTRO', N'PE-APU', N'03', 110, 2822, -13.9497, -73.2261, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (296, N'030209', N'030410', N'03', N'APURIMAC', N'0304', N'AYMARAES', N'POCOHUANCA', N'APURIMAC', N'SUR', N'MACROREGION CENTRO', N'PE-APU', N'03', 83, 3374, -14.2183, -73.0869, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (297, N'030216', N'030411', N'03', N'APURIMAC', N'0304', N'AYMARAES', N'SAN JUAN DE CHACÑA', N'APURIMAC', N'SUR', N'MACROREGION CENTRO', N'PE-APU', N'03', 86, 2874, -13.9242, -73.1822, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (298, N'030210', N'030412', N'03', N'APURIMAC', N'0304', N'AYMARAES', N'SAÑAYCA', N'APURIMAC', N'SUR', N'MACROREGION CENTRO', N'PE-APU', N'03', 449, 3373, -14.2044, -73.3469, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (299, N'030211', N'030413', N'03', N'APURIMAC', N'0304', N'AYMARAES', N'SORAYA', N'APURIMAC', N'SUR', N'MACROREGION CENTRO', N'PE-APU', N'03', 44, 2884, -14.1647, -73.315, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (300, N'030212', N'030414', N'03', N'APURIMAC', N'0304', N'AYMARAES', N'TAPAIRIHUA', N'APURIMAC', N'SUR', N'MACROREGION CENTRO', N'PE-APU', N'03', 164, 2839, -14.1414, -73.1403, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (301, N'030213', N'030415', N'03', N'APURIMAC', N'0304', N'AYMARAES', N'TINTAY', N'APURIMAC', N'SUR', N'MACROREGION CENTRO', N'PE-APU', N'03', 137, 2824, -13.9594, -73.1853, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (302, N'030214', N'030416', N'03', N'APURIMAC', N'0304', N'AYMARAES', N'TORAYA', N'APURIMAC', N'SUR', N'MACROREGION CENTRO', N'PE-APU', N'03', 173, 3167, -14.0531, -73.2939, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (303, N'030215', N'030417', N'03', N'APURIMAC', N'0304', N'AYMARAES', N'YANACA', N'APURIMAC', N'SUR', N'MACROREGION CENTRO', N'PE-APU', N'03', 104, 3339, -14.2253, -73.16, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (304, N'030501', N'030501', N'03', N'APURIMAC', N'0305', N'COTABAMBAS', N'TAMBOBAMBA', N'APURIMAC', N'SUR', N'MACROREGION CENTRO', N'PE-APU', N'03', 722, 3267, -13.9461, -72.1747, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (305, N'030503', N'030502', N'03', N'APURIMAC', N'0305', N'COTABAMBAS', N'COTABAMBAS', N'APURIMAC', N'SUR', N'MACROREGION CENTRO', N'PE-APU', N'03', 332, 3557, -13.7456, -72.355, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (306, N'030502', N'030503', N'03', N'APURIMAC', N'0305', N'COTABAMBAS', N'COYLLURQUI', N'APURIMAC', N'SUR', N'MACROREGION CENTRO', N'PE-APU', N'03', 419, 3184, -13.8369, -72.4322, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (307, N'030504', N'030504', N'03', N'APURIMAC', N'0305', N'COTABAMBAS', N'HAQUIRA', N'APURIMAC', N'SUR', N'MACROREGION CENTRO', N'PE-APU', N'03', 475, 3698, -14.2142, -72.1889, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (308, N'030505', N'030505', N'03', N'APURIMAC', N'0305', N'COTABAMBAS', N'MARA', N'APURIMAC', N'SUR', N'MACROREGION CENTRO', N'PE-APU', N'03', 224, 3792, -14.0867, -72.1019, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (309, N'030506', N'030506', N'03', N'APURIMAC', N'0305', N'COTABAMBAS', N'CHALLHUAHUACHO', N'APURIMAC', N'SUR', N'MACROREGION CENTRO', N'PE-APU', N'03', 440, 3724, -14.1186, -72.2467, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (310, N'030701', N'030601', N'03', N'APURIMAC', N'0306', N'CHINCHEROS', N'CHINCHEROS', N'APURIMAC', N'SUR', N'MACROREGION CENTRO', N'PE-APU', N'03', 132, 2799, -13.5183, -73.7228, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (311, N'030705', N'030602', N'03', N'APURIMAC', N'0306', N'CHINCHEROS', N'ANCO-HUALLO', N'APURIMAC', N'SUR', N'MACROREGION CENTRO', N'PE-APU', N'03', 39, 3239, -13.5297, -73.6742, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (312, N'030704', N'030603', N'03', N'APURIMAC', N'0306', N'CHINCHEROS', N'COCHARCAS', N'APURIMAC', N'SUR', N'MACROREGION CENTRO', N'PE-APU', N'03', 110, 3051, -13.6106, -73.7414, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (313, N'030706', N'030604', N'03', N'APURIMAC', N'0306', N'CHINCHEROS', N'HUACCANA', N'APURIMAC', N'SUR', N'MACROREGION CENTRO', N'PE-APU', N'03', 472, 3093, -13.3881, -73.6892, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (314, N'030703', N'030605', N'03', N'APURIMAC', N'0306', N'CHINCHEROS', N'OCOBAMBA', N'APURIMAC', N'SUR', N'MACROREGION CENTRO', N'PE-APU', N'03', 58, 3039, -13.4825, -73.5603, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (315, N'030702', N'030606', N'03', N'APURIMAC', N'0306', N'CHINCHEROS', N'ONGOY', N'APURIMAC', N'SUR', N'MACROREGION CENTRO', N'PE-APU', N'03', 119, 2799, -13.4028, -73.6683, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (316, N'030707', N'030607', N'03', N'APURIMAC', N'0306', N'CHINCHEROS', N'URANMARCA', N'APURIMAC', N'SUR', N'MACROREGION CENTRO', N'PE-APU', N'03', 149, 3115, -13.6722, -73.6694, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (317, N'030708', N'030608', N'03', N'APURIMAC', N'0306', N'CHINCHEROS', N'RANRACANCHA', N'APURIMAC', N'SUR', N'MACROREGION CENTRO', N'PE-APU', N'03', 45, 3426, -13.5325, -73.6056, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (318, N'030709', N'030609', N'03', N'APURIMAC', N'0306', N'CHINCHEROS', N'ROCCHACC', N'APURIMAC', N'SUR', N'MACROREGION CENTRO', N'PE-APU', N'03', 57, 3042, -13.4406, -73.6, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (319, N'030710', N'030610', N'03', N'APURIMAC', N'0306', N'CHINCHEROS', N'EL PORVENIR', N'APURIMAC', N'SUR', N'MACROREGION CENTRO', N'PE-APU', N'03', 62, 3045, -13.3967, -73.5933, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (320, N'030711', N'030611', N'03', N'APURIMAC', N'0306', N'CHINCHEROS', N'LOS CHANKAS', N'APURIMAC', N'SUR', N'MACROREGION CENTRO', N'PE-APU', N'03', 142, 2058, -13.435, -73.8219, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (321, N'030601', N'030701', N'03', N'APURIMAC', N'0307', N'GRAU', N'CHUQUIBAMBILLA', N'APURIMAC', N'SUR', N'MACROREGION CENTRO', N'PE-APU', N'03', 433, 3360, -14.105, -72.7078, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (322, N'030602', N'030702', N'03', N'APURIMAC', N'0307', N'GRAU', N'CURPAHUASI', N'APURIMAC', N'SUR', N'MACROREGION CENTRO', N'PE-APU', N'03', 293, 3490, -14.0633, -72.6708, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (323, N'030605', N'030703', N'03', N'APURIMAC', N'0307', N'GRAU', N'GAMARRA', N'APURIMAC', N'SUR', N'MACROREGION CENTRO', N'PE-APU', N'03', 370, 3489, -13.8717, -72.5083, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (324, N'030603', N'030704', N'03', N'APURIMAC', N'0307', N'GRAU', N'HUAYLLATI', N'APURIMAC', N'SUR', N'MACROREGION CENTRO', N'PE-APU', N'03', 111, 3469, -13.9281, -72.4844, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (325, N'030604', N'030705', N'03', N'APURIMAC', N'0307', N'GRAU', N'MAMARA', N'APURIMAC', N'SUR', N'MACROREGION CENTRO', N'PE-APU', N'03', 66, 3619, -14.2286, -72.5908, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (326, N'030606', N'030706', N'03', N'APURIMAC', N'0307', N'GRAU', N'MICAELA BASTIDAS', N'APURIMAC', N'SUR', N'MACROREGION CENTRO', N'PE-APU', N'03', 110, 3528, -14.1153, -72.6142, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (327, N'030608', N'030707', N'03', N'APURIMAC', N'0307', N'GRAU', N'PATAYPAMPA', N'APURIMAC', N'SUR', N'MACROREGION CENTRO', N'PE-APU', N'03', 159, 3800, -14.1775, -72.6725, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (328, N'030607', N'030708', N'03', N'APURIMAC', N'0307', N'GRAU', N'PROGRESO', N'APURIMAC', N'SUR', N'MACROREGION CENTRO', N'PE-APU', N'03', 255, 3817, -14.0722, -72.4767, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (329, N'030609', N'030709', N'03', N'APURIMAC', N'0307', N'GRAU', N'SAN ANTONIO', N'APURIMAC', N'SUR', N'MACROREGION CENTRO', N'PE-APU', N'03', 24, 3483, -14.1694, -72.6233, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (330, N'030613', N'030710', N'03', N'APURIMAC', N'0307', N'GRAU', N'SANTA ROSA', N'APURIMAC', N'SUR', N'MACROREGION CENTRO', N'PE-APU', N'03', 36, 3539, -14.1397, -72.6567, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (331, N'030610', N'030711', N'03', N'APURIMAC', N'0307', N'GRAU', N'TURPAY', N'APURIMAC', N'SUR', N'MACROREGION CENTRO', N'PE-APU', N'03', 52, 3448, -14.2278, -72.6225, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (332, N'030611', N'030712', N'03', N'APURIMAC', N'0307', N'GRAU', N'VILCABAMBA', N'APURIMAC', N'SUR', N'MACROREGION CENTRO', N'PE-APU', N'03', 8, 2801, -14.0778, -72.6247, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (333, N'030612', N'030713', N'03', N'APURIMAC', N'0307', N'GRAU', N'VIRUNDO', N'APURIMAC', N'SUR', N'MACROREGION CENTRO', N'PE-APU', N'03', 117, 3876, -14.2503, -72.6811, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (334, N'030614', N'030714', N'03', N'APURIMAC', N'0307', N'GRAU', N'CURASCO', N'APURIMAC', N'SUR', N'MACROREGION CENTRO', N'PE-APU', N'03', 140, 3566, -14.0619, -72.5678, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (335, N'040101', N'040101', N'04', N'AREQUIPA', N'0401', N'AREQUIPA', N'AREQUIPA', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 3, 2429, -16.3933, -71.5289, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (336, N'040128', N'040102', N'04', N'AREQUIPA', N'0401', N'AREQUIPA', N'ALTO SELVA ALEGRE', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 7, 2510, -16.38, -71.5211, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (337, N'040102', N'040103', N'04', N'AREQUIPA', N'0401', N'AREQUIPA', N'CAYMA', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 246, 2531, -16.3625, -71.5442, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (338, N'040103', N'040104', N'04', N'AREQUIPA', N'0401', N'AREQUIPA', N'CERRO COLORADO', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 175, 2441, -16.3764, -71.5608, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (339, N'040104', N'040105', N'04', N'AREQUIPA', N'0401', N'AREQUIPA', N'CHARACATO', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 86, 2506, -16.4686, -71.4844, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (340, N'040105', N'040106', N'04', N'AREQUIPA', N'0401', N'AREQUIPA', N'CHIGUATA', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 461, 3006, -16.4036, -71.3917, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (341, N'040127', N'040107', N'04', N'AREQUIPA', N'0401', N'AREQUIPA', N'JACOBO HUNTER', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 20, 2309, -16.4414, -71.5586, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (342, N'040106', N'040108', N'04', N'AREQUIPA', N'0401', N'AREQUIPA', N'LA JOYA', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 670, 1640, -16.4231, -71.8183, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (343, N'040126', N'040109', N'04', N'AREQUIPA', N'0401', N'AREQUIPA', N'MARIANO MELGAR', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 30, 2459, -16.4072, -71.5056, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (344, N'040107', N'040110', N'04', N'AREQUIPA', N'0401', N'AREQUIPA', N'MIRAFLORES', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 29, 2450, -16.3947, -71.5225, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (345, N'040108', N'040111', N'04', N'AREQUIPA', N'0401', N'AREQUIPA', N'MOLLEBAYA', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 27, 2515, -16.4872, -71.4669, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (346, N'040109', N'040112', N'04', N'AREQUIPA', N'0401', N'AREQUIPA', N'PAUCARPATA', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 31, 2453, -16.4328, -71.5047, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (347, N'040110', N'040113', N'04', N'AREQUIPA', N'0401', N'AREQUIPA', N'POCSI', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 172, 3045, -16.5178, -71.3897, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (348, N'040111', N'040114', N'04', N'AREQUIPA', N'0401', N'AREQUIPA', N'POLOBAYA', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 442, 3116, -16.5658, -71.3683, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (349, N'040112', N'040115', N'04', N'AREQUIPA', N'0401', N'AREQUIPA', N'QUEQUEÑA', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 35, 2561, -16.5572, -71.4514, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (350, N'040113', N'040116', N'04', N'AREQUIPA', N'0401', N'AREQUIPA', N'SABANDIA', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 37, 2441, -16.4569, -71.4947, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (351, N'040114', N'040117', N'04', N'AREQUIPA', N'0401', N'AREQUIPA', N'SACHACA', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 27, 2300, -16.4244, -71.5664, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (352, N'040115', N'040118', N'04', N'AREQUIPA', N'0401', N'AREQUIPA', N'SAN JUAN DE SIGUAS', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 93, 1281, -16.3461, -72.1283, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (353, N'040116', N'040119', N'04', N'AREQUIPA', N'0401', N'AREQUIPA', N'SAN JUAN DE TARUCANI', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 2265, 4217, -16.1836, -71.0619, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (354, N'040117', N'040120', N'04', N'AREQUIPA', N'0401', N'AREQUIPA', N'SANTA ISABEL DE SIGUAS', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 188, 1390, -16.3208, -72.0989, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (355, N'040118', N'040121', N'04', N'AREQUIPA', N'0401', N'AREQUIPA', N'SANTA RITA DE SIGUAS', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 370, 1283, -16.4936, -72.0947, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (356, N'040119', N'040122', N'04', N'AREQUIPA', N'0401', N'AREQUIPA', N'SOCABAYA', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 19, 2352, -16.4675, -71.5286, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (357, N'040120', N'040123', N'04', N'AREQUIPA', N'0401', N'AREQUIPA', N'TIABAYA', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 32, 2218, -16.4494, -71.5917, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (358, N'040121', N'040124', N'04', N'AREQUIPA', N'0401', N'AREQUIPA', N'UCHUMAYO', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 227, 1976, -16.4253, -71.6725, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (359, N'040122', N'040125', N'04', N'AREQUIPA', N'0401', N'AREQUIPA', N'VITOR', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 1544, 1189, -16.4658, -71.9358, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (360, N'040123', N'040126', N'04', N'AREQUIPA', N'0401', N'AREQUIPA', N'YANAHUARA', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 2, 2402, -16.3819, -71.5364, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (361, N'040124', N'040127', N'04', N'AREQUIPA', N'0401', N'AREQUIPA', N'YARABAMBA', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 492, 2467, -16.5467, -71.4756, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (362, N'040125', N'040128', N'04', N'AREQUIPA', N'0401', N'AREQUIPA', N'YURA', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 1943, 2495, -16.2469, -71.7064, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (363, N'040129', N'040129', N'04', N'AREQUIPA', N'0401', N'AREQUIPA', N'JOSE LUIS BUSTAMANTE Y RIVERO', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 11, 2389, -16.4267, -71.5239, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (364, N'040301', N'040201', N'04', N'AREQUIPA', N'0402', N'CAMANA', N'CAMANA', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 12, 20, -16.6247, -72.7114, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (365, N'040302', N'040202', N'04', N'AREQUIPA', N'0402', N'CAMANA', N'JOSE MARIA QUIMPER', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 17, 35, -16.6019, -72.7272, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (366, N'040303', N'040203', N'04', N'AREQUIPA', N'0402', N'CAMANA', N'MARIANO NICOLAS VALCARCEL', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 558, 362, -16.0314, -73.1744, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (367, N'040304', N'040204', N'04', N'AREQUIPA', N'0402', N'CAMANA', N'MARISCAL CACERES', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 579, 18, -16.6197, -72.7361, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (368, N'040305', N'040205', N'04', N'AREQUIPA', N'0402', N'CAMANA', N'NICOLAS DE PIEROLA', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 392, 71, -16.5731, -72.7158, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (369, N'040306', N'040206', N'04', N'AREQUIPA', N'0402', N'CAMANA', N'OCOÑA', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 1415, 16, -16.4317, -73.105, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (370, N'040307', N'040207', N'04', N'AREQUIPA', N'0402', N'CAMANA', N'QUILCA', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 912, 82, -16.7169, -72.4256, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (371, N'040308', N'040208', N'04', N'AREQUIPA', N'0402', N'CAMANA', N'SAMUEL PASTOR', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 113, 21, -16.6136, -72.6992, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (372, N'040401', N'040301', N'04', N'AREQUIPA', N'0403', N'CARAVELI', N'CARAVELI', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 728, 1811, -15.7725, -73.3658, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (373, N'040402', N'040302', N'04', N'AREQUIPA', N'0403', N'CARAVELI', N'ACARI', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 799, 171, -15.4356, -74.6164, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (374, N'040403', N'040303', N'04', N'AREQUIPA', N'0403', N'CARAVELI', N'ATICO', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 3146, 101, -16.2083, -73.6236, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (375, N'040404', N'040304', N'04', N'AREQUIPA', N'0403', N'CARAVELI', N'ATIQUIPA', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 424, 330, -15.7961, -74.3636, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (376, N'040405', N'040305', N'04', N'AREQUIPA', N'0403', N'CARAVELI', N'BELLA UNION', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 1588, 218, -15.4506, -74.6583, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (377, N'040406', N'040306', N'04', N'AREQUIPA', N'0403', N'CARAVELI', N'CAHUACHO', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 1412, 3423, -15.5028, -73.4797, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (378, N'040407', N'040307', N'04', N'AREQUIPA', N'0403', N'CARAVELI', N'CHALA', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 378, 21, -15.8656, -74.2475, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (379, N'040408', N'040308', N'04', N'AREQUIPA', N'0403', N'CARAVELI', N'CHAPARRA', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 1473, 611, -15.8053, -73.9669, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (380, N'040409', N'040309', N'04', N'AREQUIPA', N'0403', N'CARAVELI', N'HUANUHUANU', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 709, 972, -15.6589, -74.0914, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (381, N'040410', N'040310', N'04', N'AREQUIPA', N'0403', N'CARAVELI', N'JAQUI', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 425, 271, -15.4792, -74.4436, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (382, N'040411', N'040311', N'04', N'AREQUIPA', N'0403', N'CARAVELI', N'LOMAS', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 453, 26, -15.5697, -74.8514, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (383, N'040412', N'040312', N'04', N'AREQUIPA', N'0403', N'CARAVELI', N'QUICACHA', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 1048, 1836, -15.625, -73.7983, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (384, N'040413', N'040313', N'04', N'AREQUIPA', N'0403', N'CARAVELI', N'YAUCA', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 556, 31, -15.6619, -74.5272, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (385, N'040501', N'040401', N'04', N'AREQUIPA', N'0404', N'CASTILLA', N'APLAO', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 640, 625, -16.0761, -72.4922, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (386, N'040502', N'040402', N'04', N'AREQUIPA', N'0404', N'CASTILLA', N'ANDAGUA', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 481, 3594, -15.4989, -72.3561, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (387, N'040503', N'040403', N'04', N'AREQUIPA', N'0404', N'CASTILLA', N'AYO', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 328, 2003, -15.6828, -72.2719, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (388, N'040504', N'040404', N'04', N'AREQUIPA', N'0404', N'CASTILLA', N'CHACHAS', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 1190, 3117, -15.5014, -72.2706, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (389, N'040505', N'040405', N'04', N'AREQUIPA', N'0404', N'CASTILLA', N'CHILCAYMARCA', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 181, 3867, -15.2861, -72.3767, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (390, N'040506', N'040406', N'04', N'AREQUIPA', N'0404', N'CASTILLA', N'CHOCO', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 904, 2418, -15.5767, -72.1289, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (391, N'040507', N'040407', N'04', N'AREQUIPA', N'0404', N'CASTILLA', N'HUANCARQUI', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 804, 620, -16.0961, -72.4722, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (392, N'040508', N'040408', N'04', N'AREQUIPA', N'0404', N'CASTILLA', N'MACHAGUAY', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 247, 3131, -15.6503, -72.5061, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (393, N'040509', N'040409', N'04', N'AREQUIPA', N'0404', N'CASTILLA', N'ORCOPAMPA', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 724, 3818, -15.2625, -72.3419, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (394, N'040510', N'040410', N'04', N'AREQUIPA', N'0404', N'CASTILLA', N'PAMPACOLCA', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 205, 2922, -15.7133, -72.5739, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (395, N'040511', N'040411', N'04', N'AREQUIPA', N'0404', N'CASTILLA', N'TIPAN', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 58, 1939, -15.7231, -72.5019, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (396, N'040513', N'040412', N'04', N'AREQUIPA', N'0404', N'CASTILLA', N'UÑON', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 297, 2727, -15.7286, -72.4322, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (397, N'040512', N'040413', N'04', N'AREQUIPA', N'0404', N'CASTILLA', N'URACA', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 714, 452, -16.2239, -72.4697, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (398, N'040514', N'040414', N'04', N'AREQUIPA', N'0404', N'CASTILLA', N'VIRACO', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 141, 3210, -15.6583, -72.525, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (399, N'040201', N'040501', N'04', N'AREQUIPA', N'0405', N'CAYLLOMA', N'CHIVAY', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 241, 3683, -15.6403, -71.6036, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (400, N'040202', N'040502', N'04', N'AREQUIPA', N'0405', N'CAYLLOMA', N'ACHOMA', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 394, 3524, -15.66, -71.7036, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (401, N'040203', N'040503', N'04', N'AREQUIPA', N'0405', N'CAYLLOMA', N'CABANACONDE', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 461, 3295, -15.62, -71.9819, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (402, N'040205', N'040504', N'04', N'AREQUIPA', N'0405', N'CAYLLOMA', N'CALLALLI', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 1485, 3887, -15.5064, -71.4447, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (403, N'040204', N'040505', N'04', N'AREQUIPA', N'0405', N'CAYLLOMA', N'CAYLLOMA', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 1499, 4361, -15.1889, -71.7733, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (404, N'040206', N'040506', N'04', N'AREQUIPA', N'0405', N'CAYLLOMA', N'COPORAQUE', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 112, 3600, -15.6272, -71.6461, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (405, N'040207', N'040507', N'04', N'AREQUIPA', N'0405', N'CAYLLOMA', N'HUAMBO', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 706, 3309, -15.7294, -72.1097, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (406, N'040208', N'040508', N'04', N'AREQUIPA', N'0405', N'CAYLLOMA', N'HUANCA', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 391, 3073, -16.0336, -71.8781, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (407, N'040209', N'040509', N'04', N'AREQUIPA', N'0405', N'CAYLLOMA', N'ICHUPAMPA', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 75, 3422, -15.65, -71.6867, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (408, N'040210', N'040510', N'04', N'AREQUIPA', N'0405', N'CAYLLOMA', N'LARI', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 384, 3373, -15.6183, -71.7725, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (409, N'040211', N'040511', N'04', N'AREQUIPA', N'0405', N'CAYLLOMA', N'LLUTA', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 1226, 3031, -16.0156, -72.0139, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (410, N'040212', N'040512', N'04', N'AREQUIPA', N'0405', N'CAYLLOMA', N'MACA', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 227, 3287, -15.6414, -71.7683, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (411, N'040213', N'040513', N'04', N'AREQUIPA', N'0405', N'CAYLLOMA', N'MADRIGAL', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 160, 3300, -15.6083, -71.8075, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (412, N'040214', N'040514', N'04', N'AREQUIPA', N'0405', N'CAYLLOMA', N'SAN ANTONIO DE CHUCA', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 1531, 4470, -15.8389, -71.0906, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (413, N'040215', N'040515', N'04', N'AREQUIPA', N'0405', N'CAYLLOMA', N'SIBAYO', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 286, 3836, -15.4861, -71.4569, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (414, N'040216', N'040516', N'04', N'AREQUIPA', N'0405', N'CAYLLOMA', N'TAPAY', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 420, 3011, -15.5775, -71.9397, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (415, N'040217', N'040517', N'04', N'AREQUIPA', N'0405', N'CAYLLOMA', N'TISCO', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 1445, 4195, -15.3469, -71.4464, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (416, N'040218', N'040518', N'04', N'AREQUIPA', N'0405', N'CAYLLOMA', N'TUTI', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 242, 3831, -15.5331, -71.5531, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (417, N'040219', N'040519', N'04', N'AREQUIPA', N'0405', N'CAYLLOMA', N'YANQUE', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 1109, 3468, -15.6483, -71.6608, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (418, N'040220', N'040520', N'04', N'AREQUIPA', N'0405', N'CAYLLOMA', N'MAJES', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 1626, 1392, -16.3533, -72.2472, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (419, N'040601', N'040601', N'04', N'AREQUIPA', N'0406', N'CONDESUYOS', N'CHUQUIBAMBA', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 1255, 2916, -15.8394, -72.6517, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (420, N'040602', N'040602', N'04', N'AREQUIPA', N'0406', N'CONDESUYOS', N'ANDARAY', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 848, 3047, -15.7972, -72.8608, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (421, N'040603', N'040603', N'04', N'AREQUIPA', N'0406', N'CONDESUYOS', N'CAYARANI', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 1396, 3951, -14.6719, -72.0219, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (422, N'040604', N'040604', N'04', N'AREQUIPA', N'0406', N'CONDESUYOS', N'CHICHAS', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 392, 2174, -15.5478, -72.9186, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (423, N'040605', N'040605', N'04', N'AREQUIPA', N'0406', N'CONDESUYOS', N'IRAY', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 248, 2469, -15.8536, -72.63, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (424, N'040608', N'040606', N'04', N'AREQUIPA', N'0406', N'CONDESUYOS', N'RIO GRANDE', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 527, 484, -15.94, -73.1311, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (425, N'040606', N'040607', N'04', N'AREQUIPA', N'0406', N'CONDESUYOS', N'SALAMANCA', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 1236, 3226, -15.5044, -72.8344, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (426, N'040607', N'040608', N'04', N'AREQUIPA', N'0406', N'CONDESUYOS', N'YANAQUIHUA', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 1057, 3006, -15.7756, -72.8764, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (427, N'040701', N'040701', N'04', N'AREQUIPA', N'0407', N'ISLAY', N'MOLLENDO', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 961, 73, -17.0292, -72.0164, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (428, N'040702', N'040702', N'04', N'AREQUIPA', N'0407', N'ISLAY', N'COCACHACRA', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 1537, 114, -17.0911, -71.7739, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (429, N'040703', N'040703', N'04', N'AREQUIPA', N'0407', N'ISLAY', N'DEAN VALDIVIA', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 134, 16, -17.145, -71.8267, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (430, N'040704', N'040704', N'04', N'AREQUIPA', N'0407', N'ISLAY', N'ISLAY', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 384, 110, -17.0008, -72.0975, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (431, N'040705', N'040705', N'04', N'AREQUIPA', N'0407', N'ISLAY', N'MEJIA', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 101, 9, -17.1011, -71.9075, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (432, N'040706', N'040706', N'04', N'AREQUIPA', N'0407', N'ISLAY', N'PUNTA DE BOMBON', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 770, 138, -17.1561, -71.7847, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (433, N'040801', N'040801', N'04', N'AREQUIPA', N'0408', N'LA UNION', N'COTAHUASI', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 167, 2696, -15.2128, -72.8894, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (434, N'040802', N'040802', N'04', N'AREQUIPA', N'0408', N'LA UNION', N'ALCA', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 193, 2759, -15.1342, -72.765, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (435, N'040803', N'040803', N'04', N'AREQUIPA', N'0408', N'LA UNION', N'CHARCANA', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 165, 3432, -15.2406, -73.0706, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (436, N'040804', N'040804', N'04', N'AREQUIPA', N'0408', N'LA UNION', N'HUAYNACOTAS', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 933, 2612, -15.1747, -72.8497, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (437, N'040805', N'040805', N'04', N'AREQUIPA', N'0408', N'LA UNION', N'PAMPAMARCA', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 782, 2649, -15.1825, -72.9053, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (438, N'040806', N'040806', N'04', N'AREQUIPA', N'0408', N'LA UNION', N'PUYCA', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 1501, 3675, -15.0592, -72.6917, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (439, N'040807', N'040807', N'04', N'AREQUIPA', N'0408', N'LA UNION', N'QUECHUALLA', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 138, 1964, -15.2739, -73.0222, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (440, N'040808', N'040808', N'04', N'AREQUIPA', N'0408', N'LA UNION', N'SAYLA', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 67, 3544, -15.32, -73.2219, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (441, N'040809', N'040809', N'04', N'AREQUIPA', N'0408', N'LA UNION', N'TAURIA', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 315, 2850, -15.3542, -73.2325, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (442, N'040810', N'040810', N'04', N'AREQUIPA', N'0408', N'LA UNION', N'TOMEPAMPA', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 94, 2644, -15.1731, -72.8303, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (443, N'040811', N'040811', N'04', N'AREQUIPA', N'0408', N'LA UNION', N'TORO', N'AREQUIPA', N'SUR', N'MACROREGION SUR', N'PE-ARE', N'04', 391, 2987, -15.2644, -72.9283, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (444, N'050101', N'050101', N'05', N'AYACUCHO', N'0501', N'HUAMANGA', N'AYACUCHO', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 83, 2797, -13.1603, -74.2253, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (445, N'050111', N'050102', N'05', N'AYACUCHO', N'0501', N'HUAMANGA', N'ACOCRO', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 437, 3251, -13.2186, -74.0419, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (446, N'050102', N'050103', N'05', N'AYACUCHO', N'0501', N'HUAMANGA', N'ACOS VINCHOS', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 157, 2874, -13.1131, -74.1, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (447, N'050103', N'050104', N'05', N'AYACUCHO', N'0501', N'HUAMANGA', N'CARMEN ALTO', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 18, 2921, -13.1794, -74.2206, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (448, N'050104', N'050105', N'05', N'AYACUCHO', N'0501', N'HUAMANGA', N'CHIARA', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 462, 3540, -13.2728, -74.2058, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (449, N'050113', N'050106', N'05', N'AYACUCHO', N'0501', N'HUAMANGA', N'OCROS', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 305, 3153, -13.3906, -73.9156, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (450, N'050114', N'050107', N'05', N'AYACUCHO', N'0501', N'HUAMANGA', N'PACAYCASA', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 54, 2571, -13.0575, -74.2158, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (451, N'050105', N'050108', N'05', N'AYACUCHO', N'0501', N'HUAMANGA', N'QUINUA', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 117, 3301, -13.0492, -74.1392, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (452, N'050106', N'050109', N'05', N'AYACUCHO', N'0501', N'HUAMANGA', N'SAN JOSE DE TICLLAS', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 82, 3282, -13.1322, -74.3331, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (453, N'050107', N'050110', N'05', N'AYACUCHO', N'0501', N'HUAMANGA', N'SAN JUAN BAUTISTA', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 15, 2786, -13.1667, -74.2236, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (454, N'050108', N'050111', N'05', N'AYACUCHO', N'0501', N'HUAMANGA', N'SANTIAGO DE PISCHA', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 91, 3210, -13.0856, -74.3933, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (455, N'050112', N'050112', N'05', N'AYACUCHO', N'0501', N'HUAMANGA', N'SOCOS', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 172, 3368, -13.215, -74.2894, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (456, N'050110', N'050113', N'05', N'AYACUCHO', N'0501', N'HUAMANGA', N'TAMBILLO', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 153, 3111, -13.1947, -74.1106, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (457, N'050109', N'050114', N'05', N'AYACUCHO', N'0501', N'HUAMANGA', N'VINCHOS', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 929, 3155, -13.2417, -74.3542, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (458, N'050115', N'050115', N'05', N'AYACUCHO', N'0501', N'HUAMANGA', N'JESUS NAZARENO', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 16, 2817, -13.1542, -74.2125, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (459, N'050116', N'050116', N'05', N'AYACUCHO', N'0501', N'HUAMANGA', N'ANDRES AVELINO CACERES DORREGARAY', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 9, 2775, -13.1628, -74.2139, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (460, N'050201', N'050201', N'05', N'AYACUCHO', N'0502', N'CANGALLO', N'CANGALLO', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 187, 2574, -13.6292, -74.1439, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (461, N'050204', N'050202', N'05', N'AYACUCHO', N'0502', N'CANGALLO', N'CHUSCHI', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 418, 3157, -13.585, -74.3517, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (462, N'050206', N'050203', N'05', N'AYACUCHO', N'0502', N'CANGALLO', N'LOS MOROCHUCOS', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 253, 3346, -13.5575, -74.195, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (463, N'050211', N'050204', N'05', N'AYACUCHO', N'0502', N'CANGALLO', N'MARIA PARADO DE BELLIDO', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 129, 3245, -13.6047, -74.2364, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (464, N'050207', N'050205', N'05', N'AYACUCHO', N'0502', N'CANGALLO', N'PARAS', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 789, 3354, -13.5525, -74.6278, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (465, N'050208', N'050206', N'05', N'AYACUCHO', N'0502', N'CANGALLO', N'TOTOS', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 113, 3333, -13.5675, -74.5228, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (466, N'050801', N'050301', N'05', N'AYACUCHO', N'0503', N'HUANCA SANCOS', N'SANCOS', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 1290, 3433, -13.9197, -74.3342, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (467, N'050804', N'050302', N'05', N'AYACUCHO', N'0503', N'HUANCA SANCOS', N'CARAPO', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 241, 3246, -13.8375, -74.3156, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (468, N'050802', N'050303', N'05', N'AYACUCHO', N'0503', N'HUANCA SANCOS', N'SACSAMARCA', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 673, 3463, -13.9428, -74.3128, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (469, N'050803', N'050304', N'05', N'AYACUCHO', N'0503', N'HUANCA SANCOS', N'SANTIAGO DE LUCANAMARCA', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 658, 3512, -13.8439, -74.3722, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (470, N'050301', N'050401', N'05', N'AYACUCHO', N'0504', N'HUANTA', N'HUANTA', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 193, 2685, -12.9394, -74.2481, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (471, N'050302', N'050402', N'05', N'AYACUCHO', N'0504', N'HUANTA', N'AYAHUANCO', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 298, 2699, -12.5939, -74.3308, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (472, N'050303', N'050403', N'05', N'AYACUCHO', N'0504', N'HUANTA', N'HUAMANGUILLA', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 95, 3300, -13.0111, -74.1731, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (473, N'050304', N'050404', N'05', N'AYACUCHO', N'0504', N'HUANTA', N'IGUAIN', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 61, 3063, -12.9925, -74.2089, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (474, N'050305', N'050405', N'05', N'AYACUCHO', N'0504', N'HUANTA', N'LURICOCHA', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 130, 2598, -12.8997, -74.2736, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (475, N'050307', N'050406', N'05', N'AYACUCHO', N'0504', N'HUANTA', N'SANTILLANA', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 336, 3265, -12.7664, -74.2531, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (476, N'050308', N'050407', N'05', N'AYACUCHO', N'0504', N'HUANTA', N'SIVIA', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 1054, 561, -12.5119, -73.8589, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (477, N'050309', N'050408', N'05', N'AYACUCHO', N'0504', N'HUANTA', N'LLOCHEGUA', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 469, 540, -12.41, -73.9064, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (478, N'050310', N'050409', N'05', N'AYACUCHO', N'0504', N'HUANTA', N'CANAYRE', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 245, 528, -12.2822, -74.0231, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (479, N'050311', N'050410', N'05', N'AYACUCHO', N'0504', N'HUANTA', N'UCHURACCAY', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 300, 3898, -12.7614, -74.1456, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (480, N'050312', N'050411', N'05', N'AYACUCHO', N'0504', N'HUANTA', N'PUCACOLPA', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 562, 3493, -12.4206, -74.4892, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (481, N'050313', N'050412', N'05', N'AYACUCHO', N'0504', N'HUANTA', N'CHACA', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 124, 3400, -12.7842, -74.2058, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (482, N'050401', N'050501', N'05', N'AYACUCHO', N'0505', N'LA MAR', N'SAN MIGUEL', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 458, 2696, -13.0128, -73.9811, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (483, N'050402', N'050502', N'05', N'AYACUCHO', N'0505', N'LA MAR', N'ANCO', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 803, 3213, -13.0603, -73.7069, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (484, N'050403', N'050503', N'05', N'AYACUCHO', N'0505', N'LA MAR', N'AYNA', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 291, 627, -12.6242, -73.7894, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (485, N'050404', N'050504', N'05', N'AYACUCHO', N'0505', N'LA MAR', N'CHILCAS', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 157, 3192, -13.1711, -73.9064, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (486, N'050405', N'050505', N'05', N'AYACUCHO', N'0505', N'LA MAR', N'CHUNGUI', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 1093, 3506, -13.2222, -73.6217, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (487, N'050407', N'050506', N'05', N'AYACUCHO', N'0505', N'LA MAR', N'LUIS CARRANZA', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 136, 2962, -13.2289, -73.8944, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (488, N'050408', N'050507', N'05', N'AYACUCHO', N'0505', N'LA MAR', N'SANTA ROSA', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 397, 729, -12.6878, -73.7358, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (489, N'050406', N'050508', N'05', N'AYACUCHO', N'0505', N'LA MAR', N'TAMBO', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 314, 3237, -12.9481, -74.0208, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (490, N'050409', N'050509', N'05', N'AYACUCHO', N'0505', N'LA MAR', N'SAMUGARI', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 387, 754, -12.7683, -73.6556, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (491, N'050410', N'050510', N'05', N'AYACUCHO', N'0505', N'LA MAR', N'ANCHIHUAY', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 272, 769, -12.8636, -73.5825, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (492, N'050411', N'050511', N'05', N'AYACUCHO', N'0505', N'LA MAR', N'ORONCCOY', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', NULL, 3719, -13.3808, -73.4361, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (493, N'050501', N'050601', N'05', N'AYACUCHO', N'0506', N'LUCANAS', N'PUQUIO', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 866, 3234, -14.6942, -74.1244, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (494, N'050502', N'050602', N'05', N'AYACUCHO', N'0506', N'LUCANAS', N'AUCARA', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 904, 3236, -14.2811, -73.9753, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (495, N'050503', N'050603', N'05', N'AYACUCHO', N'0506', N'LUCANAS', N'CABANA', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 403, 3298, -14.2883, -73.9672, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (496, N'050504', N'050604', N'05', N'AYACUCHO', N'0506', N'LUCANAS', N'CARMEN SALCEDO', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 474, 3478, -14.3878, -73.9619, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (497, N'050506', N'050605', N'05', N'AYACUCHO', N'0506', N'LUCANAS', N'CHAVIÑA', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 399, 3338, -14.9794, -73.8375, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (498, N'050508', N'050606', N'05', N'AYACUCHO', N'0506', N'LUCANAS', N'CHIPAO', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 1167, 3440, -14.3658, -73.8761, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (499, N'050510', N'050607', N'05', N'AYACUCHO', N'0506', N'LUCANAS', N'HUAC-HUAS', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 309, 3189, -14.1317, -74.9422, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (500, N'050511', N'050608', N'05', N'AYACUCHO', N'0506', N'LUCANAS', N'LARAMATE', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 786, 3078, -14.2861, -74.8425, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (501, N'050512', N'050609', N'05', N'AYACUCHO', N'0506', N'LUCANAS', N'LEONCIO PRADO', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 1054, 2696, -14.7289, -74.6703, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (502, N'050514', N'050610', N'05', N'AYACUCHO', N'0506', N'LUCANAS', N'LLAUTA', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 482, 2666, -14.2436, -74.9203, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (503, N'050513', N'050611', N'05', N'AYACUCHO', N'0506', N'LUCANAS', N'LUCANAS', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 1206, 3385, -14.6225, -74.2331, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (504, N'050516', N'050612', N'05', N'AYACUCHO', N'0506', N'LUCANAS', N'OCAÑA', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 848, 2650, -14.3989, -74.8228, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (505, N'050517', N'050613', N'05', N'AYACUCHO', N'0506', N'LUCANAS', N'OTOCA', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 720, 1883, -14.49, -74.6867, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (506, N'050529', N'050614', N'05', N'AYACUCHO', N'0506', N'LUCANAS', N'SAISA', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 585, 3070, -14.9403, -74.4172, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (507, N'050532', N'050615', N'05', N'AYACUCHO', N'0506', N'LUCANAS', N'SAN CRISTOBAL', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 392, 3587, -14.7431, -74.2222, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (508, N'050521', N'050616', N'05', N'AYACUCHO', N'0506', N'LUCANAS', N'SAN JUAN', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 45, 3290, -14.6517, -74.1992, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (509, N'050522', N'050617', N'05', N'AYACUCHO', N'0506', N'LUCANAS', N'SAN PEDRO', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 733, 3115, -14.7669, -74.0978, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (510, N'050531', N'050618', N'05', N'AYACUCHO', N'0506', N'LUCANAS', N'SAN PEDRO DE PALCO', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 532, 2538, -14.4119, -74.6514, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (511, N'050520', N'050619', N'05', N'AYACUCHO', N'0506', N'LUCANAS', N'SANCOS', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 1521, 2826, -15.0628, -73.9522, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (512, N'050524', N'050620', N'05', N'AYACUCHO', N'0506', N'LUCANAS', N'SANTA ANA DE HUAYCAHUACHO', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 51, 2984, -14.2264, -73.9567, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (513, N'050525', N'050621', N'05', N'AYACUCHO', N'0506', N'LUCANAS', N'SANTA LUCIA', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 1019, 2252, -14.9783, -74.5239, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (514, N'050601', N'050701', N'05', N'AYACUCHO', N'0507', N'PARINACOCHAS', N'CORACORA', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 1399, 3166, -15.0169, -73.7814, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (515, N'050605', N'050702', N'05', N'AYACUCHO', N'0507', N'PARINACOCHAS', N'CHUMPI', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 366, 3226, -15.0944, -73.7481, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (516, N'050604', N'050703', N'05', N'AYACUCHO', N'0507', N'PARINACOCHAS', N'CORONEL CASTAÑEDA', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 1108, 3622, -14.8072, -73.2822, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (517, N'050608', N'050704', N'05', N'AYACUCHO', N'0507', N'PARINACOCHAS', N'PACAPAUSA', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 144, 2821, -14.9503, -73.3678, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (518, N'050611', N'050705', N'05', N'AYACUCHO', N'0507', N'PARINACOCHAS', N'PULLO', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 1562, 3037, -15.21, -73.8267, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (519, N'050612', N'050706', N'05', N'AYACUCHO', N'0507', N'PARINACOCHAS', N'PUYUSCA', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 701, 3307, -15.2469, -73.5694, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (520, N'050615', N'050707', N'05', N'AYACUCHO', N'0507', N'PARINACOCHAS', N'SAN FRANCISCO DE RAVACAYCO', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 100, 2833, -14.9969, -73.3511, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (521, N'050616', N'050708', N'05', N'AYACUCHO', N'0507', N'PARINACOCHAS', N'UPAHUACHO', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 587, 3341, -14.9072, -73.3975, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (522, N'051001', N'050801', N'05', N'AYACUCHO', N'0508', N'PAUCAR DEL SARA SARA', N'PAUSA', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 243, 2536, -15.2786, -73.3442, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (523, N'051002', N'050802', N'05', N'AYACUCHO', N'0508', N'PAUCAR DEL SARA SARA', N'COLTA', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 277, 3267, -15.1628, -73.2939, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (524, N'051003', N'050803', N'05', N'AYACUCHO', N'0508', N'PAUCAR DEL SARA SARA', N'CORCULLA', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 97, 3503, -15.2628, -73.2003, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (525, N'051004', N'050804', N'05', N'AYACUCHO', N'0508', N'PAUCAR DEL SARA SARA', N'LAMPA', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 289, 2809, -15.185, -73.3492, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (526, N'051005', N'050805', N'05', N'AYACUCHO', N'0508', N'PAUCAR DEL SARA SARA', N'MARCABAMBA', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 123, 2615, -15.1497, -73.3417, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (527, N'051006', N'050806', N'05', N'AYACUCHO', N'0508', N'PAUCAR DEL SARA SARA', N'OYOLO', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 820, 3410, -15.18, -73.1853, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (528, N'051007', N'050807', N'05', N'AYACUCHO', N'0508', N'PAUCAR DEL SARA SARA', N'PARARCA', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 58, 3047, -15.2175, -73.4647, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (529, N'051008', N'050808', N'05', N'AYACUCHO', N'0508', N'PAUCAR DEL SARA SARA', N'SAN JAVIER DE ALPABAMBA', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 93, 2628, -15.0567, -73.3222, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (530, N'051009', N'050809', N'05', N'AYACUCHO', N'0508', N'PAUCAR DEL SARA SARA', N'SAN JOSE DE USHUA', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 17, 3034, -15.225, -73.2267, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (531, N'051010', N'050810', N'05', N'AYACUCHO', N'0508', N'PAUCAR DEL SARA SARA', N'SARA SARA', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 80, 3305, -15.2453, -73.4531, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (532, N'051101', N'050901', N'05', N'AYACUCHO', N'0509', N'SUCRE', N'QUEROBAMBA', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 276, 3516, -14.0117, -73.8386, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (533, N'051102', N'050902', N'05', N'AYACUCHO', N'0509', N'SUCRE', N'BELEN', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 41, 3223, -13.8089, -73.7575, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (534, N'051103', N'050903', N'05', N'AYACUCHO', N'0509', N'SUCRE', N'CHALCOS', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 58, 3677, -13.8481, -73.7542, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (535, N'051110', N'050904', N'05', N'AYACUCHO', N'0509', N'SUCRE', N'CHILCAYOC', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 33, 3404, -13.8831, -73.7272, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (536, N'051109', N'050905', N'05', N'AYACUCHO', N'0509', N'SUCRE', N'HUACAÑA', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 133, 3186, -14.1722, -73.8864, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (537, N'051111', N'050906', N'05', N'AYACUCHO', N'0509', N'SUCRE', N'MORCOLLA', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 289, 3504, -14.1086, -73.8719, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (538, N'051105', N'050907', N'05', N'AYACUCHO', N'0509', N'SUCRE', N'PAICO', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 80, 3111, -14.0383, -73.6422, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (539, N'051107', N'050908', N'05', N'AYACUCHO', N'0509', N'SUCRE', N'SAN PEDRO DE LARCAY', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 310, 3395, -14.1686, -73.5728, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (540, N'051104', N'050909', N'05', N'AYACUCHO', N'0509', N'SUCRE', N'SAN SALVADOR DE QUIJE', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 145, 3222, -13.9683, -73.7347, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (541, N'051106', N'050910', N'05', N'AYACUCHO', N'0509', N'SUCRE', N'SANTIAGO DE PAUCARAY', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 63, 3251, -14.0444, -73.6375, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (542, N'051108', N'050911', N'05', N'AYACUCHO', N'0509', N'SUCRE', N'SORAS', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 358, 3432, -14.1144, -73.6044, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (543, N'050701', N'051001', N'05', N'AYACUCHO', N'0510', N'VICTOR FAJARDO', N'HUANCAPI', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 223, 3105, -13.7522, -74.0667, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (544, N'050702', N'051002', N'05', N'AYACUCHO', N'0510', N'VICTOR FAJARDO', N'ALCAMENCA', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 125, 3173, -13.6572, -74.1472, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (545, N'050703', N'051003', N'05', N'AYACUCHO', N'0510', N'VICTOR FAJARDO', N'APONGO', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 172, 3078, -14.0133, -73.9322, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (546, N'050715', N'051004', N'05', N'AYACUCHO', N'0510', N'VICTOR FAJARDO', N'ASQUIPATA', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 71, 3332, -14.0547, -73.9094, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (547, N'050704', N'051005', N'05', N'AYACUCHO', N'0510', N'VICTOR FAJARDO', N'CANARIA', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 264, 3043, -13.9231, -73.9047, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (548, N'050706', N'051006', N'05', N'AYACUCHO', N'0510', N'VICTOR FAJARDO', N'CAYARA', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 69, 3207, -13.7953, -73.9886, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (549, N'050707', N'051007', N'05', N'AYACUCHO', N'0510', N'VICTOR FAJARDO', N'COLCA', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 70, 3003, -13.7125, -74.0339, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (550, N'050709', N'051008', N'05', N'AYACUCHO', N'0510', N'VICTOR FAJARDO', N'HUAMANQUIQUIA', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 67, 3390, -13.7292, -74.2722, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (551, N'050710', N'051009', N'05', N'AYACUCHO', N'0510', N'VICTOR FAJARDO', N'HUANCARAYLLA', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 165, 3246, -13.7189, -74.1025, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (552, N'050708', N'051010', N'05', N'AYACUCHO', N'0510', N'VICTOR FAJARDO', N'HUAYA', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 162, 3423, -13.85, -73.9508, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (553, N'050713', N'051011', N'05', N'AYACUCHO', N'0510', N'VICTOR FAJARDO', N'SARHUA', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 373, 3184, -13.6728, -74.3203, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (554, N'050714', N'051012', N'05', N'AYACUCHO', N'0510', N'VICTOR FAJARDO', N'VILCANCHOS', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 499, 3011, -13.6114, -74.5325, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (555, N'050901', N'051101', N'05', N'AYACUCHO', N'0511', N'VILCAS HUAMAN', N'VILCAS HUAMAN', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 217, 3494, -13.6525, -73.9539, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (556, N'050903', N'051102', N'05', N'AYACUCHO', N'0511', N'VILCAS HUAMAN', N'ACCOMARCA', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 82, 3387, -13.8006, -73.9042, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (557, N'050904', N'051103', N'05', N'AYACUCHO', N'0511', N'VILCAS HUAMAN', N'CARHUANCA', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 57, 2980, -13.7425, -73.7872, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (558, N'050905', N'051104', N'05', N'AYACUCHO', N'0511', N'VILCAS HUAMAN', N'CONCEPCION', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 215, 3061, -13.5325, -73.8753, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (559, N'050906', N'051105', N'05', N'AYACUCHO', N'0511', N'VILCAS HUAMAN', N'HUAMBALPA', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 151, 3294, -13.7503, -73.9317, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (560, N'050908', N'051106', N'05', N'AYACUCHO', N'0511', N'VILCAS HUAMAN', N'INDEPENDENCIA', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 85, 3606, -13.8528, -73.8772, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (561, N'050907', N'051107', N'05', N'AYACUCHO', N'0511', N'VILCAS HUAMAN', N'SAURAMA', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 95, 3574, -13.6956, -73.7594, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (562, N'050902', N'051108', N'05', N'AYACUCHO', N'0511', N'VILCAS HUAMAN', N'VISCHONGO', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', 269, 3150, -13.5892, -73.9953, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (563, N'060101', N'060101', N'06', N'CAJAMARCA', N'0601', N'CAJAMARCA', N'CAJAMARCA', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 383, 2731, -7.1547, -78.5108, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (564, N'060102', N'060102', N'06', N'CAJAMARCA', N'0601', N'CAJAMARCA', N'ASUNCION', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 210, 2254, -7.3247, -78.5186, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (565, N'060104', N'060103', N'06', N'CAJAMARCA', N'0601', N'CAJAMARCA', N'CHETILLA', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 74, 2802, -7.1469, -78.6733, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (566, N'060103', N'060104', N'06', N'CAJAMARCA', N'0601', N'CAJAMARCA', N'COSPAN', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 559, 2471, -7.4272, -78.5422, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (567, N'060105', N'060105', N'06', N'CAJAMARCA', N'0601', N'CAJAMARCA', N'ENCAÑADA', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 635, 3087, -7.0869, -78.3444, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (568, N'060106', N'060106', N'06', N'CAJAMARCA', N'0601', N'CAJAMARCA', N'JESUS', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 268, 2568, -7.2486, -78.3792, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (569, N'060108', N'060107', N'06', N'CAJAMARCA', N'0601', N'CAJAMARCA', N'LLACANORA', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 49, 2621, -7.1936, -78.4267, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (570, N'060107', N'060108', N'06', N'CAJAMARCA', N'0601', N'CAJAMARCA', N'LOS BAÑOS DEL INCA', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 276, 2685, -7.1636, -78.4644, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (571, N'060109', N'060109', N'06', N'CAJAMARCA', N'0601', N'CAJAMARCA', N'MAGDALENA', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 215, 1298, -7.2508, -78.6597, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (572, N'060110', N'060110', N'06', N'CAJAMARCA', N'0601', N'CAJAMARCA', N'MATARA', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 60, 2834, -7.2547, -78.2597, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (573, N'060111', N'060111', N'06', N'CAJAMARCA', N'0601', N'CAJAMARCA', N'NAMORA', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 181, 2765, -7.2028, -78.3247, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (574, N'060112', N'060112', N'06', N'CAJAMARCA', N'0601', N'CAJAMARCA', N'SAN JUAN', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 70, 2336, -7.2917, -78.4975, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (575, N'060201', N'060201', N'06', N'CAJAMARCA', N'0602', N'CAJABAMBA', N'CAJABAMBA', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 192, 2687, -7.6231, -78.0461, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (576, N'060202', N'060202', N'06', N'CAJAMARCA', N'0602', N'CAJABAMBA', N'CACHACHI', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 821, 3224, -7.4489, -78.2689, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (577, N'060203', N'060203', N'06', N'CAJAMARCA', N'0602', N'CAJABAMBA', N'CONDEBAMBA', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 205, 2829, -7.5736, -78.0697, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (578, N'060205', N'060204', N'06', N'CAJAMARCA', N'0602', N'CAJABAMBA', N'SITACOCHA', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 590, 3209, -7.5194, -77.9694, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (579, N'060301', N'060301', N'06', N'CAJAMARCA', N'0603', N'CELENDIN', N'CELENDIN', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 409, 2629, -6.8669, -78.1431, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (580, N'060303', N'060302', N'06', N'CAJAMARCA', N'0603', N'CELENDIN', N'CHUMUCH', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 196, 2202, -6.6028, -78.2003, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (581, N'060302', N'060303', N'06', N'CAJAMARCA', N'0603', N'CELENDIN', N'CORTEGANA', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 233, 2352, -6.5131, -78.3289, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (582, N'060304', N'060304', N'06', N'CAJAMARCA', N'0603', N'CELENDIN', N'HUASMIN', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 438, 2543, -6.8375, -78.2447, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (583, N'060305', N'060305', N'06', N'CAJAMARCA', N'0603', N'CELENDIN', N'JORGE CHAVEZ', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 53, 2646, -6.9411, -78.0917, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (584, N'060306', N'060306', N'06', N'CAJAMARCA', N'0603', N'CELENDIN', N'JOSE GALVEZ', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 58, 2618, -6.9256, -78.1328, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (585, N'060307', N'060307', N'06', N'CAJAMARCA', N'0603', N'CELENDIN', N'MIGUEL IGLESIAS', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 236, 2813, -6.6503, -78.2325, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (586, N'060308', N'060308', N'06', N'CAJAMARCA', N'0603', N'CELENDIN', N'OXAMARCA', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 293, 2836, -7.0422, -78.0683, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (587, N'060309', N'060309', N'06', N'CAJAMARCA', N'0603', N'CELENDIN', N'SOROCHUCO', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 170, 2663, -6.9119, -78.2553, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (588, N'060310', N'060310', N'06', N'CAJAMARCA', N'0603', N'CELENDIN', N'SUCRE', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 271, 2632, -6.9428, -78.1353, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (589, N'060311', N'060311', N'06', N'CAJAMARCA', N'0603', N'CELENDIN', N'UTCO', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 101, 2225, -6.8964, -78.0633, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (590, N'060312', N'060312', N'06', N'CAJAMARCA', N'0603', N'CELENDIN', N'LA LIBERTAD DE PALLAN', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 184, 2952, -6.7239, -78.2825, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (591, N'060601', N'060401', N'06', N'CAJAMARCA', N'0604', N'CHOTA', N'CHOTA', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 262, 2430, -6.5597, -78.6469, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (592, N'060602', N'060402', N'06', N'CAJAMARCA', N'0604', N'CHOTA', N'ANGUIA', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 123, 2620, -6.3419, -78.6053, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (593, N'060605', N'060403', N'06', N'CAJAMARCA', N'0604', N'CHOTA', N'CHADIN', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 67, 2429, -6.4714, -78.4194, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (594, N'060606', N'060404', N'06', N'CAJAMARCA', N'0604', N'CHOTA', N'CHIGUIRIP', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 51, 2652, -6.4283, -78.7214, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (595, N'060607', N'060405', N'06', N'CAJAMARCA', N'0604', N'CHOTA', N'CHIMBAN', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 199, 1668, -6.2517, -78.4789, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (596, N'060618', N'060406', N'06', N'CAJAMARCA', N'0604', N'CHOTA', N'CHOROPAMPA', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 172, 2215, -6.3711, -78.4119, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (597, N'060603', N'060407', N'06', N'CAJAMARCA', N'0604', N'CHOTA', N'COCHABAMBA', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 130, 1688, -6.4739, -78.8858, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (598, N'060604', N'060408', N'06', N'CAJAMARCA', N'0604', N'CHOTA', N'CONCHAN', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 180, 2321, -6.4447, -78.6558, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (599, N'060608', N'060409', N'06', N'CAJAMARCA', N'0604', N'CHOTA', N'HUAMBOS', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 241, 2292, -6.4528, -78.9611, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (600, N'060609', N'060410', N'06', N'CAJAMARCA', N'0604', N'CHOTA', N'LAJAS', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 121, 2151, -6.5606, -78.7347, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (601, N'060610', N'060411', N'06', N'CAJAMARCA', N'0604', N'CHOTA', N'LLAMA', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 495, 2112, -6.5144, -79.1203, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (602, N'060611', N'060412', N'06', N'CAJAMARCA', N'0604', N'CHOTA', N'MIRACOSTA', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 416, 2983, -6.4044, -79.2836, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (603, N'060612', N'060413', N'06', N'CAJAMARCA', N'0604', N'CHOTA', N'PACCHA', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 94, 2130, -6.4975, -78.4236, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (604, N'060613', N'060414', N'06', N'CAJAMARCA', N'0604', N'CHOTA', N'PION', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 141, 1834, -6.1778, -78.4825, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (605, N'060614', N'060415', N'06', N'CAJAMARCA', N'0604', N'CHOTA', N'QUEROCOTO', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 301, 2445, -6.3597, -79.0344, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (606, N'060617', N'060416', N'06', N'CAJAMARCA', N'0604', N'CHOTA', N'SAN JUAN DE LICUPIS', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 205, 3031, -6.4242, -79.2422, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (607, N'060615', N'060417', N'06', N'CAJAMARCA', N'0604', N'CHOTA', N'TACABAMBA', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 196, 2077, -6.3928, -78.6114, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (608, N'060616', N'060418', N'06', N'CAJAMARCA', N'0604', N'CHOTA', N'TOCMOCHE', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 222, 1313, -6.4128, -79.3608, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (609, N'060619', N'060419', N'06', N'CAJAMARCA', N'0604', N'CHOTA', N'CHALAMARCA', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 180, 2667, -6.5031, -78.4797, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (610, N'060401', N'060501', N'06', N'CAJAMARCA', N'0605', N'CONTUMAZA', N'CONTUMAZA', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 358, 2695, -7.3667, -78.8053, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (611, N'060403', N'060502', N'06', N'CAJAMARCA', N'0605', N'CONTUMAZA', N'CHILETE', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 134, 883, -7.2214, -78.8397, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (612, N'060406', N'060503', N'06', N'CAJAMARCA', N'0605', N'CONTUMAZA', N'CUPISNIQUE', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 280, 1904, -7.3489, -79.0297, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (613, N'060404', N'060504', N'06', N'CAJAMARCA', N'0605', N'CONTUMAZA', N'GUZMANGO', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 50, 2568, -7.3839, -78.8961, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (614, N'060405', N'060505', N'06', N'CAJAMARCA', N'0605', N'CONTUMAZA', N'SAN BENITO', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 487, 1386, -7.425, -78.9275, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (615, N'060409', N'060506', N'06', N'CAJAMARCA', N'0605', N'CONTUMAZA', N'SANTA CRUZ DE TOLEDO', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 65, 2426, -7.3444, -78.8367, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (616, N'060407', N'060507', N'06', N'CAJAMARCA', N'0605', N'CONTUMAZA', N'TANTARICA', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 150, 2780, -7.3006, -78.9331, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (617, N'060408', N'060508', N'06', N'CAJAMARCA', N'0605', N'CONTUMAZA', N'YONAN', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 547, 453, -7.2531, -79.1311, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (618, N'060501', N'060601', N'06', N'CAJAMARCA', N'0606', N'CUTERVO', N'CUTERVO', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 422, 2665, -6.3772, -78.8181, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (619, N'060502', N'060602', N'06', N'CAJAMARCA', N'0606', N'CUTERVO', N'CALLAYUC', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 316, 1558, -6.1811, -78.9106, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (620, N'060504', N'060603', N'06', N'CAJAMARCA', N'0606', N'CUTERVO', N'CHOROS', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 277, 474, -5.9, -78.6939, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (621, N'060503', N'060604', N'06', N'CAJAMARCA', N'0606', N'CUTERVO', N'CUJILLO', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 109, 1598, -6.1069, -78.5739, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (622, N'060505', N'060605', N'06', N'CAJAMARCA', N'0606', N'CUTERVO', N'LA RAMADA', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 30, 2131, -6.2533, -78.5756, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (623, N'060506', N'060606', N'06', N'CAJAMARCA', N'0606', N'CUTERVO', N'PIMPINGOS', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 186, 1757, -6.0619, -78.7586, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (624, N'060507', N'060607', N'06', N'CAJAMARCA', N'0606', N'CUTERVO', N'QUEROCOTILLO', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 697, 2003, -6.2736, -79.0378, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (625, N'060508', N'060608', N'06', N'CAJAMARCA', N'0606', N'CUTERVO', N'SAN ANDRES DE CUTERVO', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 133, 2090, -6.2389, -78.7128, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (626, N'060509', N'060609', N'06', N'CAJAMARCA', N'0606', N'CUTERVO', N'SAN JUAN DE CUTERVO', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 61, 1645, -6.1631, -78.5981, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (627, N'060510', N'060610', N'06', N'CAJAMARCA', N'0606', N'CUTERVO', N'SAN LUIS DE LUCMA', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 110, 1916, -6.2939, -78.6036, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (628, N'060511', N'060611', N'06', N'CAJAMARCA', N'0606', N'CUTERVO', N'SANTA CRUZ', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 128, 1708, -6.095, -78.8528, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (629, N'060512', N'060612', N'06', N'CAJAMARCA', N'0606', N'CUTERVO', N'SANTO DOMINGO DE LA CAPILLA', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 104, 1761, -6.2447, -78.8553, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (630, N'060513', N'060613', N'06', N'CAJAMARCA', N'0606', N'CUTERVO', N'SANTO TOMAS', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 280, 2167, -6.1514, -78.6819, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (631, N'060514', N'060614', N'06', N'CAJAMARCA', N'0606', N'CUTERVO', N'SOCOTA', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 135, 1847, -6.3153, -78.6994, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (632, N'060515', N'060615', N'06', N'CAJAMARCA', N'0606', N'CUTERVO', N'TORIBIO CASANOVA', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 41, 1464, -6.0042, -78.6983, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (633, N'060701', N'060701', N'06', N'CAJAMARCA', N'0607', N'HUALGAYOC', N'BAMBAMARCA', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 451, 2556, -6.6797, -78.5189, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (634, N'060702', N'060702', N'06', N'CAJAMARCA', N'0607', N'HUALGAYOC', N'CHUGUR', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 100, 2765, -6.6708, -78.7383, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (635, N'060703', N'060703', N'06', N'CAJAMARCA', N'0607', N'HUALGAYOC', N'HUALGAYOC', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 226, 3530, -6.7647, -78.6081, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (636, N'060801', N'060801', N'06', N'CAJAMARCA', N'0608', N'JAEN', N'JAEN', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 537, 728, -5.7089, -78.8092, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (637, N'060802', N'060802', N'06', N'CAJAMARCA', N'0608', N'JAEN', N'BELLAVISTA', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 871, 438, -5.6678, -78.6772, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (638, N'060804', N'060803', N'06', N'CAJAMARCA', N'0608', N'JAEN', N'CHONTALI', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 429, 1636, -5.6461, -79.0883, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (639, N'060803', N'060804', N'06', N'CAJAMARCA', N'0608', N'JAEN', N'COLASAY', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 736, 1800, -5.9786, -79.0686, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (640, N'060812', N'060805', N'06', N'CAJAMARCA', N'0608', N'JAEN', N'HUABAL', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 81, 1380, -5.6125, -78.8997, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (641, N'060811', N'060806', N'06', N'CAJAMARCA', N'0608', N'JAEN', N'LAS PIRIAS', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 60, 1620, -5.6272, -78.8528, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (642, N'060805', N'060807', N'06', N'CAJAMARCA', N'0608', N'JAEN', N'POMAHUACA', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 733, 1097, -5.9314, -79.2294, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (643, N'060806', N'060808', N'06', N'CAJAMARCA', N'0608', N'JAEN', N'PUCARA', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 240, 909, -6.0414, -79.1283, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (644, N'060807', N'060809', N'06', N'CAJAMARCA', N'0608', N'JAEN', N'SALLIQUE', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 374, 1701, -5.6581, -79.3153, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (645, N'060808', N'060810', N'06', N'CAJAMARCA', N'0608', N'JAEN', N'SAN FELIPE', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 255, 1861, -5.7703, -79.3139, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (646, N'060809', N'060811', N'06', N'CAJAMARCA', N'0608', N'JAEN', N'SAN JOSE DEL ALTO', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 634, 1399, -5.465, -79.0178, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (647, N'060810', N'060812', N'06', N'CAJAMARCA', N'0608', N'JAEN', N'SANTA ROSA', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 283, 1238, -5.4342, -78.5667, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (648, N'061101', N'060901', N'06', N'CAJAMARCA', N'0609', N'SAN IGNACIO', N'SAN IGNACIO', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 382, 1295, -5.1461, -79.0047, N'SI')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (649, N'061102', N'060902', N'06', N'CAJAMARCA', N'0609', N'SAN IGNACIO', N'CHIRINOS', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 352, 1850, -5.3058, -78.8983, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (650, N'061103', N'060903', N'06', N'CAJAMARCA', N'0609', N'SAN IGNACIO', N'HUARANGO', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 922, 776, -5.2722, -78.7758, N'SI')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (651, N'061105', N'060904', N'06', N'CAJAMARCA', N'0609', N'SAN IGNACIO', N'LA COIPA', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 376, 1507, -5.3928, -78.9064, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (652, N'061104', N'060905', N'06', N'CAJAMARCA', N'0609', N'SAN IGNACIO', N'NAMBALLE', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 664, 713, -5.0042, -79.0872, N'SI')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (653, N'061106', N'060906', N'06', N'CAJAMARCA', N'0609', N'SAN IGNACIO', N'SAN JOSE DE LOURDES', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 1483, 1134, -5.1031, -78.9142, N'SI')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (654, N'061107', N'060907', N'06', N'CAJAMARCA', N'0609', N'SAN IGNACIO', N'TABACONAS', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 799, 1897, -5.3161, -79.2833, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (655, N'061201', N'061001', N'06', N'CAJAMARCA', N'0610', N'SAN MARCOS', N'PEDRO GALVEZ', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 239, 2280, -7.3358, -78.17, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (656, N'061207', N'061002', N'06', N'CAJAMARCA', N'0610', N'SAN MARCOS', N'CHANCAY', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 62, 2699, -7.3881, -78.1233, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (657, N'061205', N'061003', N'06', N'CAJAMARCA', N'0610', N'SAN MARCOS', N'EDUARDO VILLANUEVA', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 63, 2026, -7.4644, -78.13, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (658, N'061203', N'061004', N'06', N'CAJAMARCA', N'0610', N'SAN MARCOS', N'GREGORIO PITA', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 213, 2722, -7.2736, -78.16, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (659, N'061202', N'061005', N'06', N'CAJAMARCA', N'0610', N'SAN MARCOS', N'ICHOCAN', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 76, 2616, -7.3689, -78.1297, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (660, N'061204', N'061006', N'06', N'CAJAMARCA', N'0610', N'SAN MARCOS', N'JOSE MANUEL QUIROZ', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 115, 2781, -7.3494, -78.0478, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (661, N'061206', N'061007', N'06', N'CAJAMARCA', N'0610', N'SAN MARCOS', N'JOSE SABOGAL', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 594, 3331, -7.2511, -78.0367, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (662, N'061001', N'061101', N'06', N'CAJAMARCA', N'0611', N'SAN MIGUEL', N'SAN MIGUEL', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 368, 2612, -7, -78.85, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (663, N'061013', N'061102', N'06', N'CAJAMARCA', N'0611', N'SAN MIGUEL', N'BOLIVAR', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 79, 940, -6.9769, -79.1781, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (664, N'061002', N'061103', N'06', N'CAJAMARCA', N'0611', N'SAN MIGUEL', N'CALQUIS', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 339, 2877, -6.9803, -78.85, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (665, N'061012', N'061104', N'06', N'CAJAMARCA', N'0611', N'SAN MIGUEL', N'CATILLUC', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 197, 2870, -6.8017, -78.7792, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (666, N'061009', N'061105', N'06', N'CAJAMARCA', N'0611', N'SAN MIGUEL', N'EL PRADO', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 71, 2857, -7.0336, -79.0108, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (667, N'061003', N'061106', N'06', N'CAJAMARCA', N'0611', N'SAN MIGUEL', N'LA FLORIDA', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 61, 993, -6.8686, -79.1258, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (668, N'061004', N'061107', N'06', N'CAJAMARCA', N'0611', N'SAN MIGUEL', N'LLAPA', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 133, 2952, -6.9808, -78.8075, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (669, N'061005', N'061108', N'06', N'CAJAMARCA', N'0611', N'SAN MIGUEL', N'NANCHOC', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 359, 402, -6.9594, -79.2425, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (670, N'061006', N'061109', N'06', N'CAJAMARCA', N'0611', N'SAN MIGUEL', N'NIEPOS', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 159, 2457, -6.9267, -79.13, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (671, N'061007', N'061110', N'06', N'CAJAMARCA', N'0611', N'SAN MIGUEL', N'SAN GREGORIO', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 308, 1857, -7.0569, -79.0953, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (672, N'061008', N'061111', N'06', N'CAJAMARCA', N'0611', N'SAN MIGUEL', N'SAN SILVESTRE DE COCHAN', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 132, 2940, -6.9775, -78.7739, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (673, N'061011', N'061112', N'06', N'CAJAMARCA', N'0611', N'SAN MIGUEL', N'TONGOD', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 164, 2628, -6.7575, -78.825, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (674, N'061010', N'061113', N'06', N'CAJAMARCA', N'0611', N'SAN MIGUEL', N'UNION AGUA BLANCA', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 172, 2918, -7.0467, -79.0606, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (675, N'061301', N'061201', N'06', N'CAJAMARCA', N'0612', N'SAN PABLO', N'SAN PABLO', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 198, 2391, -7.1186, -78.8233, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (676, N'061302', N'061202', N'06', N'CAJAMARCA', N'0612', N'SAN PABLO', N'SAN BERNARDINO', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 167, 1375, -7.1681, -78.8292, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (677, N'061303', N'061203', N'06', N'CAJAMARCA', N'0612', N'SAN PABLO', N'SAN LUIS', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 43, 1394, -7.1569, -78.8681, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (678, N'061304', N'061204', N'06', N'CAJAMARCA', N'0612', N'SAN PABLO', N'TUMBADEN', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 264, 3041, -7.0253, -78.7397, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (679, N'060901', N'061301', N'06', N'CAJAMARCA', N'0613', N'SANTA CRUZ', N'SANTA CRUZ', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 103, 2036, -6.6258, -78.9442, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (680, N'060910', N'061302', N'06', N'CAJAMARCA', N'0613', N'SANTA CRUZ', N'ANDABAMBA', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 8, 2550, -6.6628, -78.8169, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (681, N'060902', N'061303', N'06', N'CAJAMARCA', N'0613', N'SANTA CRUZ', N'CATACHE', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 609, 1363, -6.6736, -79.0328, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (682, N'060903', N'061304', N'06', N'CAJAMARCA', N'0613', N'SANTA CRUZ', N'CHANCAYBAÑOS', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 120, 1641, -6.5761, -78.8675, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (683, N'060904', N'061305', N'06', N'CAJAMARCA', N'0613', N'SANTA CRUZ', N'LA ESPERANZA', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 60, 1727, -6.5925, -78.8958, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (684, N'060905', N'061306', N'06', N'CAJAMARCA', N'0613', N'SANTA CRUZ', N'NINABAMBA', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 60, 2196, -6.6497, -78.7875, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (685, N'060906', N'061307', N'06', N'CAJAMARCA', N'0613', N'SANTA CRUZ', N'PULAN', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 156, 2084, -6.7389, -78.9203, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (686, N'060911', N'061308', N'06', N'CAJAMARCA', N'0613', N'SANTA CRUZ', N'SAUCEPAMPA', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 32, 1931, -6.6914, -78.9161, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (687, N'060907', N'061309', N'06', N'CAJAMARCA', N'0613', N'SANTA CRUZ', N'SEXI', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 193, 2478, -6.5642, -79.0514, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (688, N'060908', N'061310', N'06', N'CAJAMARCA', N'0613', N'SANTA CRUZ', N'UTICYACU', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 43, 2346, -6.6067, -78.7939, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (689, N'060909', N'061311', N'06', N'CAJAMARCA', N'0613', N'SANTA CRUZ', N'YAUYUCAN', N'CAJAMARCA', N'NORTE', N'MACROREGION NORTE', N'PE-CAJ', N'06', 35, 2502, -6.6772, -78.8186, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (690, N'240101', N'070101', N'07', N'CALLAO', N'0701', N'CALLAO', N'CALLAO', N'CALLAO', N'LIMA METROPOLITANA', N'LIMA Y CALLAO', N'PE-CAL', N'07', 46, 27, -12.0631, -77.1469, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (691, N'240102', N'070102', N'07', N'CALLAO', N'0701', N'CALLAO', N'BELLAVISTA', N'CALLAO', N'LIMA METROPOLITANA', N'LIMA Y CALLAO', N'PE-CAL', N'07', 5, 13, -12.0625, -77.1292, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (692, N'240104', N'070103', N'07', N'CALLAO', N'0701', N'CALLAO', N'CARMEN DE LA LEGUA REYNOSO', N'CALLAO', N'LIMA METROPOLITANA', N'LIMA Y CALLAO', N'PE-CAL', N'07', 2, 82, -12.0394, -77.0903, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (693, N'240105', N'070104', N'07', N'CALLAO', N'0701', N'CALLAO', N'LA PERLA', N'CALLAO', N'LIMA METROPOLITANA', N'LIMA Y CALLAO', N'PE-CAL', N'07', 3, 37, -12.0658, -77.1081, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (694, N'240103', N'070105', N'07', N'CALLAO', N'0701', N'CALLAO', N'LA PUNTA', N'CALLAO', N'LIMA METROPOLITANA', N'LIMA Y CALLAO', N'PE-CAL', N'07', 18, 29, -12.0728, -77.1633, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (695, N'240106', N'070106', N'07', N'CALLAO', N'0701', N'CALLAO', N'VENTANILLA', N'CALLAO', N'LIMA METROPOLITANA', N'LIMA Y CALLAO', N'PE-CAL', N'07', 70, 43, -11.8772, -77.1278, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (696, N'240107', N'070107', N'07', N'CALLAO', N'0701', N'CALLAO', N'MI PERU', N'CALLAO', N'LIMA METROPOLITANA', N'LIMA Y CALLAO', N'PE-CAL', N'07', 3, 118, -11.855, -77.125, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (697, N'070101', N'080101', N'08', N'CUSCO', N'0801', N'CUSCO', N'CUSCO', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 116, 3439, -13.5192, -71.9767, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (698, N'070102', N'080102', N'08', N'CUSCO', N'0801', N'CUSCO', N'CCORCA', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 189, 3675, -13.5847, -72.0592, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (699, N'070103', N'080103', N'08', N'CUSCO', N'0801', N'CUSCO', N'POROY', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 15, 3508, -13.4944, -72.0447, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (700, N'070104', N'080104', N'08', N'CUSCO', N'0801', N'CUSCO', N'SAN JERONIMO', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 103, 3289, -13.5444, -71.8836, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (701, N'070105', N'080105', N'08', N'CUSCO', N'0801', N'CUSCO', N'SAN SEBASTIAN', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 89, 3301, -13.5303, -71.9369, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (702, N'070106', N'080106', N'08', N'CUSCO', N'0801', N'CUSCO', N'SANTIAGO', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 70, 3464, -13.5258, -71.9831, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (703, N'070107', N'080107', N'08', N'CUSCO', N'0801', N'CUSCO', N'SAYLLA', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 28, 3179, -13.57, -71.8278, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (704, N'070108', N'080108', N'08', N'CUSCO', N'0801', N'CUSCO', N'WANCHAQ', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 6, 3424, -13.5214, -71.9667, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (705, N'070201', N'080201', N'08', N'CUSCO', N'0802', N'ACOMAYO', N'ACOMAYO', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 141, 3235, -13.9194, -71.6836, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (706, N'070202', N'080202', N'08', N'CUSCO', N'0802', N'ACOMAYO', N'ACOPIA', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 92, 3724, -14.0575, -71.4933, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (707, N'070203', N'080203', N'08', N'CUSCO', N'0802', N'ACOMAYO', N'ACOS', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 138, 3106, -13.9511, -71.7381, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (708, N'070207', N'080204', N'08', N'CUSCO', N'0802', N'ACOMAYO', N'MOSOC LLACTA', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 44, 3820, -14.1203, -71.4731, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (709, N'070204', N'080205', N'08', N'CUSCO', N'0802', N'ACOMAYO', N'POMACANCHI', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 276, 3709, -14.0336, -71.5742, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (710, N'070205', N'080206', N'08', N'CUSCO', N'0802', N'ACOMAYO', N'RONDOCAN', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 180, 3394, -13.7794, -71.7819, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (711, N'070206', N'080207', N'08', N'CUSCO', N'0802', N'ACOMAYO', N'SANGARARA', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 78, 3788, -13.9472, -71.6033, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (712, N'070301', N'080301', N'08', N'CUSCO', N'0803', N'ANTA', N'ANTA', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 203, 3363, -13.4578, -72.1475, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (713, N'070309', N'080302', N'08', N'CUSCO', N'0803', N'ANTA', N'ANCAHUASI', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 124, 3479, -13.4572, -72.3008, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (714, N'070308', N'080303', N'08', N'CUSCO', N'0803', N'ANTA', N'CACHIMAYO', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 43, 3454, -13.4778, -72.0689, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (715, N'070302', N'080304', N'08', N'CUSCO', N'0803', N'ANTA', N'CHINCHAYPUJIO', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 391, 3106, -13.6297, -72.2331, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (716, N'070303', N'080305', N'08', N'CUSCO', N'0803', N'ANTA', N'HUAROCONDO', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 229, 3353, -13.4158, -72.2075, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (717, N'070304', N'080306', N'08', N'CUSCO', N'0803', N'ANTA', N'LIMATAMBO', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 513, 2633, -13.4797, -72.4428, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (718, N'070305', N'080307', N'08', N'CUSCO', N'0803', N'ANTA', N'MOLLEPATA', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 284, 2864, -13.5092, -72.5278, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (719, N'070306', N'080308', N'08', N'CUSCO', N'0803', N'ANTA', N'PUCYURA', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 38, 3384, -13.4789, -72.1111, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (720, N'070307', N'080309', N'08', N'CUSCO', N'0803', N'ANTA', N'ZURITE', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 52, 3424, -13.4558, -72.2558, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (721, N'070401', N'080401', N'08', N'CUSCO', N'0804', N'CALCA', N'CALCA', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 311, 2955, -13.3211, -71.9556, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (722, N'070402', N'080402', N'08', N'CUSCO', N'0804', N'CALCA', N'COYA', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 71, 2970, -13.3864, -71.8983, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (723, N'070403', N'080403', N'08', N'CUSCO', N'0804', N'CALCA', N'LAMAY', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 94, 2960, -13.3644, -71.9208, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (724, N'070404', N'080404', N'08', N'CUSCO', N'0804', N'CALCA', N'LARES', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 527, 3193, -13.1042, -72.0447, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (725, N'070405', N'080405', N'08', N'CUSCO', N'0804', N'CALCA', N'PISAC', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 148, 2986, -13.4206, -71.8506, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (726, N'070406', N'080406', N'08', N'CUSCO', N'0804', N'CALCA', N'SAN SALVADOR', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 128, 3012, -13.4919, -71.7786, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (727, N'070407', N'080407', N'08', N'CUSCO', N'0804', N'CALCA', N'TARAY', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 54, 2991, -13.4278, -71.8669, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (728, N'070408', N'080408', N'08', N'CUSCO', N'0804', N'CALCA', N'YANATILE', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 3080, 1148, -12.6817, -72.2772, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (729, N'070501', N'080501', N'08', N'CUSCO', N'0805', N'CANAS', N'YANAOCA', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 293, 3925, -14.2167, -71.4322, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (730, N'070502', N'080502', N'08', N'CUSCO', N'0805', N'CANAS', N'CHECCA', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 504, 3834, -14.4733, -71.3947, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (731, N'070503', N'080503', N'08', N'CUSCO', N'0805', N'CANAS', N'KUNTURKANKI', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 376, 3961, -14.5347, -71.3069, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (732, N'070504', N'080504', N'08', N'CUSCO', N'0805', N'CANAS', N'LANGUI', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 187, 3967, -14.4322, -71.2728, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (733, N'070505', N'080505', N'08', N'CUSCO', N'0805', N'CANAS', N'LAYO', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 453, 3997, -14.4942, -71.1556, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (734, N'070506', N'080506', N'08', N'CUSCO', N'0805', N'CANAS', N'PAMPAMARCA', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 30, 3820, -14.1475, -71.4603, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (735, N'070507', N'080507', N'08', N'CUSCO', N'0805', N'CANAS', N'QUEHUE', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 143, 3794, -14.3803, -71.4556, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (736, N'070508', N'080508', N'08', N'CUSCO', N'0805', N'CANAS', N'TUPAC AMARU', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 118, 3809, -14.1639, -71.4761, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (737, N'070601', N'080601', N'08', N'CUSCO', N'0806', N'CANCHIS', N'SICUANI', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 646, 3593, -14.2381, -71.2308, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (738, N'070603', N'080602', N'08', N'CUSCO', N'0806', N'CANCHIS', N'CHECACUPE', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 962, 3459, -14.0253, -71.4539, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (739, N'070602', N'080603', N'08', N'CUSCO', N'0806', N'CANCHIS', N'COMBAPATA', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 183, 3500, -14.1019, -71.43, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (740, N'070604', N'080604', N'08', N'CUSCO', N'0806', N'CANCHIS', N'MARANGANI', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 433, 3720, -14.3567, -71.1686, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (741, N'070605', N'080605', N'08', N'CUSCO', N'0806', N'CANCHIS', N'PITUMARCA', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 1118, 3587, -13.9803, -71.4175, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (742, N'070606', N'080606', N'08', N'CUSCO', N'0806', N'CANCHIS', N'SAN PABLO', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 524, 3501, -14.2022, -71.315, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (743, N'070607', N'080607', N'08', N'CUSCO', N'0806', N'CANCHIS', N'SAN PEDRO', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 55, 3515, -14.1861, -71.3431, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (744, N'070608', N'080608', N'08', N'CUSCO', N'0806', N'CANCHIS', N'TINTA', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 79, 3496, -14.1453, -71.4072, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (745, N'070701', N'080701', N'08', N'CUSCO', N'0807', N'CHUMBIVILCAS', N'SANTO TOMAS', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 1924, 3676, -14.4533, -72.0822, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (746, N'070702', N'080702', N'08', N'CUSCO', N'0807', N'CHUMBIVILCAS', N'CAPACMARCA', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 272, 3563, -14.0072, -72.0025, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (747, N'070704', N'080703', N'08', N'CUSCO', N'0807', N'CHUMBIVILCAS', N'CHAMACA', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 674, 3779, -14.3025, -71.8522, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (748, N'070703', N'080704', N'08', N'CUSCO', N'0807', N'CHUMBIVILCAS', N'COLQUEMARCA', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 449, 3606, -14.2853, -72.04, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (749, N'070705', N'080705', N'08', N'CUSCO', N'0807', N'CHUMBIVILCAS', N'LIVITACA', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 758, 3774, -14.3128, -71.6897, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (750, N'070706', N'080706', N'08', N'CUSCO', N'0807', N'CHUMBIVILCAS', N'LLUSCO', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 315, 3522, -14.3375, -72.1136, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (751, N'070707', N'080707', N'08', N'CUSCO', N'0807', N'CHUMBIVILCAS', N'QUIÑOTA', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 221, 3607, -14.3111, -72.1386, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (752, N'070708', N'080708', N'08', N'CUSCO', N'0807', N'CHUMBIVILCAS', N'VELILLE', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 757, 3766, -14.5086, -71.8811, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (753, N'070801', N'080801', N'08', N'CUSCO', N'0808', N'ESPINAR', N'ESPINAR', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 748, 3976, -14.7931, -71.4133, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (754, N'070802', N'080802', N'08', N'CUSCO', N'0808', N'ESPINAR', N'CONDOROMA', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 513, 4679, -15.3006, -71.1383, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (755, N'070803', N'080803', N'08', N'CUSCO', N'0808', N'ESPINAR', N'COPORAQUE', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 1564, 3970, -14.8003, -71.5317, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (756, N'070804', N'080804', N'08', N'CUSCO', N'0808', N'ESPINAR', N'OCORURO', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 353, 4104, -15.0519, -71.1292, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (757, N'070805', N'080805', N'08', N'CUSCO', N'0808', N'ESPINAR', N'PALLPATA', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 816, 4027, -14.8903, -71.21, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (758, N'070806', N'080806', N'08', N'CUSCO', N'0808', N'ESPINAR', N'PICHIGUA', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 289, 3902, -14.6781, -71.4064, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (759, N'070807', N'080807', N'08', N'CUSCO', N'0808', N'ESPINAR', N'SUYCKUTAMBO', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 652, 4124, -15.0086, -71.6433, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (760, N'070808', N'080808', N'08', N'CUSCO', N'0808', N'ESPINAR', N'ALTO PICHIGUA', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 376, 3999, -14.7769, -71.2508, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (761, N'070901', N'080901', N'08', N'CUSCO', N'0809', N'LA CONVENCION', N'SANTA ANA', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 359, 1086, -12.8628, -72.6933, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (762, N'070902', N'080902', N'08', N'CUSCO', N'0809', N'LA CONVENCION', N'ECHARATE', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 19136, 1059, -12.7681, -72.5761, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (763, N'070903', N'080903', N'08', N'CUSCO', N'0809', N'LA CONVENCION', N'HUAYOPATA', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 524, 1597, -13.0047, -72.5544, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (764, N'070904', N'080904', N'08', N'CUSCO', N'0809', N'LA CONVENCION', N'MARANURA', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 150, 1141, -12.9628, -72.6647, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (765, N'070905', N'080905', N'08', N'CUSCO', N'0809', N'LA CONVENCION', N'OCOBAMBA', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 841, 1479, -12.8717, -72.4472, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (766, N'070908', N'080906', N'08', N'CUSCO', N'0809', N'LA CONVENCION', N'QUELLOUNO', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 800, 784, -12.6367, -72.5572, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (767, N'070909', N'080907', N'08', N'CUSCO', N'0809', N'LA CONVENCION', N'QUIMBIRI', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 906, 590, -12.62, -73.7892, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (768, N'070906', N'080908', N'08', N'CUSCO', N'0809', N'LA CONVENCION', N'SANTA TERESA', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 1340, 1572, -13.1306, -72.5939, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (769, N'070907', N'080909', N'08', N'CUSCO', N'0809', N'LA CONVENCION', N'VILCABAMBA', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 3319, 2656, -13.0631, -72.9344, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (770, N'070910', N'080910', N'08', N'CUSCO', N'0809', N'LA CONVENCION', N'PICHARI', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 730, 596, -12.5194, -73.8292, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (771, N'070911', N'080911', N'08', N'CUSCO', N'0809', N'LA CONVENCION', N'INKAWASI', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 1102, 1771, -13.29, -73.2656, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (772, N'070912', N'080912', N'08', N'CUSCO', N'0809', N'LA CONVENCION', N'VILLA VIRGEN', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 626, 742, -13.0028, -73.5128, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (773, N'070913', N'080913', N'08', N'CUSCO', N'0809', N'LA CONVENCION', N'VILLA KINTIARINA', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 229, 704, -12.9189, -73.5283, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (774, N'070915', N'080914', N'08', N'CUSCO', N'0809', N'LA CONVENCION', N'MEGANTONI', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', NULL, 355, -11.7203, -72.9464, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (775, N'071001', N'081001', N'08', N'CUSCO', N'0810', N'PARURO', N'PARURO', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 153, 3086, -13.7617, -71.8478, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (776, N'071002', N'081002', N'08', N'CUSCO', N'0810', N'PARURO', N'ACCHA', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 245, 3601, -13.9711, -71.8314, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (777, N'071003', N'081003', N'08', N'CUSCO', N'0810', N'PARURO', N'CCAPI', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 335, 3227, -13.8531, -72.0825, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (778, N'071004', N'081004', N'08', N'CUSCO', N'0810', N'PARURO', N'COLCHA', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 140, 2827, -13.8519, -71.8033, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (779, N'071005', N'081005', N'08', N'CUSCO', N'0810', N'PARURO', N'HUANOQUITE', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 363, 3391, -13.6819, -72.0181, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (780, N'071006', N'081006', N'08', N'CUSCO', N'0810', N'PARURO', N'OMACHA', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 436, 3887, -14.0694, -71.7381, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (781, N'071008', N'081007', N'08', N'CUSCO', N'0810', N'PARURO', N'PACCARITAMBO', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 143, 3602, -13.7564, -71.9567, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (782, N'071009', N'081008', N'08', N'CUSCO', N'0810', N'PARURO', N'PILLPINTO', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 79, 2869, -13.9536, -71.7606, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (783, N'071007', N'081009', N'08', N'CUSCO', N'0810', N'PARURO', N'YAURISQUE', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 91, 3324, -13.6653, -71.9206, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (784, N'071101', N'081101', N'08', N'CUSCO', N'0811', N'PAUCARTAMBO', N'PAUCARTAMBO', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 1079, 2917, -13.3178, -71.5967, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (785, N'071102', N'081102', N'08', N'CUSCO', N'0811', N'PAUCARTAMBO', N'CAICAY', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 111, 3128, -13.5972, -71.6967, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (786, N'071104', N'081103', N'08', N'CUSCO', N'0811', N'PAUCARTAMBO', N'CHALLABAMBA', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 747, 2845, -13.215, -71.6486, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (787, N'071103', N'081104', N'08', N'CUSCO', N'0811', N'PAUCARTAMBO', N'COLQUEPATA', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 468, 3690, -13.3603, -71.6736, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (788, N'071106', N'081105', N'08', N'CUSCO', N'0811', N'PAUCARTAMBO', N'HUANCARANI', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 145, 3871, -13.5033, -71.6544, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (789, N'071105', N'081106', N'08', N'CUSCO', N'0811', N'PAUCARTAMBO', N'KOSÑIPATA', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 3746, 544, -12.9094, -71.4033, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (790, N'071201', N'081201', N'08', N'CUSCO', N'0812', N'QUISPICANCHI', N'URCOS', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 135, 3179, -13.6878, -71.6253, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (791, N'071202', N'081202', N'08', N'CUSCO', N'0812', N'QUISPICANCHI', N'ANDAHUAYLILLAS', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 85, 3139, -13.6733, -71.6778, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (792, N'071203', N'081203', N'08', N'CUSCO', N'0812', N'QUISPICANCHI', N'CAMANTI', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 3175, 647, -13.2314, -70.7544, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (793, N'071204', N'081204', N'08', N'CUSCO', N'0812', N'QUISPICANCHI', N'CCARHUAYO', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 314, 3481, -13.5953, -71.3997, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (794, N'071205', N'081205', N'08', N'CUSCO', N'0812', N'QUISPICANCHI', N'CCATCA', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 308, 3714, -13.6053, -71.5636, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (795, N'071206', N'081206', N'08', N'CUSCO', N'0812', N'QUISPICANCHI', N'CUSIPATA', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 248, 3332, -13.9069, -71.5025, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (796, N'071207', N'081207', N'08', N'CUSCO', N'0812', N'QUISPICANCHI', N'HUARO', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 106, 3168, -13.6903, -71.6403, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (797, N'071208', N'081208', N'08', N'CUSCO', N'0812', N'QUISPICANCHI', N'LUCRE', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 119, 3117, -13.6339, -71.7367, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (798, N'071209', N'081209', N'08', N'CUSCO', N'0812', N'QUISPICANCHI', N'MARCAPATA', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 1688, 3111, -13.5917, -70.975, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (799, N'071210', N'081210', N'08', N'CUSCO', N'0812', N'QUISPICANCHI', N'OCONGATE', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 953, 3549, -13.6267, -71.3883, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (800, N'071211', N'081211', N'08', N'CUSCO', N'0812', N'QUISPICANCHI', N'OROPESA', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 74, 3139, -13.5944, -71.7631, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (801, N'071212', N'081212', N'08', N'CUSCO', N'0812', N'QUISPICANCHI', N'QUIQUIJANA', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 361, 3211, -13.8225, -71.5425, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (802, N'071301', N'081301', N'08', N'CUSCO', N'0813', N'URUBAMBA', N'URUBAMBA', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 128, 2885, -13.3056, -72.1161, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (803, N'071302', N'081302', N'08', N'CUSCO', N'0813', N'URUBAMBA', N'CHINCHERO', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 95, 3759, -13.3919, -72.0489, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (804, N'071303', N'081303', N'08', N'CUSCO', N'0813', N'URUBAMBA', N'HUAYLLABAMBA', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 102, 2890, -13.3381, -72.065, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (805, N'071304', N'081304', N'08', N'CUSCO', N'0813', N'URUBAMBA', N'MACHUPICCHU', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 271, 2092, -13.1542, -72.5256, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (806, N'071305', N'081305', N'08', N'CUSCO', N'0813', N'URUBAMBA', N'MARAS', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 132, 3381, -13.3325, -72.1564, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (807, N'071306', N'081306', N'08', N'CUSCO', N'0813', N'URUBAMBA', N'OLLANTAYTAMBO', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 640, 2871, -13.2589, -72.2633, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (808, N'071307', N'081307', N'08', N'CUSCO', N'0813', N'URUBAMBA', N'YUCAY', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', 71, 2878, -13.3217, -72.0839, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (809, N'080101', N'090101', N'09', N'HUANCAVELICA', N'0901', N'HUANCAVELICA', N'HUANCAVELICA', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 514, 3746, -12.7869, -74.9714, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (810, N'080102', N'090102', N'09', N'HUANCAVELICA', N'0901', N'HUANCAVELICA', N'ACOBAMBILLA', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 758, 3839, -12.6644, -75.3242, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (811, N'080103', N'090103', N'09', N'HUANCAVELICA', N'0901', N'HUANCAVELICA', N'ACORIA', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 535, 3207, -12.6425, -74.8617, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (812, N'080104', N'090104', N'09', N'HUANCAVELICA', N'0901', N'HUANCAVELICA', N'CONAYCA', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 38, 3709, -12.52, -75.0067, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (813, N'080105', N'090105', N'09', N'HUANCAVELICA', N'0901', N'HUANCAVELICA', N'CUENCA', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 50, 3186, -12.4331, -75.0389, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (814, N'080106', N'090106', N'09', N'HUANCAVELICA', N'0901', N'HUANCAVELICA', N'HUACHOCOLPA', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 336, 4020, -13.0319, -74.9469, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (815, N'080108', N'090107', N'09', N'HUANCAVELICA', N'0901', N'HUANCAVELICA', N'HUAYLLAHUARA', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 39, 3901, -12.4092, -75.1783, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (816, N'080109', N'090108', N'09', N'HUANCAVELICA', N'0901', N'HUANCAVELICA', N'IZCUCHACA', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 12, 2930, -12.5, -74.9978, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (817, N'080110', N'090109', N'09', N'HUANCAVELICA', N'0901', N'HUANCAVELICA', N'LARIA', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 78, 3893, -12.5611, -75.0369, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (818, N'080111', N'090110', N'09', N'HUANCAVELICA', N'0901', N'HUANCAVELICA', N'MANTA', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 154, 3735, -12.6206, -75.2111, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (819, N'080112', N'090111', N'09', N'HUANCAVELICA', N'0901', N'HUANCAVELICA', N'MARISCAL CACERES', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 6, 2852, -12.5344, -74.9325, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (820, N'080113', N'090112', N'09', N'HUANCAVELICA', N'0901', N'HUANCAVELICA', N'MOYA', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 94, 3148, -12.4233, -75.1539, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (821, N'080114', N'090113', N'09', N'HUANCAVELICA', N'0901', N'HUANCAVELICA', N'NUEVO OCCORO', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 212, 3939, -12.595, -75.0197, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (822, N'080115', N'090114', N'09', N'HUANCAVELICA', N'0901', N'HUANCAVELICA', N'PALCA', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 82, 3714, -12.6569, -74.9803, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (823, N'080116', N'090115', N'09', N'HUANCAVELICA', N'0901', N'HUANCAVELICA', N'PILCHACA', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 43, 3604, -12.4014, -75.0839, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (824, N'080117', N'090116', N'09', N'HUANCAVELICA', N'0901', N'HUANCAVELICA', N'VILCA', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 318, 3280, -12.4772, -75.1833, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (825, N'080118', N'090117', N'09', N'HUANCAVELICA', N'0901', N'HUANCAVELICA', N'YAULI', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 320, 3424, -12.7692, -74.8508, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (826, N'080119', N'090118', N'09', N'HUANCAVELICA', N'0901', N'HUANCAVELICA', N'ASCENSION', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 432, 3711, -12.7853, -74.9769, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (827, N'080120', N'090119', N'09', N'HUANCAVELICA', N'0901', N'HUANCAVELICA', N'HUANDO', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 194, 3610, -12.5642, -74.9478, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (828, N'080201', N'090201', N'09', N'HUANCAVELICA', N'0902', N'ACOBAMBA', N'ACOBAMBA', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 123, 3449, -12.8431, -74.5692, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (829, N'080203', N'090202', N'09', N'HUANCAVELICA', N'0902', N'ACOBAMBA', N'ANDABAMBA', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 82, 3499, -12.6936, -74.6233, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (830, N'080202', N'090203', N'09', N'HUANCAVELICA', N'0902', N'ACOBAMBA', N'ANTA', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 91, 3618, -12.8122, -74.6383, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (831, N'080204', N'090204', N'09', N'HUANCAVELICA', N'0902', N'ACOBAMBA', N'CAJA', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 82, 3383, -12.9172, -74.4658, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (832, N'080205', N'090205', N'09', N'HUANCAVELICA', N'0902', N'ACOBAMBA', N'MARCAS', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 156, 3411, -12.8903, -74.3981, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (833, N'080206', N'090206', N'09', N'HUANCAVELICA', N'0902', N'ACOBAMBA', N'PAUCARA', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 226, 3833, -12.7297, -74.6664, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (834, N'080207', N'090207', N'09', N'HUANCAVELICA', N'0902', N'ACOBAMBA', N'POMACOCHA', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 54, 3156, -12.8739, -74.5317, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (835, N'080208', N'090208', N'09', N'HUANCAVELICA', N'0902', N'ACOBAMBA', N'ROSARIO', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 97, 3687, -12.7208, -74.5825, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (836, N'080301', N'090301', N'09', N'HUANCAVELICA', N'0903', N'ANGARAES', N'LIRCAY', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 819, 3345, -12.9828, -74.7183, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (837, N'080302', N'090302', N'09', N'HUANCAVELICA', N'0903', N'ANGARAES', N'ANCHONGA', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 72, 3310, -12.9131, -74.6914, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (838, N'080303', N'090303', N'09', N'HUANCAVELICA', N'0903', N'ANGARAES', N'CALLANMARCA', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 26, 3553, -12.8667, -74.6233, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (839, N'080312', N'090304', N'09', N'HUANCAVELICA', N'0903', N'ANGARAES', N'CCOCHACCASA', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 117, 4190, -12.9253, -74.7703, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (840, N'080305', N'090305', N'09', N'HUANCAVELICA', N'0903', N'ANGARAES', N'CHINCHO', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 183, 3141, -12.9728, -74.3672, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (841, N'080304', N'090306', N'09', N'HUANCAVELICA', N'0903', N'ANGARAES', N'CONGALLA', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 216, 3537, -12.9558, -74.4922, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (842, N'080307', N'090307', N'09', N'HUANCAVELICA', N'0903', N'ANGARAES', N'HUANCA-HUANCA', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 110, 3590, -12.9186, -74.61, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (843, N'080306', N'090308', N'09', N'HUANCAVELICA', N'0903', N'ANGARAES', N'HUAYLLAY GRANDE', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 33, 3622, -12.9428, -74.7017, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (844, N'080308', N'090309', N'09', N'HUANCAVELICA', N'0903', N'ANGARAES', N'JULCAMARCA', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 49, 3431, -13.0147, -74.4444, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (845, N'080309', N'090310', N'09', N'HUANCAVELICA', N'0903', N'ANGARAES', N'SAN ANTONIO DE ANTAPARCO', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 33, 2767, -13.0761, -74.4117, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (846, N'080310', N'090311', N'09', N'HUANCAVELICA', N'0903', N'ANGARAES', N'SANTO TOMAS DE PATA', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 134, 3150, -13.1131, -74.4189, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (847, N'080311', N'090312', N'09', N'HUANCAVELICA', N'0903', N'ANGARAES', N'SECCLLA', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 168, 3363, -13.0511, -74.4836, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (848, N'080401', N'090401', N'09', N'HUANCAVELICA', N'0904', N'CASTROVIRREYNA', N'CASTROVIRREYNA', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 938, 3989, -13.2833, -75.3183, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (849, N'080402', N'090402', N'09', N'HUANCAVELICA', N'0904', N'CASTROVIRREYNA', N'ARMA', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 305, 3361, -13.1264, -75.5419, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (850, N'080403', N'090403', N'09', N'HUANCAVELICA', N'0904', N'CASTROVIRREYNA', N'AURAHUA', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 361, 3483, -13.0347, -75.5703, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (851, N'080405', N'090404', N'09', N'HUANCAVELICA', N'0904', N'CASTROVIRREYNA', N'CAPILLAS', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 398, 3224, -13.2931, -75.5425, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (852, N'080408', N'090405', N'09', N'HUANCAVELICA', N'0904', N'CASTROVIRREYNA', N'CHUPAMARCA', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 374, 3433, -13.0372, -75.6083, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (853, N'080406', N'090406', N'09', N'HUANCAVELICA', N'0904', N'CASTROVIRREYNA', N'COCAS', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 88, 3253, -13.2758, -75.3728, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (854, N'080409', N'090407', N'09', N'HUANCAVELICA', N'0904', N'CASTROVIRREYNA', N'HUACHOS', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 172, 2784, -13.2197, -75.5339, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (855, N'080410', N'090408', N'09', N'HUANCAVELICA', N'0904', N'CASTROVIRREYNA', N'HUAMATAMBO', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 54, 3058, -13.0944, -75.6772, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (856, N'080414', N'090409', N'09', N'HUANCAVELICA', N'0904', N'CASTROVIRREYNA', N'MOLLEPAMPA', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 166, 2500, -13.3114, -75.41, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (857, N'080422', N'090410', N'09', N'HUANCAVELICA', N'0904', N'CASTROVIRREYNA', N'SAN JUAN', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 207, 1936, -13.2039, -75.6344, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (858, N'080429', N'090411', N'09', N'HUANCAVELICA', N'0904', N'CASTROVIRREYNA', N'SANTA ANA', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 622, 4518, -13.0719, -75.1403, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (859, N'080427', N'090412', N'09', N'HUANCAVELICA', N'0904', N'CASTROVIRREYNA', N'TANTARA', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 113, 2899, -13.0742, -75.6447, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (860, N'080428', N'090413', N'09', N'HUANCAVELICA', N'0904', N'CASTROVIRREYNA', N'TICRAPO', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 187, 2140, -13.3825, -75.4325, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (861, N'080701', N'090501', N'09', N'HUANCAVELICA', N'0905', N'CHURCAMPA', N'CHURCAMPA', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 135, 3295, -12.7392, -74.3872, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (862, N'080702', N'090502', N'09', N'HUANCAVELICA', N'0905', N'CHURCAMPA', N'ANCO', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 150, 2463, -12.6825, -74.5872, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (863, N'080703', N'090503', N'09', N'HUANCAVELICA', N'0905', N'CHURCAMPA', N'CHINCHIHUASI', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 162, 2803, -12.5169, -74.5458, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (864, N'080704', N'090504', N'09', N'HUANCAVELICA', N'0905', N'CHURCAMPA', N'EL CARMEN', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 77, 3152, -12.7269, -74.4808, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (865, N'080705', N'090505', N'09', N'HUANCAVELICA', N'0905', N'CHURCAMPA', N'LA MERCED', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 73, 2683, -12.7881, -74.3586, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (866, N'080706', N'090506', N'09', N'HUANCAVELICA', N'0905', N'CHURCAMPA', N'LOCROJA', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 92, 3417, -12.7403, -74.4419, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (867, N'080707', N'090507', N'09', N'HUANCAVELICA', N'0905', N'CHURCAMPA', N'PAUCARBAMBA', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 98, 3382, -12.5539, -74.5319, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (868, N'080708', N'090508', N'09', N'HUANCAVELICA', N'0905', N'CHURCAMPA', N'SAN MIGUEL DE MAYOCC', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 38, 2228, -12.8058, -74.39, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (869, N'080709', N'090509', N'09', N'HUANCAVELICA', N'0905', N'CHURCAMPA', N'SAN PEDRO DE CORIS', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 129, 3580, -12.5781, -74.4117, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (870, N'080710', N'090510', N'09', N'HUANCAVELICA', N'0905', N'CHURCAMPA', N'PACHAMARCA', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 156, 2792, -12.5156, -74.5267, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (871, N'080711', N'090511', N'09', N'HUANCAVELICA', N'0905', N'CHURCAMPA', N'COSME', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 106, 3486, -12.5733, -74.6583, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (872, N'080604', N'090601', N'09', N'HUANCAVELICA', N'0906', N'HUAYTARA', N'HUAYTARA', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 401, 2732, -13.6047, -75.3531, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (873, N'080601', N'090602', N'09', N'HUANCAVELICA', N'0906', N'HUAYTARA', N'AYAVI', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 201, 3815, -13.7031, -75.3511, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (874, N'080602', N'090603', N'09', N'HUANCAVELICA', N'0906', N'HUAYTARA', N'CORDOVA', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 105, 3242, -14.0408, -75.185, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (875, N'080603', N'090604', N'09', N'HUANCAVELICA', N'0906', N'HUAYTARA', N'HUAYACUNDO ARMA', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 13, 3116, -13.5342, -75.3144, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (876, N'080605', N'090605', N'09', N'HUANCAVELICA', N'0906', N'HUAYTARA', N'LARAMARCA', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 205, 3407, -13.9486, -75.0356, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (877, N'080606', N'090606', N'09', N'HUANCAVELICA', N'0906', N'HUAYTARA', N'OCOYO', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 155, 1933, -14.0081, -75.0225, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (878, N'080607', N'090607', N'09', N'HUANCAVELICA', N'0906', N'HUAYTARA', N'PILPICHACA', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 2163, 4090, -13.3303, -74.9772, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (879, N'080608', N'090608', N'09', N'HUANCAVELICA', N'0906', N'HUAYTARA', N'QUERCO', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 697, 2903, -13.9794, -74.9769, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (880, N'080609', N'090609', N'09', N'HUANCAVELICA', N'0906', N'HUAYTARA', N'QUITO-ARMA', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 222, 2944, -13.5286, -75.3275, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (881, N'080610', N'090610', N'09', N'HUANCAVELICA', N'0906', N'HUAYTARA', N'SAN ANTONIO DE CUSICANCHA', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 256, 3291, -13.5025, -75.2933, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (882, N'080611', N'090611', N'09', N'HUANCAVELICA', N'0906', N'HUAYTARA', N'SAN FRANCISCO DE SANGAYAICO', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 71, 3420, -13.7953, -75.2492, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (883, N'080612', N'090612', N'09', N'HUANCAVELICA', N'0906', N'HUAYTARA', N'SAN ISIDRO', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 175, 3656, -13.9564, -75.2381, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (884, N'080613', N'090613', N'09', N'HUANCAVELICA', N'0906', N'HUAYTARA', N'SANTIAGO DE CHOCORVOS', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 1150, 2638, -13.8253, -75.2575, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (885, N'080614', N'090614', N'09', N'HUANCAVELICA', N'0906', N'HUAYTARA', N'SANTIAGO DE QUIRAHUARA', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 169, 2801, -14.0561, -74.9764, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (886, N'080615', N'090615', N'09', N'HUANCAVELICA', N'0906', N'HUAYTARA', N'SANTO DOMINGO DE CAPILLAS', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 249, 3482, -13.7372, -75.2436, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (887, N'080616', N'090616', N'09', N'HUANCAVELICA', N'0906', N'HUAYTARA', N'TAMBO', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 227, 3201, -13.6894, -75.275, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (888, N'080501', N'090701', N'09', N'HUANCAVELICA', N'0907', N'TAYACAJA', N'PAMPAS', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 109, 3282, -12.3992, -74.8683, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (889, N'080502', N'090702', N'09', N'HUANCAVELICA', N'0907', N'TAYACAJA', N'ACOSTAMBO', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 168, 3628, -12.3656, -75.055, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (890, N'080503', N'090703', N'09', N'HUANCAVELICA', N'0907', N'TAYACAJA', N'ACRAQUIA', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 110, 3281, -12.4064, -74.9011, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (891, N'080504', N'090704', N'09', N'HUANCAVELICA', N'0907', N'TAYACAJA', N'AHUAYCHA', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 91, 3279, -12.4078, -74.8911, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (892, N'080506', N'090705', N'09', N'HUANCAVELICA', N'0907', N'TAYACAJA', N'COLCABAMBA', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 312, 2953, -12.4092, -74.6794, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (893, N'080509', N'090706', N'09', N'HUANCAVELICA', N'0907', N'TAYACAJA', N'DANIEL HERNANDEZ', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 107, 3288, -12.3894, -74.8592, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (894, N'080511', N'090707', N'09', N'HUANCAVELICA', N'0907', N'TAYACAJA', N'HUACHOCOLPA', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 292, 2913, -12.0483, -74.5947, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (895, N'080512', N'090709', N'09', N'HUANCAVELICA', N'0907', N'TAYACAJA', N'HUARIBAMBA', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 151, 3019, -12.2797, -74.9383, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (896, N'080515', N'090710', N'09', N'HUANCAVELICA', N'0907', N'TAYACAJA', N'ÑAHUIMPUQUIO', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 67, 3651, -12.3292, -75.0694, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (897, N'080517', N'090711', N'09', N'HUANCAVELICA', N'0907', N'TAYACAJA', N'PAZOS', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 228, 3820, -12.2594, -75.0706, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (898, N'080518', N'090713', N'09', N'HUANCAVELICA', N'0907', N'TAYACAJA', N'QUISHUAR', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 32, 3137, -12.2436, -74.7772, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (899, N'080519', N'090714', N'09', N'HUANCAVELICA', N'0907', N'TAYACAJA', N'SALCABAMBA', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 193, 3063, -12.2017, -74.7806, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (900, N'080526', N'090715', N'09', N'HUANCAVELICA', N'0907', N'TAYACAJA', N'SALCAHUASI', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 118, 3196, -12.1042, -74.7517, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (901, N'080520', N'090716', N'09', N'HUANCAVELICA', N'0907', N'TAYACAJA', N'SAN MARCOS DE ROCCHAC', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 282, 3206, -12.0939, -74.8639, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (902, N'080523', N'090717', N'09', N'HUANCAVELICA', N'0907', N'TAYACAJA', N'SURCUBAMBA', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 272, 2626, -12.1164, -74.6306, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (903, N'080525', N'090718', N'09', N'HUANCAVELICA', N'0907', N'TAYACAJA', N'TINTAY PUNCU', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 258, 2410, -12.1519, -74.5444, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (904, N'080528', N'090719', N'09', N'HUANCAVELICA', N'0907', N'TAYACAJA', N'QUICHUAS', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 114, 2706, -12.4725, -74.7675, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (905, N'080529', N'090720', N'09', N'HUANCAVELICA', N'0907', N'TAYACAJA', N'ANDAYMARCA', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 145, 2896, -12.3153, -74.6353, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (906, N'080530', N'090721', N'09', N'HUANCAVELICA', N'0907', N'TAYACAJA', N'ROBLE', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 186, 2640, -12.2167, -74.4897, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (907, N'080531', N'090722', N'09', N'HUANCAVELICA', N'0907', N'TAYACAJA', N'PICHOS', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', 145, 3297, -12.2364, -74.9386, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (908, N'080532', N'090723', N'09', N'HUANCAVELICA', N'0907', N'TAYACAJA', N'SANTIAGO DE TUCUMA', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', NULL, 3538, -12.3142, -74.89, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (909, N'090101', N'100101', N'10', N'HUANUCO', N'1001', N'HUANUCO', N'HUANUCO', N'HUANUCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUC', N'10', 126, 1921, -9.93, -76.2397, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (910, N'090110', N'100102', N'10', N'HUANUCO', N'1001', N'HUANUCO', N'AMARILIS', N'HUANUCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUC', N'10', 132, 1950, -9.94, -76.2406, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (911, N'090102', N'100103', N'10', N'HUANUCO', N'1001', N'HUANUCO', N'CHINCHAO', N'HUANUCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUC', N'10', 796, 2122, -9.8017, -76.0708, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (912, N'090103', N'100104', N'10', N'HUANUCO', N'1001', N'HUANUCO', N'CHURUBAMBA', N'HUANUCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUC', N'10', 507, 1954, -9.8261, -76.1339, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (913, N'090104', N'100105', N'10', N'HUANUCO', N'1001', N'HUANUCO', N'MARGOS', N'HUANUCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUC', N'10', 207, 3555, -10.0053, -76.5233, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (914, N'090105', N'100106', N'10', N'HUANUCO', N'1001', N'HUANUCO', N'QUISQUI', N'HUANUCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUC', N'10', 173, 2427, -9.9047, -76.3925, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (915, N'090106', N'100107', N'10', N'HUANUCO', N'1001', N'HUANUCO', N'SAN FRANCISCO DE CAYRAN', N'HUANUCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUC', N'10', 146, 2247, -9.9808, -76.2842, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (916, N'090107', N'100108', N'10', N'HUANUCO', N'1001', N'HUANUCO', N'SAN PEDRO DE CHAULAN', N'HUANUCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUC', N'10', 266, 3587, -10.0564, -76.4856, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (917, N'090108', N'100109', N'10', N'HUANUCO', N'1001', N'HUANUCO', N'SANTA MARIA DEL VALLE', N'HUANUCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUC', N'10', 447, 1939, -9.8625, -76.17, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (918, N'090109', N'100110', N'10', N'HUANUCO', N'1001', N'HUANUCO', N'YARUMAYO', N'HUANUCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUC', N'10', 61, 3055, -10.0044, -76.4686, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (919, N'090111', N'100111', N'10', N'HUANUCO', N'1001', N'HUANUCO', N'PILLCO MARCA', N'HUANUCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUC', N'10', 77, 1996, -9.9608, -76.2492, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (920, N'090112', N'100112', N'10', N'HUANUCO', N'1001', N'HUANUCO', N'YACUS', N'HUANUCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUC', N'10', 70, 3243, -9.9861, -76.5058, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (921, N'090113', N'100113', N'10', N'HUANUCO', N'1001', N'HUANUCO', N'SAN PABLO DE PILLAO', N'HUANUCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUC', N'10', 585, 2954, -9.7864, -75.9994, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (922, N'090201', N'100201', N'10', N'HUANUCO', N'1002', N'AMBO', N'AMBO', N'HUANUCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUC', N'10', 289, 2106, -10.1292, -76.2044, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (923, N'090202', N'100202', N'10', N'HUANUCO', N'1002', N'AMBO', N'CAYNA', N'HUANUCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUC', N'10', 166, 3332, -10.2725, -76.3883, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (924, N'090203', N'100203', N'10', N'HUANUCO', N'1002', N'AMBO', N'COLPAS', N'HUANUCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUC', N'10', 174, 2740, -10.2683, -76.4153, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (925, N'090204', N'100204', N'10', N'HUANUCO', N'1002', N'AMBO', N'CONCHAMARCA', N'HUANUCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUC', N'10', 105, 2185, -10.0358, -76.2169, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (926, N'090205', N'100205', N'10', N'HUANUCO', N'1002', N'AMBO', N'HUACAR', N'HUANUCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUC', N'10', 234, 2157, -10.1594, -76.2367, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (927, N'090206', N'100206', N'10', N'HUANUCO', N'1002', N'AMBO', N'SAN FRANCISCO', N'HUANUCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUC', N'10', 121, 3521, -10.3428, -76.2919, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (928, N'090207', N'100207', N'10', N'HUANUCO', N'1002', N'AMBO', N'SAN RAFAEL', N'HUANUCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUC', N'10', 444, 2720, -10.3378, -76.1822, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (929, N'090208', N'100208', N'10', N'HUANUCO', N'1002', N'AMBO', N'TOMAY KICHWA', N'HUANUCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUC', N'10', 42, 2049, -10.0775, -76.2125, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (930, N'090301', N'100301', N'10', N'HUANUCO', N'1003', N'DOS DE MAYO', N'LA UNION', N'HUANUCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUC', N'10', 167, 3275, -9.8378, -76.8036, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (931, N'090307', N'100307', N'10', N'HUANUCO', N'1003', N'DOS DE MAYO', N'CHUQUIS', N'HUANUCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUC', N'10', 151, 3375, -9.6764, -76.7053, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (932, N'090312', N'100311', N'10', N'HUANUCO', N'1003', N'DOS DE MAYO', N'MARIAS', N'HUANUCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUC', N'10', 637, 3508, -9.6075, -76.7067, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (933, N'090314', N'100313', N'10', N'HUANUCO', N'1003', N'DOS DE MAYO', N'PACHAS', N'HUANUCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUC', N'10', 265, 3474, -9.7067, -76.7711, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (934, N'090316', N'100316', N'10', N'HUANUCO', N'1003', N'DOS DE MAYO', N'QUIVILLA', N'HUANUCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUC', N'10', 34, 2972, -9.6, -76.7258, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (935, N'090317', N'100317', N'10', N'HUANUCO', N'1003', N'DOS DE MAYO', N'RIPAN', N'HUANUCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUC', N'10', 75, 3233, -9.8286, -76.8031, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (936, N'090321', N'100321', N'10', N'HUANUCO', N'1003', N'DOS DE MAYO', N'SHUNQUI', N'HUANUCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUC', N'10', 32, 3542, -9.7311, -76.7833, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (937, N'090322', N'100322', N'10', N'HUANUCO', N'1003', N'DOS DE MAYO', N'SILLAPATA', N'HUANUCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUC', N'10', 71, 3459, -9.7572, -76.7747, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (938, N'090323', N'100323', N'10', N'HUANUCO', N'1003', N'DOS DE MAYO', N'YANAS', N'HUANUCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUC', N'10', 36, 3477, -9.7144, -76.7503, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (939, N'090901', N'100401', N'10', N'HUANUCO', N'1004', N'HUACAYBAMBA', N'HUACAYBAMBA', N'HUANUCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUC', N'10', 586, 3176, -9.0381, -76.9525, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (940, N'090903', N'100402', N'10', N'HUANUCO', N'1004', N'HUACAYBAMBA', N'CANCHABAMBA', N'HUANUCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUC', N'10', 187, 3208, -8.8847, -77.1231, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (941, N'090904', N'100403', N'10', N'HUANUCO', N'1004', N'HUACAYBAMBA', N'COCHABAMBA', N'HUANUCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUC', N'10', 685, 3293, -9.0953, -76.8364, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (942, N'090902', N'100404', N'10', N'HUANUCO', N'1004', N'HUACAYBAMBA', N'PINRA', N'HUANUCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUC', N'10', 284, 2874, -8.9247, -77.015, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (943, N'090401', N'100501', N'10', N'HUANUCO', N'1005', N'HUAMALIES', N'LLATA', N'HUANUCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUC', N'10', 411, 3489, -9.5497, -76.8186, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (944, N'090402', N'100502', N'10', N'HUANUCO', N'1005', N'HUAMALIES', N'ARANCAY', N'HUANUCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUC', N'10', 158, 3066, -9.1714, -76.7514, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (945, N'090403', N'100503', N'10', N'HUANUCO', N'1005', N'HUAMALIES', N'CHAVIN DE PARIARCA', N'HUANUCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUC', N'10', 89, 3382, -9.4231, -76.7714, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (946, N'090404', N'100504', N'10', N'HUANUCO', N'1005', N'HUAMALIES', N'JACAS GRANDE', N'HUANUCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUC', N'10', 237, 3625, -9.54, -76.7367, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (947, N'090405', N'100505', N'10', N'HUANUCO', N'1005', N'HUAMALIES', N'JIRCAN', N'HUANUCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUC', N'10', 85, 3211, -9.2469, -76.7192, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (948, N'090406', N'100506', N'10', N'HUANUCO', N'1005', N'HUAMALIES', N'MIRAFLORES', N'HUANUCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUC', N'10', 97, 3688, -9.4939, -76.8186, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (949, N'090407', N'100507', N'10', N'HUANUCO', N'1005', N'HUAMALIES', N'MONZON', N'HUANUCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUC', N'10', 1521, 982, -9.28, -76.3967, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (950, N'090408', N'100508', N'10', N'HUANUCO', N'1005', N'HUAMALIES', N'PUNCHAO', N'HUANUCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUC', N'10', 42, 3560, -9.4622, -76.8197, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (951, N'090409', N'100509', N'10', N'HUANUCO', N'1005', N'HUAMALIES', N'PUÑOS', N'HUANUCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUC', N'10', 102, 3749, -9.5006, -76.8839, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (952, N'090410', N'100510', N'10', N'HUANUCO', N'1005', N'HUAMALIES', N'SINGA', N'HUANUCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUC', N'10', 152, 3649, -9.3886, -76.8125, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (953, N'090411', N'100511', N'10', N'HUANUCO', N'1005', N'HUAMALIES', N'TANTAMAYO', N'HUANUCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUC', N'10', 250, 3517, -9.3925, -76.72, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (954, N'090601', N'100601', N'10', N'HUANUCO', N'1006', N'LEONCIO PRADO', N'RUPA-RUPA', N'HUANUCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUC', N'10', 267, 667, -9.2981, -76.0006, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (955, N'090602', N'100602', N'10', N'HUANUCO', N'1006', N'LEONCIO PRADO', N'DANIEL ALOMIAS ROBLES', N'HUANUCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUC', N'10', 702, 669, -9.1878, -75.9547, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (956, N'090603', N'100603', N'10', N'HUANUCO', N'1006', N'LEONCIO PRADO', N'HERMILIO VALDIZAN', N'HUANUCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUC', N'10', 112, 1354, -9.2056, -75.8358, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (957, N'090606', N'100604', N'10', N'HUANUCO', N'1006', N'LEONCIO PRADO', N'JOSE CRESPO Y CASTILLO', N'HUANUCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUC', N'10', 2121, 587, -8.9322, -76.1161, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (958, N'090604', N'100605', N'10', N'HUANUCO', N'1006', N'LEONCIO PRADO', N'LUYANDO', N'HUANUCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUC', N'10', 100, 642, -9.2481, -75.9942, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (959, N'090605', N'100606', N'10', N'HUANUCO', N'1006', N'LEONCIO PRADO', N'MARIANO DAMASO BERAUN', N'HUANUCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUC', N'10', 766, 736, -9.4428, -75.9711, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (960, N'090607', N'100607', N'10', N'HUANUCO', N'1006', N'LEONCIO PRADO', N'PUCAYACU', N'HUANUCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUC', N'10', 768, 573, -8.7497, -76.1211, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (961, N'090608', N'100608', N'10', N'HUANUCO', N'1006', N'LEONCIO PRADO', N'CASTILLO GRANDE', N'HUANUCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUC', N'10', 106, 675, -9.2797, -76.0089, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (962, N'090609', N'100609', N'10', N'HUANUCO', N'1006', N'LEONCIO PRADO', N'PUEBLO NUEVO', N'HUANUCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUC', N'10', NULL, 626, -9.0786, -76.0606, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (963, N'090610', N'100610', N'10', N'HUANUCO', N'1006', N'LEONCIO PRADO', N'SANTO DOMINGO DE ANDA', N'HUANUCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUC', N'10', 284, 617, -9.0236, -76.0667, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (964, N'090501', N'100701', N'10', N'HUANUCO', N'1007', N'MARAÑON', N'HUACRACHUCO', N'HUANUCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUC', N'10', 705, 2914, -8.6047, -77.1492, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (965, N'090502', N'100702', N'10', N'HUANUCO', N'1007', N'MARAÑON', N'CHOLON', N'HUANUCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUC', N'10', 2125, 2447, -8.6558, -76.8753, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (966, N'090505', N'100703', N'10', N'HUANUCO', N'1007', N'MARAÑON', N'SAN BUENAVENTURA', N'HUANUCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUC', N'10', 87, 3211, -8.7678, -77.1861, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (967, N'090506', N'100704', N'10', N'HUANUCO', N'1007', N'MARAÑON', N'LA MORADA', N'HUANUCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUC', N'10', 879, 559, -8.7944, -76.2497, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (968, N'090507', N'100705', N'10', N'HUANUCO', N'1007', N'MARAÑON', N'SANTA ROSA DE ALTO YANAJANCA', N'HUANUCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUC', N'10', 1006, 530, -8.6528, -76.3147, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (969, N'090701', N'100801', N'10', N'HUANUCO', N'1008', N'PACHITEA', N'PANAO', N'HUANUCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUC', N'10', 1581, 2536, -9.8975, -75.9942, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (970, N'090702', N'100802', N'10', N'HUANUCO', N'1008', N'PACHITEA', N'CHAGLLA', N'HUANUCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUC', N'10', 1104, 3040, -9.8447, -75.9028, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (971, N'090704', N'100803', N'10', N'HUANUCO', N'1008', N'PACHITEA', N'MOLINO', N'HUANUCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUC', N'10', 236, 2396, -9.9108, -76.0167, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (972, N'090706', N'100804', N'10', N'HUANUCO', N'1008', N'PACHITEA', N'UMARI', N'HUANUCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUC', N'10', 149, 2524, -9.8642, -76.0444, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (973, N'090802', N'100901', N'10', N'HUANUCO', N'1009', N'PUERTO INCA', N'PUERTO INCA', N'HUANUCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUC', N'10', 2147, 215, -9.3789, -74.9658, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (974, N'090803', N'100902', N'10', N'HUANUCO', N'1009', N'PUERTO INCA', N'CODO DEL POZUZO', N'HUANUCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUC', N'10', 3322, 398, -9.67, -75.4625, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (975, N'090801', N'100903', N'10', N'HUANUCO', N'1009', N'PUERTO INCA', N'HONORIA', N'HUANUCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUC', N'10', 798, 177, -8.7694, -74.7092, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (976, N'090804', N'100904', N'10', N'HUANUCO', N'1009', N'PUERTO INCA', N'TOURNAVISTA', N'HUANUCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUC', N'10', 2228, 214, -8.9344, -74.7014, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (977, N'090805', N'100905', N'10', N'HUANUCO', N'1009', N'PUERTO INCA', N'YUYAPICHIS', N'HUANUCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUC', N'10', 1846, 227, -9.6283, -74.9747, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (978, N'091001', N'101001', N'10', N'HUANUCO', N'1010', N'LAURICOCHA', N'JESUS', N'HUANUCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUC', N'10', 450, 3499, -10.0783, -76.6314, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (979, N'091002', N'101002', N'10', N'HUANUCO', N'1010', N'LAURICOCHA', N'BAÑOS', N'HUANUCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUC', N'10', 153, 3442, -10.0764, -76.7356, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (980, N'091007', N'101003', N'10', N'HUANUCO', N'1010', N'LAURICOCHA', N'JIVIA', N'HUANUCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUC', N'10', 61, 3394, -10.0233, -76.6803, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (981, N'091004', N'101004', N'10', N'HUANUCO', N'1010', N'LAURICOCHA', N'QUEROPALCA', N'HUANUCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUC', N'10', 131, 3835, -10.1814, -76.8031, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (982, N'091006', N'101005', N'10', N'HUANUCO', N'1010', N'LAURICOCHA', N'RONDOS', N'HUANUCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUC', N'10', 169, 3617, -9.9844, -76.6883, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (983, N'091003', N'101006', N'10', N'HUANUCO', N'1010', N'LAURICOCHA', N'SAN FRANCISCO DE ASIS', N'HUANUCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUC', N'10', 84, 3457, -9.9764, -76.6769, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (984, N'091005', N'101007', N'10', N'HUANUCO', N'1010', N'LAURICOCHA', N'SAN MIGUEL DE CAURI', N'HUANUCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUC', N'10', 812, 3625, -10.1425, -76.6256, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (985, N'091101', N'101101', N'10', N'HUANUCO', N'1011', N'YAROWILCA', N'CHAVINILLO', N'HUANUCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUC', N'10', 205, 3475, -9.8589, -76.6089, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (986, N'091103', N'101102', N'10', N'HUANUCO', N'1011', N'YAROWILCA', N'CAHUAC', N'HUANUCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUC', N'10', 30, 3413, -9.8528, -76.6306, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (987, N'091104', N'101103', N'10', N'HUANUCO', N'1011', N'YAROWILCA', N'CHACABAMBA', N'HUANUCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUC', N'10', 17, 3204, -9.9003, -76.6111, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (988, N'091102', N'101104', N'10', N'HUANUCO', N'1011', N'YAROWILCA', N'APARICIO POMARES', N'HUANUCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUC', N'10', 183, 3452, -9.7478, -76.6481, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (989, N'091105', N'101105', N'10', N'HUANUCO', N'1011', N'YAROWILCA', N'JACAS CHICO', N'HUANUCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUC', N'10', 36, 3816, -9.8864, -76.5031, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (990, N'091106', N'101106', N'10', N'HUANUCO', N'1011', N'YAROWILCA', N'OBAS', N'HUANUCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUC', N'10', 123, 3543, -9.7953, -76.6658, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (991, N'091107', N'101107', N'10', N'HUANUCO', N'1011', N'YAROWILCA', N'PAMPAMARCA', N'HUANUCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUC', N'10', 73, 3436, -9.7053, -76.7025, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (992, N'091108', N'101108', N'10', N'HUANUCO', N'1011', N'YAROWILCA', N'CHORAS', N'HUANUCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUC', N'10', 61, 3554, -9.9103, -76.6058, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (993, N'100101', N'110101', N'11', N'ICA', N'1101', N'ICA', N'ICA', N'ICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-ICA', N'11', 888, 432, -14.0636, -75.7292, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (994, N'100102', N'110102', N'11', N'ICA', N'1101', N'ICA', N'LA TINGUIÑA', N'ICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-ICA', N'11', 98, 463, -14.0333, -75.7106, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (995, N'100103', N'110103', N'11', N'ICA', N'1101', N'ICA', N'LOS AQUIJES', N'ICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-ICA', N'11', 91, 446, -14.0964, -75.6906, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (996, N'100114', N'110104', N'11', N'ICA', N'1101', N'ICA', N'OCUCAJE', N'ICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-ICA', N'11', 1417, 332, -14.3467, -75.6722, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (997, N'100113', N'110105', N'11', N'ICA', N'1101', N'ICA', N'PACHACUTEC', N'ICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-ICA', N'11', 34, 424, -14.1519, -75.6919, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (998, N'100104', N'110106', N'11', N'ICA', N'1101', N'ICA', N'PARCONA', N'ICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-ICA', N'11', 17, 472, -14.0539, -75.6856, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (999, N'100105', N'110107', N'11', N'ICA', N'1101', N'ICA', N'PUEBLO NUEVO', N'ICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-ICA', N'11', 33, 417, -14.1272, -75.7058, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1000, N'100106', N'110108', N'11', N'ICA', N'1101', N'ICA', N'SALAS', N'ICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-ICA', N'11', 652, 452, -13.9858, -75.7722, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1001, N'100107', N'110109', N'11', N'ICA', N'1101', N'ICA', N'SAN JOSE DE LOS MOLINOS', N'ICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-ICA', N'11', 363, 542, -13.9331, -75.6708, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1002, N'100108', N'110110', N'11', N'ICA', N'1101', N'ICA', N'SAN JUAN BAUTISTA', N'ICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-ICA', N'11', 26, 459, -14.0114, -75.7353, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1003, N'100109', N'110111', N'11', N'ICA', N'1101', N'ICA', N'SANTIAGO', N'ICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-ICA', N'11', 2784, 395, -14.1858, -75.7144, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1004, N'100110', N'110112', N'11', N'ICA', N'1101', N'ICA', N'SUBTANJALLA', N'ICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-ICA', N'11', 194, 445, -14.0186, -75.7581, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1005, N'100112', N'110113', N'11', N'ICA', N'1101', N'ICA', N'TATE', N'ICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-ICA', N'11', 7, 417, -14.1558, -75.7081, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1006, N'100111', N'110114', N'11', N'ICA', N'1101', N'ICA', N'YAUCA DEL ROSARIO', N'ICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-ICA', N'11', 1289, 861, -14.0989, -75.4769, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1007, N'100201', N'110201', N'11', N'ICA', N'1102', N'CHINCHA', N'CHINCHA ALTA', N'ICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-ICA', N'11', 238, 140, -13.4183, -76.1325, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1008, N'100209', N'110202', N'11', N'ICA', N'1102', N'CHINCHA', N'ALTO LARAN', N'ICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-ICA', N'11', 299, 156, -13.4425, -76.0833, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1009, N'100202', N'110203', N'11', N'ICA', N'1102', N'CHINCHA', N'CHAVIN', N'ICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-ICA', N'11', 426, 3183, -13.0764, -75.9131, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1010, N'100203', N'110204', N'11', N'ICA', N'1102', N'CHINCHA', N'CHINCHA BAJA', N'ICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-ICA', N'11', 73, 44, -13.4594, -76.1656, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1011, N'100204', N'110205', N'11', N'ICA', N'1102', N'CHINCHA', N'EL CARMEN', N'ICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-ICA', N'11', 790, 160, -13.4994, -76.0578, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1012, N'100205', N'110206', N'11', N'ICA', N'1102', N'CHINCHA', N'GROCIO PRADO', N'ICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-ICA', N'11', 191, 134, -13.3981, -76.1561, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1013, N'100210', N'110207', N'11', N'ICA', N'1102', N'CHINCHA', N'PUEBLO NUEVO', N'ICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-ICA', N'11', 209, 146, -13.4042, -76.1275, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1014, N'100211', N'110208', N'11', N'ICA', N'1102', N'CHINCHA', N'SAN JUAN DE YANAC', N'ICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-ICA', N'11', 500, 2555, -13.2111, -75.7872, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1015, N'100206', N'110209', N'11', N'ICA', N'1102', N'CHINCHA', N'SAN PEDRO DE HUACARPANA', N'ICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-ICA', N'11', 222, 3812, -13.0492, -75.6478, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1016, N'100207', N'110210', N'11', N'ICA', N'1102', N'CHINCHA', N'SUNAMPE', N'ICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-ICA', N'11', 17, 94, -13.4275, -76.1636, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1017, N'100208', N'110211', N'11', N'ICA', N'1102', N'CHINCHA', N'TAMBO DE MORA', N'ICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-ICA', N'11', 22, 37, -13.4606, -76.1767, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1018, N'100301', N'110301', N'11', N'ICA', N'1103', N'NAZCA', N'NAZCA', N'ICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-ICA', N'11', 1252, 618, -14.8269, -74.9372, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1019, N'100302', N'110302', N'11', N'ICA', N'1103', N'NAZCA', N'CHANGUILLO', N'ICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-ICA', N'11', 947, 260, -14.6647, -75.2225, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1020, N'100303', N'110303', N'11', N'ICA', N'1103', N'NAZCA', N'EL INGENIO', N'ICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-ICA', N'11', 552, 463, -14.6453, -75.0583, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1021, N'100304', N'110304', N'11', N'ICA', N'1103', N'NAZCA', N'MARCONA', N'ICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-ICA', N'11', 1955, 36, -15.3619, -75.1658, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1022, N'100305', N'110305', N'11', N'ICA', N'1103', N'NAZCA', N'VISTA ALEGRE', N'ICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-ICA', N'11', 527, 618, -14.8458, -74.9439, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1023, N'100501', N'110401', N'11', N'ICA', N'1104', N'PALPA', N'PALPA', N'ICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-ICA', N'11', 147, 371, -14.5339, -75.185, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1024, N'100502', N'110402', N'11', N'ICA', N'1104', N'PALPA', N'LLIPATA', N'ICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-ICA', N'11', 186, 317, -14.5633, -75.2075, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1025, N'100503', N'110403', N'11', N'ICA', N'1104', N'PALPA', N'RIO GRANDE', N'ICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-ICA', N'11', 316, 369, -14.52, -75.2011, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1026, N'100504', N'110404', N'11', N'ICA', N'1104', N'PALPA', N'SANTA CRUZ', N'ICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-ICA', N'11', 256, 546, -14.4833, -75.2456, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1027, N'100505', N'110405', N'11', N'ICA', N'1104', N'PALPA', N'TIBILLO', N'ICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-ICA', N'11', 328, 2192, -14.0939, -75.1717, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1028, N'100401', N'110501', N'11', N'ICA', N'1105', N'PISCO', N'PISCO', N'ICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-ICA', N'11', 25, 39, -13.71, -76.2017, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1029, N'100402', N'110502', N'11', N'ICA', N'1105', N'PISCO', N'HUANCANO', N'ICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-ICA', N'11', 905, 1039, -13.6008, -75.6186, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1030, N'100403', N'110503', N'11', N'ICA', N'1105', N'PISCO', N'HUMAY', N'ICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-ICA', N'11', 1113, 426, -13.7228, -75.8867, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1031, N'100404', N'110504', N'11', N'ICA', N'1105', N'PISCO', N'INDEPENDENCIA', N'ICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-ICA', N'11', 272, 235, -13.6939, -76.0247, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1032, N'100405', N'110505', N'11', N'ICA', N'1105', N'PISCO', N'PARACAS', N'ICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-ICA', N'11', 1420, 14, -13.8389, -76.2519, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1033, N'100406', N'110506', N'11', N'ICA', N'1105', N'PISCO', N'SAN ANDRES', N'ICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-ICA', N'11', 39, 16, -13.7314, -76.2233, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1034, N'100407', N'110507', N'11', N'ICA', N'1105', N'PISCO', N'SAN CLEMENTE', N'ICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-ICA', N'11', 127, 116, -13.6803, -76.1569, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1035, N'100408', N'110508', N'11', N'ICA', N'1105', N'PISCO', N'TUPAC AMARU INCA', N'ICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-ICA', N'11', 55, 113, -13.7133, -76.1483, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1036, N'110101', N'120101', N'12', N'JUNIN', N'1201', N'HUANCAYO', N'HUANCAYO', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 238, 3294, -12.0708, -75.2089, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1037, N'110103', N'120104', N'12', N'JUNIN', N'1201', N'HUANCAYO', N'CARHUACALLANGA', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 14, 3774, -12.355, -75.2006, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1038, N'110106', N'120105', N'12', N'JUNIN', N'1201', N'HUANCAYO', N'CHACAPAMPA', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 121, 3413, -12.345, -75.2475, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1039, N'110107', N'120106', N'12', N'JUNIN', N'1201', N'HUANCAYO', N'CHICCHE', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 46, 3606, -12.2961, -75.2986, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1040, N'110108', N'120107', N'12', N'JUNIN', N'1201', N'HUANCAYO', N'CHILCA', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 8, 3273, -12.0867, -75.2083, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1041, N'110109', N'120108', N'12', N'JUNIN', N'1201', N'HUANCAYO', N'CHONGOS ALTO', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 702, 3573, -12.3117, -75.2892, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1042, N'110112', N'120111', N'12', N'JUNIN', N'1201', N'HUANCAYO', N'CHUPURO', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 14, 3197, -12.1556, -75.2456, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1043, N'110104', N'120112', N'12', N'JUNIN', N'1201', N'HUANCAYO', N'COLCA', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 113, 3499, -12.3175, -75.2222, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1044, N'110105', N'120113', N'12', N'JUNIN', N'1201', N'HUANCAYO', N'CULLHUAS', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 108, 3549, -12.2206, -75.1669, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1045, N'110113', N'120114', N'12', N'JUNIN', N'1201', N'HUANCAYO', N'EL TAMBO', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 74, 3305, -12.0503, -75.2214, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1046, N'110114', N'120116', N'12', N'JUNIN', N'1201', N'HUANCAYO', N'HUACRAPUQUIO', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 24, 3238, -12.1711, -75.2208, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1047, N'110116', N'120117', N'12', N'JUNIN', N'1201', N'HUANCAYO', N'HUALHUAS', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 25, 3267, -11.9714, -75.2508, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1048, N'110118', N'120119', N'12', N'JUNIN', N'1201', N'HUANCAYO', N'HUANCAN', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 12, 3252, -12.1067, -75.2167, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1049, N'110119', N'120120', N'12', N'JUNIN', N'1201', N'HUANCAYO', N'HUASICANCHA', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 48, 3755, -12.3322, -75.2819, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1050, N'110120', N'120121', N'12', N'JUNIN', N'1201', N'HUANCAYO', N'HUAYUCACHI', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 13, 3251, -12.1386, -75.2236, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1051, N'110121', N'120122', N'12', N'JUNIN', N'1201', N'HUANCAYO', N'INGENIO', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 53, 3486, -11.8906, -75.2664, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1052, N'110122', N'120124', N'12', N'JUNIN', N'1201', N'HUANCAYO', N'PARIAHUANCA', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 618, 2591, -11.9803, -74.8967, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1053, N'110123', N'120125', N'12', N'JUNIN', N'1201', N'HUANCAYO', N'PILCOMAYO', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 20, 3244, -12.0494, -75.2506, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1054, N'110124', N'120126', N'12', N'JUNIN', N'1201', N'HUANCAYO', N'PUCARA', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 110, 3374, -12.1725, -75.1456, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1055, N'110125', N'120127', N'12', N'JUNIN', N'1201', N'HUANCAYO', N'QUICHUAY', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 35, 3430, -11.8897, -75.2861, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1056, N'110126', N'120128', N'12', N'JUNIN', N'1201', N'HUANCAYO', N'QUILCAS', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 168, 3323, -11.9381, -75.2597, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1057, N'110127', N'120129', N'12', N'JUNIN', N'1201', N'HUANCAYO', N'SAN AGUSTIN', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 23, 3297, -11.9897, -75.2442, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1058, N'110128', N'120130', N'12', N'JUNIN', N'1201', N'HUANCAYO', N'SAN JERONIMO DE TUNAN', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 21, 3301, -11.9492, -75.2822, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1059, N'110132', N'120132', N'12', N'JUNIN', N'1201', N'HUANCAYO', N'SAÑO', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 12, 3297, -11.9589, -75.2586, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1060, N'110133', N'120133', N'12', N'JUNIN', N'1201', N'HUANCAYO', N'SAPALLANGA', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 119, 3330, -12.1414, -75.1581, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1061, N'110134', N'120134', N'12', N'JUNIN', N'1201', N'HUANCAYO', N'SICAYA', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 43, 3305, -12.0147, -75.28, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1062, N'110131', N'120135', N'12', N'JUNIN', N'1201', N'HUANCAYO', N'SANTO DOMINGO DE ACOBAMBA', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 778, 2221, -11.7689, -74.7953, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1063, N'110136', N'120136', N'12', N'JUNIN', N'1201', N'HUANCAYO', N'VIQUES', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 4, 3200, -12.1597, -75.2319, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1064, N'110201', N'120201', N'12', N'JUNIN', N'1202', N'CONCEPCION', N'CONCEPCION', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 18, 3303, -11.9189, -75.3125, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1065, N'110202', N'120202', N'12', N'JUNIN', N'1202', N'CONCEPCION', N'ACO', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 38, 3474, -11.9581, -75.3683, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1066, N'110203', N'120203', N'12', N'JUNIN', N'1202', N'CONCEPCION', N'ANDAMARCA', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 695, 2508, -11.7283, -74.8017, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1067, N'110206', N'120204', N'12', N'JUNIN', N'1202', N'CONCEPCION', N'CHAMBARA', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 113, 3521, -12.0272, -75.3753, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1068, N'110205', N'120205', N'12', N'JUNIN', N'1202', N'CONCEPCION', N'COCHAS', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 165, 3231, -11.66, -75.1022, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1069, N'110204', N'120206', N'12', N'JUNIN', N'1202', N'CONCEPCION', N'COMAS', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 825, 3303, -11.7178, -75.0817, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1070, N'110207', N'120207', N'12', N'JUNIN', N'1202', N'CONCEPCION', N'HEROINAS TOLEDO', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 26, 3764, -11.8356, -75.2908, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1071, N'110208', N'120208', N'12', N'JUNIN', N'1202', N'CONCEPCION', N'MANZANARES', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 21, 3381, -12.0161, -75.3458, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1072, N'110209', N'120209', N'12', N'JUNIN', N'1202', N'CONCEPCION', N'MARISCAL CASTILLA', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 744, 2513, -11.6192, -75.09, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1073, N'110210', N'120210', N'12', N'JUNIN', N'1202', N'CONCEPCION', N'MATAHUASI', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 25, 3302, -11.8939, -75.3442, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1074, N'110211', N'120211', N'12', N'JUNIN', N'1202', N'CONCEPCION', N'MITO', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 25, 3296, -11.9372, -75.3392, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1075, N'110212', N'120212', N'12', N'JUNIN', N'1202', N'CONCEPCION', N'NUEVE DE JULIO', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 7, 3339, -11.8978, -75.3181, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1076, N'110213', N'120213', N'12', N'JUNIN', N'1202', N'CONCEPCION', N'ORCOTUNA', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 45, 3271, -11.9672, -75.3075, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1077, N'110215', N'120214', N'12', N'JUNIN', N'1202', N'CONCEPCION', N'SAN JOSE DE QUERO', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 315, 3913, -12.0856, -75.5364, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1078, N'110214', N'120215', N'12', N'JUNIN', N'1202', N'CONCEPCION', N'SANTA ROSA DE OCOPA', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 14, 3396, -11.8772, -75.295, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1079, N'110801', N'120301', N'12', N'JUNIN', N'1203', N'CHANCHAMAYO', N'CHANCHAMAYO', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 920, 804, -11.0567, -75.3275, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1080, N'110806', N'120302', N'12', N'JUNIN', N'1203', N'CHANCHAMAYO', N'PERENE', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 1191, 666, -10.9475, -75.2247, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1081, N'110805', N'120303', N'12', N'JUNIN', N'1203', N'CHANCHAMAYO', N'PICHANAQUI', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 1497, 531, -10.9264, -74.8728, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1082, N'110804', N'120304', N'12', N'JUNIN', N'1203', N'CHANCHAMAYO', N'SAN LUIS DE SHUARO', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 212, 739, -10.8883, -75.2872, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1083, N'110802', N'120305', N'12', N'JUNIN', N'1203', N'CHANCHAMAYO', N'SAN RAMON', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 592, 865, -11.1206, -75.3531, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1084, N'110803', N'120306', N'12', N'JUNIN', N'1203', N'CHANCHAMAYO', N'VITOC', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 314, 962, -11.2103, -75.3347, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1085, N'110301', N'120401', N'12', N'JUNIN', N'1204', N'JAUJA', N'JAUJA', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 10, 3425, -11.7756, -75.5006, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1086, N'110302', N'120402', N'12', N'JUNIN', N'1204', N'JAUJA', N'ACOLLA', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 122, 3493, -11.7311, -75.5467, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1087, N'110303', N'120403', N'12', N'JUNIN', N'1204', N'JAUJA', N'APATA', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 422, 3359, -11.8553, -75.3544, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1088, N'110304', N'120404', N'12', N'JUNIN', N'1204', N'JAUJA', N'ATAURA', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 6, 3364, -11.8028, -75.4389, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1089, N'110305', N'120405', N'12', N'JUNIN', N'1204', N'JAUJA', N'CANCHAYLLO', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 975, 3632, -11.8022, -75.7181, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1090, N'110331', N'120406', N'12', N'JUNIN', N'1204', N'JAUJA', N'CURICACA', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 65, 3546, -11.7853, -75.675, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1091, N'110306', N'120407', N'12', N'JUNIN', N'1204', N'JAUJA', N'EL MANTARO', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 18, 3336, -11.8222, -75.3919, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1092, N'110307', N'120408', N'12', N'JUNIN', N'1204', N'JAUJA', N'HUAMALI', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 20, 3366, -11.8072, -75.4242, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1093, N'110308', N'120409', N'12', N'JUNIN', N'1204', N'JAUJA', N'HUARIPAMPA', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 14, 3378, -11.8078, -75.4711, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1094, N'110309', N'120410', N'12', N'JUNIN', N'1204', N'JAUJA', N'HUERTAS', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 12, 3404, -11.76, -75.4697, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1095, N'110310', N'120411', N'12', N'JUNIN', N'1204', N'JAUJA', N'JANJAILLO', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 32, 3830, -11.7644, -75.6103, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1096, N'110311', N'120412', N'12', N'JUNIN', N'1204', N'JAUJA', N'JULCAN', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 25, 3473, -11.7592, -75.4353, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1097, N'110312', N'120413', N'12', N'JUNIN', N'1204', N'JAUJA', N'LEONOR ORDOÑEZ', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 20, 3319, -11.8594, -75.4175, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1098, N'110313', N'120414', N'12', N'JUNIN', N'1204', N'JAUJA', N'LLOCLLAPAMPA', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 111, 3526, -11.8175, -75.6239, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1099, N'110314', N'120415', N'12', N'JUNIN', N'1204', N'JAUJA', N'MARCO', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 29, 3480, -11.7406, -75.5611, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1100, N'110315', N'120416', N'12', N'JUNIN', N'1204', N'JAUJA', N'MASMA', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 14, 3505, -11.7853, -75.4261, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1101, N'110332', N'120417', N'12', N'JUNIN', N'1204', N'JAUJA', N'MASMA CHICCHE', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 30, 3671, -11.7861, -75.3817, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1102, N'110316', N'120418', N'12', N'JUNIN', N'1204', N'JAUJA', N'MOLINOS', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 312, 3459, -11.7378, -75.4461, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1103, N'110317', N'120419', N'12', N'JUNIN', N'1204', N'JAUJA', N'MONOBAMBA', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 296, 1495, -11.3606, -75.3267, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1104, N'110318', N'120420', N'12', N'JUNIN', N'1204', N'JAUJA', N'MUQUI', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 12, 3358, -11.8333, -75.435, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1105, N'110319', N'120421', N'12', N'JUNIN', N'1204', N'JAUJA', N'MUQUIYAUYO', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 20, 3373, -11.8139, -75.4539, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1106, N'110320', N'120422', N'12', N'JUNIN', N'1204', N'JAUJA', N'PACA', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 34, 3402, -11.7092, -75.5183, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1107, N'110321', N'120423', N'12', N'JUNIN', N'1204', N'JAUJA', N'PACCHA', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 91, 3679, -11.8536, -75.5064, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1108, N'110322', N'120424', N'12', N'JUNIN', N'1204', N'JAUJA', N'PANCAN', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 11, 3398, -11.7489, -75.4861, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1109, N'110323', N'120425', N'12', N'JUNIN', N'1204', N'JAUJA', N'PARCO', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 33, 3437, -11.8011, -75.5428, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1110, N'110324', N'120426', N'12', N'JUNIN', N'1204', N'JAUJA', N'POMACANCHA', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 282, 3824, -11.7392, -75.6233, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1111, N'110325', N'120427', N'12', N'JUNIN', N'1204', N'JAUJA', N'RICRAN', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 320, 3645, -11.5394, -75.5272, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1112, N'110326', N'120428', N'12', N'JUNIN', N'1204', N'JAUJA', N'SAN LORENZO', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 22, 3337, -11.8464, -75.3817, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1113, N'110327', N'120429', N'12', N'JUNIN', N'1204', N'JAUJA', N'SAN PEDRO DE CHUNAN', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 8, 3417, -11.7256, -75.4864, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1114, N'110333', N'120430', N'12', N'JUNIN', N'1204', N'JAUJA', N'SAUSA', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 5, 3387, -11.7936, -75.4847, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1115, N'110328', N'120431', N'12', N'JUNIN', N'1204', N'JAUJA', N'SINCOS', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 237, 3280, -11.8914, -75.3869, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1116, N'110329', N'120432', N'12', N'JUNIN', N'1204', N'JAUJA', N'TUNAN MARCA', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 30, 3492, -11.7297, -75.5706, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1117, N'110330', N'120433', N'12', N'JUNIN', N'1204', N'JAUJA', N'YAULI', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 93, 3439, -11.715, -75.4719, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1118, N'110334', N'120434', N'12', N'JUNIN', N'1204', N'JAUJA', N'YAUYOS', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 21, 3420, -11.7808, -75.4997, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1119, N'110401', N'120501', N'12', N'JUNIN', N'1205', N'JUNIN', N'JUNIN', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 884, 4127, -11.1614, -75.9983, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1120, N'110402', N'120502', N'12', N'JUNIN', N'1205', N'JUNIN', N'CARHUAMAYO', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 220, 4154, -10.9228, -76.0578, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1121, N'110403', N'120503', N'12', N'JUNIN', N'1205', N'JUNIN', N'ONDORES', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 254, 4108, -11.0836, -76.1467, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1122, N'110404', N'120504', N'12', N'JUNIN', N'1205', N'JUNIN', N'ULCUMAYO', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 1129, 3636, -10.9675, -75.8781, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1123, N'110701', N'120601', N'12', N'JUNIN', N'1206', N'SATIPO', N'SATIPO', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 732, 676, -11.2539, -74.6361, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1124, N'110702', N'120602', N'12', N'JUNIN', N'1206', N'SATIPO', N'COVIRIALI', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 145, 708, -11.2914, -74.6275, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1125, N'110703', N'120603', N'12', N'JUNIN', N'1206', N'SATIPO', N'LLAYLLA', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 180, 1122, -11.3811, -74.5903, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1126, N'110704', N'120604', N'12', N'JUNIN', N'1206', N'SATIPO', N'MAZAMARI', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 2220, 694, -11.325, -74.5303, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1127, N'110705', N'120605', N'12', N'JUNIN', N'1206', N'SATIPO', N'PAMPA HERMOSA', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 567, 1231, -11.4042, -74.7517, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1128, N'110706', N'120606', N'12', N'JUNIN', N'1206', N'SATIPO', N'PANGOA', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 3679, 816, -11.4283, -74.4889, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1129, N'110707', N'120607', N'12', N'JUNIN', N'1206', N'SATIPO', N'RIO NEGRO', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 715, 665, -11.2089, -74.6594, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1130, N'110708', N'120608', N'12', N'JUNIN', N'1206', N'SATIPO', N'RIO TAMBO', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 10350, 358, -11.1475, -74.3064, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1131, N'110709', N'120609', N'12', N'JUNIN', N'1206', N'SATIPO', N'VIZCATAN DEL ENE', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 631, 539, -12.1861, -74.0272, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1132, N'110501', N'120701', N'12', N'JUNIN', N'1207', N'TARMA', N'TARMA', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 460, 3094, -11.42, -75.6881, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1133, N'110502', N'120702', N'12', N'JUNIN', N'1207', N'TARMA', N'ACOBAMBA', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 98, 2961, -11.3533, -75.6592, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1134, N'110503', N'120703', N'12', N'JUNIN', N'1207', N'TARMA', N'HUARICOLCA', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 162, 3783, -11.5119, -75.6528, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1135, N'110504', N'120704', N'12', N'JUNIN', N'1207', N'TARMA', N'HUASAHUASI', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 652, 2768, -11.265, -75.6503, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1136, N'110505', N'120705', N'12', N'JUNIN', N'1207', N'TARMA', N'LA UNION', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 140, 3556, -11.3772, -75.7519, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1137, N'110506', N'120706', N'12', N'JUNIN', N'1207', N'TARMA', N'PALCA', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 378, 2759, -11.3461, -75.5686, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1138, N'110507', N'120707', N'12', N'JUNIN', N'1207', N'TARMA', N'PALCAMAYO', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 169, 3351, -11.2958, -75.7728, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1139, N'110508', N'120708', N'12', N'JUNIN', N'1207', N'TARMA', N'SAN PEDRO DE CAJAS', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 537, 4027, -11.2492, -75.8628, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1140, N'110509', N'120709', N'12', N'JUNIN', N'1207', N'TARMA', N'TAPO', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 152, 3146, -11.3903, -75.5639, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1141, N'110601', N'120801', N'12', N'JUNIN', N'1208', N'YAULI', N'LA OROYA', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 388, 3757, -11.5219, -75.9078, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1142, N'110602', N'120802', N'12', N'JUNIN', N'1208', N'YAULI', N'CHACAPALPA', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 183, 3775, -11.7328, -75.7556, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1143, N'110603', N'120803', N'12', N'JUNIN', N'1208', N'YAULI', N'HUAY-HUAY', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 180, 3995, -11.7225, -75.905, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1144, N'110604', N'120804', N'12', N'JUNIN', N'1208', N'YAULI', N'MARCAPOMACOCHA', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 889, 4451, -11.4067, -76.3361, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1145, N'110605', N'120805', N'12', N'JUNIN', N'1208', N'YAULI', N'MOROCOCHA', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 266, 4268, -11.5872, -76.0633, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1146, N'110606', N'120806', N'12', N'JUNIN', N'1208', N'YAULI', N'PACCHA', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 324, 3786, -11.4731, -75.9606, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1147, N'110607', N'120807', N'12', N'JUNIN', N'1208', N'YAULI', N'SANTA BARBARA DE CARHUACAYAN', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 646, 4145, -11.2039, -76.2856, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1148, N'110610', N'120808', N'12', N'JUNIN', N'1208', N'YAULI', N'SANTA ROSA DE SACCO', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 101, 3831, -11.5492, -75.9403, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1149, N'110608', N'120809', N'12', N'JUNIN', N'1208', N'YAULI', N'SUITUCANCHA', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 216, 4286, -11.7875, -75.9364, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1150, N'110609', N'120810', N'12', N'JUNIN', N'1208', N'YAULI', N'YAULI', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 424, 4137, -11.6658, -76.0858, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1151, N'110901', N'120901', N'12', N'JUNIN', N'1209', N'CHUPACA', N'CHUPACA', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 22, 3286, -12.0578, -75.2894, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1152, N'110902', N'120902', N'12', N'JUNIN', N'1209', N'CHUPACA', N'AHUAC', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 70, 3341, -12.0858, -75.3211, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1153, N'110903', N'120903', N'12', N'JUNIN', N'1209', N'CHUPACA', N'CHONGOS BAJO', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 101, 3288, -12.1339, -75.2681, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1154, N'110904', N'120904', N'12', N'JUNIN', N'1209', N'CHUPACA', N'HUACHAC', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 22, 3378, -12.0206, -75.3411, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1155, N'110905', N'120905', N'12', N'JUNIN', N'1209', N'CHUPACA', N'HUAMANCACA CHICO', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 9, 3203, -12.0808, -75.2422, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1156, N'110906', N'120906', N'12', N'JUNIN', N'1209', N'CHUPACA', N'SAN JUAN DE YSCOS', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 25, 3280, -12.0983, -75.2928, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1157, N'110907', N'120907', N'12', N'JUNIN', N'1209', N'CHUPACA', N'SAN JUAN DE JARPA', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 137, 3692, -12.1264, -75.4356, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1158, N'110908', N'120908', N'12', N'JUNIN', N'1209', N'CHUPACA', N'TRES DE DICIEMBRE', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 15, 3193, -12.1097, -75.2458, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1159, N'110909', N'120909', N'12', N'JUNIN', N'1209', N'CHUPACA', N'YANACANCHA', N'JUNIN', N'CENTRO', N'MACROREGION CENTRO', N'PE-JUN', N'12', 743, 3854, -12.2011, -75.3867, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1160, N'120101', N'130101', N'13', N'LA LIBERTAD', N'1301', N'TRUJILLO', N'TRUJILLO', N'LA LIBERTAD', N'NORTE', N'MACROREGION NORTE', N'PE-LAL', N'13', 39, 74, -8.1, -79.0306, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1161, N'120110', N'130102', N'13', N'LA LIBERTAD', N'1301', N'TRUJILLO', N'EL PORVENIR', N'LA LIBERTAD', N'NORTE', N'MACROREGION NORTE', N'PE-LAL', N'13', 37, 92, -8.0881, -78.9978, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1162, N'120112', N'130103', N'13', N'LA LIBERTAD', N'1301', N'TRUJILLO', N'FLORENCIA DE MORA', N'LA LIBERTAD', N'NORTE', N'MACROREGION NORTE', N'PE-LAL', N'13', 2, 92, -8.0828, -79.0233, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1163, N'120102', N'130104', N'13', N'LA LIBERTAD', N'1301', N'TRUJILLO', N'HUANCHACO', N'LA LIBERTAD', N'NORTE', N'MACROREGION NORTE', N'PE-LAL', N'13', 332, 19, -8.08, -79.1217, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1164, N'120111', N'130105', N'13', N'LA LIBERTAD', N'1301', N'TRUJILLO', N'LA ESPERANZA', N'LA LIBERTAD', N'NORTE', N'MACROREGION NORTE', N'PE-LAL', N'13', 16, 137, -8.0561, -79.0517, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1165, N'120103', N'130106', N'13', N'LA LIBERTAD', N'1301', N'TRUJILLO', N'LAREDO', N'LA LIBERTAD', N'NORTE', N'MACROREGION NORTE', N'PE-LAL', N'13', 335, 107, -8.0897, -78.9603, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1166, N'120104', N'130107', N'13', N'LA LIBERTAD', N'1301', N'TRUJILLO', N'MOCHE', N'LA LIBERTAD', N'NORTE', N'MACROREGION NORTE', N'PE-LAL', N'13', 25, 25, -8.1714, -79.0092, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1167, N'120109', N'130108', N'13', N'LA LIBERTAD', N'1301', N'TRUJILLO', N'POROTO', N'LA LIBERTAD', N'NORTE', N'MACROREGION NORTE', N'PE-LAL', N'13', 276, 659, -8.0114, -78.7678, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1168, N'120105', N'130109', N'13', N'LA LIBERTAD', N'1301', N'TRUJILLO', N'SALAVERRY', N'LA LIBERTAD', N'NORTE', N'MACROREGION NORTE', N'PE-LAL', N'13', 296, 10, -8.2244, -78.9761, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1169, N'120106', N'130110', N'13', N'LA LIBERTAD', N'1301', N'TRUJILLO', N'SIMBAL', N'LA LIBERTAD', N'NORTE', N'MACROREGION NORTE', N'PE-LAL', N'13', 391, 604, -7.9767, -78.8133, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1170, N'120107', N'130111', N'13', N'LA LIBERTAD', N'1301', N'TRUJILLO', N'VICTOR LARCO HERRERA', N'LA LIBERTAD', N'NORTE', N'MACROREGION NORTE', N'PE-LAL', N'13', 18, 24, -8.1364, -79.0433, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1171, N'120801', N'130201', N'13', N'LA LIBERTAD', N'1302', N'ASCOPE', N'ASCOPE', N'LA LIBERTAD', N'NORTE', N'MACROREGION NORTE', N'PE-LAL', N'13', 290, 242, -7.7136, -79.1072, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1172, N'120802', N'130202', N'13', N'LA LIBERTAD', N'1302', N'ASCOPE', N'CHICAMA', N'LA LIBERTAD', N'NORTE', N'MACROREGION NORTE', N'PE-LAL', N'13', 871, 150, -7.8425, -79.1442, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1173, N'120803', N'130203', N'13', N'LA LIBERTAD', N'1302', N'ASCOPE', N'CHOCOPE', N'LA LIBERTAD', N'NORTE', N'MACROREGION NORTE', N'PE-LAL', N'13', 96, 118, -7.7914, -79.2231, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1174, N'120805', N'130204', N'13', N'LA LIBERTAD', N'1302', N'ASCOPE', N'MAGDALENA DE CAO', N'LA LIBERTAD', N'NORTE', N'MACROREGION NORTE', N'PE-LAL', N'13', 163, 42, -7.8764, -79.2958, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1175, N'120806', N'130205', N'13', N'LA LIBERTAD', N'1302', N'ASCOPE', N'PAIJAN', N'LA LIBERTAD', N'NORTE', N'MACROREGION NORTE', N'PE-LAL', N'13', 80, 97, -7.7347, -79.3033, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1176, N'120807', N'130206', N'13', N'LA LIBERTAD', N'1302', N'ASCOPE', N'RAZURI', N'LA LIBERTAD', N'NORTE', N'MACROREGION NORTE', N'PE-LAL', N'13', 317, 14, -7.7022, -79.4378, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1177, N'120804', N'130207', N'13', N'LA LIBERTAD', N'1302', N'ASCOPE', N'SANTIAGO DE CAO', N'LA LIBERTAD', N'NORTE', N'MACROREGION NORTE', N'PE-LAL', N'13', 155, 32, -7.9578, -79.2436, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1178, N'120808', N'130208', N'13', N'LA LIBERTAD', N'1302', N'ASCOPE', N'CASA GRANDE', N'LA LIBERTAD', N'NORTE', N'MACROREGION NORTE', N'PE-LAL', N'13', 688, 162, -7.7453, -79.1881, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1179, N'120201', N'130301', N'13', N'LA LIBERTAD', N'1303', N'BOLIVAR', N'BOLIVAR', N'LA LIBERTAD', N'NORTE', N'MACROREGION NORTE', N'PE-LAL', N'13', 741, 3157, -7.1539, -77.7022, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1180, N'120202', N'130302', N'13', N'LA LIBERTAD', N'1303', N'BOLIVAR', N'BAMBAMARCA', N'LA LIBERTAD', N'NORTE', N'MACROREGION NORTE', N'PE-LAL', N'13', 165, 3488, -7.4397, -77.6931, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1181, N'120203', N'130303', N'13', N'LA LIBERTAD', N'1303', N'BOLIVAR', N'CONDORMARCA', N'LA LIBERTAD', N'NORTE', N'MACROREGION NORTE', N'PE-LAL', N'13', 331, 2793, -7.5467, -77.5997, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1182, N'120204', N'130304', N'13', N'LA LIBERTAD', N'1303', N'BOLIVAR', N'LONGOTEA', N'LA LIBERTAD', N'NORTE', N'MACROREGION NORTE', N'PE-LAL', N'13', 193, 2617, -7.0439, -77.8722, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1183, N'120206', N'130305', N'13', N'LA LIBERTAD', N'1303', N'BOLIVAR', N'UCHUMARCA', N'LA LIBERTAD', N'NORTE', N'MACROREGION NORTE', N'PE-LAL', N'13', 191, 3043, -7.0472, -77.8056, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1184, N'120205', N'130306', N'13', N'LA LIBERTAD', N'1303', N'BOLIVAR', N'UCUNCHA', N'LA LIBERTAD', N'NORTE', N'MACROREGION NORTE', N'PE-LAL', N'13', 98, 2634, -7.1653, -77.8592, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1185, N'120901', N'130401', N'13', N'LA LIBERTAD', N'1304', N'CHEPEN', N'CHEPEN', N'LA LIBERTAD', N'NORTE', N'MACROREGION NORTE', N'PE-LAL', N'13', 287, 160, -7.2275, -79.4294, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1186, N'120902', N'130402', N'13', N'LA LIBERTAD', N'1304', N'CHEPEN', N'PACANGA', N'LA LIBERTAD', N'NORTE', N'MACROREGION NORTE', N'PE-LAL', N'13', 584, 112, -7.1714, -79.4856, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1187, N'120903', N'130403', N'13', N'LA LIBERTAD', N'1304', N'CHEPEN', N'PUEBLO NUEVO', N'LA LIBERTAD', N'NORTE', N'MACROREGION NORTE', N'PE-LAL', N'13', 271, 84, -7.1825, -79.52, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1188, N'121001', N'130501', N'13', N'LA LIBERTAD', N'1305', N'JULCAN', N'JULCAN', N'LA LIBERTAD', N'NORTE', N'MACROREGION NORTE', N'PE-LAL', N'13', 208, 3420, -8.0428, -78.4864, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1189, N'121003', N'130502', N'13', N'LA LIBERTAD', N'1305', N'JULCAN', N'CALAMARCA', N'LA LIBERTAD', N'NORTE', N'MACROREGION NORTE', N'PE-LAL', N'13', 208, 3377, -8.17, -78.4122, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1190, N'121002', N'130503', N'13', N'LA LIBERTAD', N'1305', N'JULCAN', N'CARABAMBA', N'LA LIBERTAD', N'NORTE', N'MACROREGION NORTE', N'PE-LAL', N'13', 254, 3345, -8.1125, -78.6075, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1191, N'121004', N'130504', N'13', N'LA LIBERTAD', N'1305', N'JULCAN', N'HUASO', N'LA LIBERTAD', N'NORTE', N'MACROREGION NORTE', N'PE-LAL', N'13', 431, 3075, -8.2247, -78.4142, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1192, N'120401', N'130601', N'13', N'LA LIBERTAD', N'1306', N'OTUZCO', N'OTUZCO', N'LA LIBERTAD', N'NORTE', N'MACROREGION NORTE', N'PE-LAL', N'13', 444, 2701, -7.9022, -78.5656, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1193, N'120402', N'130602', N'13', N'LA LIBERTAD', N'1306', N'OTUZCO', N'AGALLPAMPA', N'LA LIBERTAD', N'NORTE', N'MACROREGION NORTE', N'PE-LAL', N'13', 259, 3143, -7.9819, -78.5467, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1194, N'120403', N'130604', N'13', N'LA LIBERTAD', N'1306', N'OTUZCO', N'CHARAT', N'LA LIBERTAD', N'NORTE', N'MACROREGION NORTE', N'PE-LAL', N'13', 69, 2280, -7.8239, -78.4481, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1195, N'120404', N'130605', N'13', N'LA LIBERTAD', N'1306', N'OTUZCO', N'HUARANCHAL', N'LA LIBERTAD', N'NORTE', N'MACROREGION NORTE', N'PE-LAL', N'13', 150, 2208, -7.6897, -78.4425, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1196, N'120405', N'130606', N'13', N'LA LIBERTAD', N'1306', N'OTUZCO', N'LA CUESTA', N'LA LIBERTAD', N'NORTE', N'MACROREGION NORTE', N'PE-LAL', N'13', 39, 1900, -7.9189, -78.7047, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1197, N'120413', N'130608', N'13', N'LA LIBERTAD', N'1306', N'OTUZCO', N'MACHE', N'LA LIBERTAD', N'NORTE', N'MACROREGION NORTE', N'PE-LAL', N'13', 37, 3320, -8.0292, -78.535, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1198, N'120408', N'130610', N'13', N'LA LIBERTAD', N'1306', N'OTUZCO', N'PARANDAY', N'LA LIBERTAD', N'NORTE', N'MACROREGION NORTE', N'PE-LAL', N'13', 21, 3137, -7.885, -78.7094, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1199, N'120409', N'130611', N'13', N'LA LIBERTAD', N'1306', N'OTUZCO', N'SALPO', N'LA LIBERTAD', N'NORTE', N'MACROREGION NORTE', N'PE-LAL', N'13', 193, 3461, -8.0031, -78.6042, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1200, N'120410', N'130613', N'13', N'LA LIBERTAD', N'1306', N'OTUZCO', N'SINSICAP', N'LA LIBERTAD', N'NORTE', N'MACROREGION NORTE', N'PE-LAL', N'13', 453, 2335, -7.8517, -78.7542, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1201, N'120411', N'130614', N'13', N'LA LIBERTAD', N'1306', N'OTUZCO', N'USQUIL', N'LA LIBERTAD', N'NORTE', N'MACROREGION NORTE', N'PE-LAL', N'13', 446, 3049, -7.8153, -78.4167, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1202, N'120501', N'130701', N'13', N'LA LIBERTAD', N'1307', N'PACASMAYO', N'SAN PEDRO DE LLOC', N'LA LIBERTAD', N'NORTE', N'MACROREGION NORTE', N'PE-LAL', N'13', 697, 49, -7.4183, -79.5147, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1203, N'120503', N'130702', N'13', N'LA LIBERTAD', N'1307', N'PACASMAYO', N'GUADALUPE', N'LA LIBERTAD', N'NORTE', N'MACROREGION NORTE', N'PE-LAL', N'13', 165, 124, -7.2436, -79.4703, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1204, N'120504', N'130703', N'13', N'LA LIBERTAD', N'1307', N'PACASMAYO', N'JEQUETEPEQUE', N'LA LIBERTAD', N'NORTE', N'MACROREGION NORTE', N'PE-LAL', N'13', 51, 13, -7.3375, -79.5631, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1205, N'120506', N'130704', N'13', N'LA LIBERTAD', N'1307', N'PACASMAYO', N'PACASMAYO', N'LA LIBERTAD', N'NORTE', N'MACROREGION NORTE', N'PE-LAL', N'13', 31, 21, -7.4011, -79.5722, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1206, N'120508', N'130705', N'13', N'LA LIBERTAD', N'1307', N'PACASMAYO', N'SAN JOSE', N'LA LIBERTAD', N'NORTE', N'MACROREGION NORTE', N'PE-LAL', N'13', 181, 117, -7.35, -79.4553, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1207, N'120601', N'130801', N'13', N'LA LIBERTAD', N'1308', N'PATAZ', N'TAYABAMBA', N'LA LIBERTAD', N'NORTE', N'MACROREGION NORTE', N'PE-LAL', N'13', 339, 3222, -8.275, -77.2961, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1208, N'120602', N'130802', N'13', N'LA LIBERTAD', N'1308', N'PATAZ', N'BULDIBUYO', N'LA LIBERTAD', N'NORTE', N'MACROREGION NORTE', N'PE-LAL', N'13', 227, 3189, -8.1269, -77.3953, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1209, N'120603', N'130803', N'13', N'LA LIBERTAD', N'1308', N'PATAZ', N'CHILLIA', N'LA LIBERTAD', N'NORTE', N'MACROREGION NORTE', N'PE-LAL', N'13', 300, 3166, -8.1244, -77.515, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1210, N'120605', N'130804', N'13', N'LA LIBERTAD', N'1308', N'PATAZ', N'HUANCASPATA', N'LA LIBERTAD', N'NORTE', N'MACROREGION NORTE', N'PE-LAL', N'13', 247, 3313, -8.4575, -77.2983, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1211, N'120604', N'130805', N'13', N'LA LIBERTAD', N'1308', N'PATAZ', N'HUAYLILLAS', N'LA LIBERTAD', N'NORTE', N'MACROREGION NORTE', N'PE-LAL', N'13', 90, 2381, -8.1872, -77.3439, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1212, N'120606', N'130806', N'13', N'LA LIBERTAD', N'1308', N'PATAZ', N'HUAYO', N'LA LIBERTAD', N'NORTE', N'MACROREGION NORTE', N'PE-LAL', N'13', 125, 2188, -8.0044, -77.5922, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1213, N'120607', N'130807', N'13', N'LA LIBERTAD', N'1308', N'PATAZ', N'ONGON', N'LA LIBERTAD', N'NORTE', N'MACROREGION NORTE', N'PE-LAL', N'13', 1395, 1353, -8.2078, -76.9828, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1214, N'120608', N'130808', N'13', N'LA LIBERTAD', N'1308', N'PATAZ', N'PARCOY', N'LA LIBERTAD', N'NORTE', N'MACROREGION NORTE', N'PE-LAL', N'13', 305, 3121, -8.0333, -77.4797, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1215, N'120609', N'130809', N'13', N'LA LIBERTAD', N'1308', N'PATAZ', N'PATAZ', N'LA LIBERTAD', N'NORTE', N'MACROREGION NORTE', N'PE-LAL', N'13', 467, 2611, -7.785, -77.5939, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1216, N'120610', N'130810', N'13', N'LA LIBERTAD', N'1308', N'PATAZ', N'PIAS', N'LA LIBERTAD', N'NORTE', N'MACROREGION NORTE', N'PE-LAL', N'13', 372, 2641, -7.8719, -77.5467, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1217, N'120613', N'130811', N'13', N'LA LIBERTAD', N'1308', N'PATAZ', N'SANTIAGO DE CHALLAS', N'LA LIBERTAD', N'NORTE', N'MACROREGION NORTE', N'PE-LAL', N'13', 129, 3316, -8.4381, -77.3206, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1218, N'120611', N'130812', N'13', N'LA LIBERTAD', N'1308', N'PATAZ', N'TAURIJA', N'LA LIBERTAD', N'NORTE', N'MACROREGION NORTE', N'PE-LAL', N'13', 130, 3123, -8.3078, -77.4236, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1219, N'120612', N'130813', N'13', N'LA LIBERTAD', N'1308', N'PATAZ', N'URPAY', N'LA LIBERTAD', N'NORTE', N'MACROREGION NORTE', N'PE-LAL', N'13', 100, 2707, -8.3478, -77.3894, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1220, N'120301', N'130901', N'13', N'LA LIBERTAD', N'1309', N'SANCHEZ CARRION', N'HUAMACHUCO', N'LA LIBERTAD', N'NORTE', N'MACROREGION NORTE', N'PE-LAL', N'13', 424, 3183, -7.8111, -78.0467, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1221, N'120304', N'130902', N'13', N'LA LIBERTAD', N'1309', N'SANCHEZ CARRION', N'CHUGAY', N'LA LIBERTAD', N'NORTE', N'MACROREGION NORTE', N'PE-LAL', N'13', 416, 3394, -7.7819, -77.8683, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1222, N'120302', N'130903', N'13', N'LA LIBERTAD', N'1309', N'SANCHEZ CARRION', N'COCHORCO', N'LA LIBERTAD', N'NORTE', N'MACROREGION NORTE', N'PE-LAL', N'13', 258, 2620, -7.8064, -77.7175, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1223, N'120303', N'130904', N'13', N'LA LIBERTAD', N'1309', N'SANCHEZ CARRION', N'CURGOS', N'LA LIBERTAD', N'NORTE', N'MACROREGION NORTE', N'PE-LAL', N'13', 100, 3244, -7.86, -77.9439, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1224, N'120305', N'130905', N'13', N'LA LIBERTAD', N'1309', N'SANCHEZ CARRION', N'MARCABAL', N'LA LIBERTAD', N'NORTE', N'MACROREGION NORTE', N'PE-LAL', N'13', 230, 2943, -7.7058, -78.0336, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1225, N'120306', N'130906', N'13', N'LA LIBERTAD', N'1309', N'SANCHEZ CARRION', N'SANAGORAN', N'LA LIBERTAD', N'NORTE', N'MACROREGION NORTE', N'PE-LAL', N'13', 324, 2688, -7.7861, -78.1419, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1226, N'120307', N'130907', N'13', N'LA LIBERTAD', N'1309', N'SANCHEZ CARRION', N'SARIN', N'LA LIBERTAD', N'NORTE', N'MACROREGION NORTE', N'PE-LAL', N'13', 340, 2840, -7.9114, -77.9061, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1227, N'120308', N'130908', N'13', N'LA LIBERTAD', N'1309', N'SANCHEZ CARRION', N'SARTIMBAMBA', N'LA LIBERTAD', N'NORTE', N'MACROREGION NORTE', N'PE-LAL', N'13', 394, 2697, -7.6992, -77.7436, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1228, N'120701', N'131001', N'13', N'LA LIBERTAD', N'1310', N'SANTIAGO DE CHUCO', N'SANTIAGO DE CHUCO', N'LA LIBERTAD', N'NORTE', N'MACROREGION NORTE', N'PE-LAL', N'13', 1074, 3126, -8.1453, -78.1736, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1229, N'120708', N'131002', N'13', N'LA LIBERTAD', N'1310', N'SANTIAGO DE CHUCO', N'ANGASMARCA', N'LA LIBERTAD', N'NORTE', N'MACROREGION NORTE', N'PE-LAL', N'13', 153, 2889, -8.1328, -78.0558, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1230, N'120702', N'131003', N'13', N'LA LIBERTAD', N'1310', N'SANTIAGO DE CHUCO', N'CACHICADAN', N'LA LIBERTAD', N'NORTE', N'MACROREGION NORTE', N'PE-LAL', N'13', 267, 2897, -8.0944, -78.1489, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1231, N'120703', N'131004', N'13', N'LA LIBERTAD', N'1310', N'SANTIAGO DE CHUCO', N'MOLLEBAMBA', N'LA LIBERTAD', N'NORTE', N'MACROREGION NORTE', N'PE-LAL', N'13', 70, 3099, -8.1708, -77.9739, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1232, N'120704', N'131005', N'13', N'LA LIBERTAD', N'1310', N'SANTIAGO DE CHUCO', N'MOLLEPATA', N'LA LIBERTAD', N'NORTE', N'MACROREGION NORTE', N'PE-LAL', N'13', 71, 2694, -8.1933, -77.9572, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1233, N'120705', N'131006', N'13', N'LA LIBERTAD', N'1310', N'SANTIAGO DE CHUCO', N'QUIRUVILCA', N'LA LIBERTAD', N'NORTE', N'MACROREGION NORTE', N'PE-LAL', N'13', 549, 3992, -8.0019, -78.31, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1234, N'120706', N'131007', N'13', N'LA LIBERTAD', N'1310', N'SANTIAGO DE CHUCO', N'SANTA CRUZ DE CHUCA', N'LA LIBERTAD', N'NORTE', N'MACROREGION NORTE', N'PE-LAL', N'13', 165, 2937, -8.1203, -78.1422, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1235, N'120707', N'131008', N'13', N'LA LIBERTAD', N'1310', N'SANTIAGO DE CHUCO', N'SITABAMBA', N'LA LIBERTAD', N'NORTE', N'MACROREGION NORTE', N'PE-LAL', N'13', 310, 3080, -8.0222, -77.73, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1236, N'121101', N'131101', N'13', N'LA LIBERTAD', N'1311', N'GRAN CHIMU', N'CASCAS', N'LA LIBERTAD', N'NORTE', N'MACROREGION NORTE', N'PE-LAL', N'13', 466, 1278, -7.4794, -78.8197, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1237, N'121102', N'131102', N'13', N'LA LIBERTAD', N'1311', N'GRAN CHIMU', N'LUCMA', N'LA LIBERTAD', N'NORTE', N'MACROREGION NORTE', N'PE-LAL', N'13', 280, 2192, -7.6406, -78.5522, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1238, N'121103', N'131103', N'13', N'LA LIBERTAD', N'1311', N'GRAN CHIMU', N'MARMOT', N'LA LIBERTAD', N'NORTE', N'MACROREGION NORTE', N'PE-LAL', N'13', 300, 1512, -7.6983, -78.6261, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1239, N'121104', N'131104', N'13', N'LA LIBERTAD', N'1311', N'GRAN CHIMU', N'SAYAPULLO', N'LA LIBERTAD', N'NORTE', N'MACROREGION NORTE', N'PE-LAL', N'13', 238, 2384, -7.5958, -78.465, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1240, N'121201', N'131201', N'13', N'LA LIBERTAD', N'1312', N'VIRU', N'VIRU', N'LA LIBERTAD', N'NORTE', N'MACROREGION NORTE', N'PE-LAL', N'13', 1073, 88, -8.4144, -78.7528, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1241, N'121202', N'131202', N'13', N'LA LIBERTAD', N'1312', N'VIRU', N'CHAO', N'LA LIBERTAD', N'NORTE', N'MACROREGION NORTE', N'PE-LAL', N'13', 1737, 103, -8.5406, -78.6789, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1242, N'121203', N'131203', N'13', N'LA LIBERTAD', N'1312', N'VIRU', N'GUADALUPITO', N'LA LIBERTAD', N'NORTE', N'MACROREGION NORTE', N'PE-LAL', N'13', 405, 30, -8.9517, -78.6247, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1243, N'130101', N'140101', N'14', N'LAMBAYEQUE', N'1401', N'CHICLAYO', N'CHICLAYO', N'LAMBAYEQUE', N'NORTE', N'MACROREGION NORTE', N'PE-LAM', N'14', 50, 28, -6.7669, -79.8506, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1244, N'130102', N'140102', N'14', N'LAMBAYEQUE', N'1401', N'CHICLAYO', N'CHONGOYAPE', N'LAMBAYEQUE', N'NORTE', N'MACROREGION NORTE', N'PE-LAM', N'14', 712, 219, -6.6431, -79.3853, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1245, N'130103', N'140103', N'14', N'LAMBAYEQUE', N'1401', N'CHICLAYO', N'ETEN', N'LAMBAYEQUE', N'NORTE', N'MACROREGION NORTE', N'PE-LAM', N'14', 85, 15, -6.9069, -79.8625, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1246, N'130104', N'140104', N'14', N'LAMBAYEQUE', N'1401', N'CHICLAYO', N'ETEN PUERTO', N'LAMBAYEQUE', N'NORTE', N'MACROREGION NORTE', N'PE-LAM', N'14', 14, 14, -6.9256, -79.8661, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1247, N'130112', N'140105', N'14', N'LAMBAYEQUE', N'1401', N'CHICLAYO', N'JOSE LEONARDO ORTIZ', N'LAMBAYEQUE', N'NORTE', N'MACROREGION NORTE', N'PE-LAM', N'14', 28, 41, -6.7631, -79.8344, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1248, N'130115', N'140106', N'14', N'LAMBAYEQUE', N'1401', N'CHICLAYO', N'LA VICTORIA', N'LAMBAYEQUE', N'NORTE', N'MACROREGION NORTE', N'PE-LAM', N'14', 29, 36, -6.7944, -79.8444, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1249, N'130105', N'140107', N'14', N'LAMBAYEQUE', N'1401', N'CHICLAYO', N'LAGUNAS', N'LAMBAYEQUE', N'NORTE', N'MACROREGION NORTE', N'PE-LAM', N'14', 429, 34, -6.9911, -79.6228, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1250, N'130106', N'140108', N'14', N'LAMBAYEQUE', N'1401', N'CHICLAYO', N'MONSEFU', N'LAMBAYEQUE', N'NORTE', N'MACROREGION NORTE', N'PE-LAM', N'14', 45, 40, -6.8781, -79.8725, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1251, N'130107', N'140109', N'14', N'LAMBAYEQUE', N'1401', N'CHICLAYO', N'NUEVA ARICA', N'LAMBAYEQUE', N'NORTE', N'MACROREGION NORTE', N'PE-LAM', N'14', 209, 178, -6.8742, -79.3436, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1252, N'130108', N'140110', N'14', N'LAMBAYEQUE', N'1401', N'CHICLAYO', N'OYOTUN', N'LAMBAYEQUE', N'NORTE', N'MACROREGION NORTE', N'PE-LAM', N'14', 455, 209, -6.8544, -79.3064, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1253, N'130109', N'140111', N'14', N'LAMBAYEQUE', N'1401', N'CHICLAYO', N'PICSI', N'LAMBAYEQUE', N'NORTE', N'MACROREGION NORTE', N'PE-LAM', N'14', 57, 43, -6.7183, -79.7706, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1254, N'130110', N'140112', N'14', N'LAMBAYEQUE', N'1401', N'CHICLAYO', N'PIMENTEL', N'LAMBAYEQUE', N'NORTE', N'MACROREGION NORTE', N'PE-LAM', N'14', 67, 22, -6.8353, -79.9358, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1255, N'130111', N'140113', N'14', N'LAMBAYEQUE', N'1401', N'CHICLAYO', N'REQUE', N'LAMBAYEQUE', N'NORTE', N'MACROREGION NORTE', N'PE-LAM', N'14', 47, 34, -6.865, -79.8192, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1256, N'130113', N'140114', N'14', N'LAMBAYEQUE', N'1401', N'CHICLAYO', N'SANTA ROSA', N'LAMBAYEQUE', N'NORTE', N'MACROREGION NORTE', N'PE-LAM', N'14', 14, 23, -6.8817, -79.9208, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1257, N'130114', N'140115', N'14', N'LAMBAYEQUE', N'1401', N'CHICLAYO', N'SAÑA', N'LAMBAYEQUE', N'NORTE', N'MACROREGION NORTE', N'PE-LAM', N'14', 314, 70, -6.9181, -79.5833, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1258, N'130116', N'140116', N'14', N'LAMBAYEQUE', N'1401', N'CHICLAYO', N'CAYALTI', N'LAMBAYEQUE', N'NORTE', N'MACROREGION NORTE', N'PE-LAM', N'14', 163, 86, -6.8917, -79.5622, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1259, N'130117', N'140117', N'14', N'LAMBAYEQUE', N'1401', N'CHICLAYO', N'PATAPO', N'LAMBAYEQUE', N'NORTE', N'MACROREGION NORTE', N'PE-LAM', N'14', 183, 113, -6.7356, -79.6347, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1260, N'130118', N'140118', N'14', N'LAMBAYEQUE', N'1401', N'CHICLAYO', N'POMALCA', N'LAMBAYEQUE', N'NORTE', N'MACROREGION NORTE', N'PE-LAM', N'14', 80, 61, -6.77, -79.7753, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1261, N'130119', N'140119', N'14', N'LAMBAYEQUE', N'1401', N'CHICLAYO', N'PUCALA', N'LAMBAYEQUE', N'NORTE', N'MACROREGION NORTE', N'PE-LAM', N'14', 176, 108, -6.7819, -79.6122, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1262, N'130120', N'140120', N'14', N'LAMBAYEQUE', N'1401', N'CHICLAYO', N'TUMAN', N'LAMBAYEQUE', N'NORTE', N'MACROREGION NORTE', N'PE-LAM', N'14', 130, 71, -6.7511, -79.7011, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1263, N'130201', N'140201', N'14', N'LAMBAYEQUE', N'1402', N'FERREÑAFE', N'FERREÑAFE', N'LAMBAYEQUE', N'NORTE', N'MACROREGION NORTE', N'PE-LAM', N'14', 62, 38, -6.6389, -79.7883, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1264, N'130203', N'140202', N'14', N'LAMBAYEQUE', N'1402', N'FERREÑAFE', N'CAÑARIS', N'LAMBAYEQUE', N'NORTE', N'MACROREGION NORTE', N'PE-LAM', N'14', 285, 2421, -6.0461, -79.2653, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1265, N'130202', N'140203', N'14', N'LAMBAYEQUE', N'1402', N'FERREÑAFE', N'INCAHUASI', N'LAMBAYEQUE', N'NORTE', N'MACROREGION NORTE', N'PE-LAM', N'14', 444, 3030, -6.2353, -79.3169, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1266, N'130206', N'140204', N'14', N'LAMBAYEQUE', N'1402', N'FERREÑAFE', N'MANUEL ANTONIO MESONES MURO', N'LAMBAYEQUE', N'NORTE', N'MACROREGION NORTE', N'PE-LAM', N'14', 201, 66, -6.645, -79.7389, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1267, N'130204', N'140205', N'14', N'LAMBAYEQUE', N'1402', N'FERREÑAFE', N'PITIPO', N'LAMBAYEQUE', N'NORTE', N'MACROREGION NORTE', N'PE-LAM', N'14', 558, 70, -6.5658, -79.7808, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1268, N'130205', N'140206', N'14', N'LAMBAYEQUE', N'1402', N'FERREÑAFE', N'PUEBLO NUEVO', N'LAMBAYEQUE', N'NORTE', N'MACROREGION NORTE', N'PE-LAM', N'14', 29, 45, -6.6403, -79.7961, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1269, N'130301', N'140301', N'14', N'LAMBAYEQUE', N'1403', N'LAMBAYEQUE', N'LAMBAYEQUE', N'LAMBAYEQUE', N'NORTE', N'MACROREGION NORTE', N'PE-LAM', N'14', 331, 24, -6.7069, -79.8953, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1270, N'130302', N'140302', N'14', N'LAMBAYEQUE', N'1403', N'LAMBAYEQUE', N'CHOCHOPE', N'LAMBAYEQUE', N'NORTE', N'MACROREGION NORTE', N'PE-LAM', N'14', 79, 198, -6.1578, -79.6478, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1271, N'130303', N'140303', N'14', N'LAMBAYEQUE', N'1403', N'LAMBAYEQUE', N'ILLIMO', N'LAMBAYEQUE', N'NORTE', N'MACROREGION NORTE', N'PE-LAM', N'14', 24, 60, -6.4739, -79.8547, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1272, N'130304', N'140304', N'14', N'LAMBAYEQUE', N'1403', N'LAMBAYEQUE', N'JAYANCA', N'LAMBAYEQUE', N'NORTE', N'MACROREGION NORTE', N'PE-LAM', N'14', 681, 67, -6.3928, -79.8228, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1273, N'130305', N'140305', N'14', N'LAMBAYEQUE', N'1403', N'LAMBAYEQUE', N'MOCHUMI', N'LAMBAYEQUE', N'NORTE', N'MACROREGION NORTE', N'PE-LAM', N'14', 104, 40, -6.5478, -79.865, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1274, N'130306', N'140306', N'14', N'LAMBAYEQUE', N'1403', N'LAMBAYEQUE', N'MORROPE', N'LAMBAYEQUE', N'NORTE', N'MACROREGION NORTE', N'PE-LAM', N'14', 1042, 5, -6.5403, -80.0156, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1275, N'130307', N'140307', N'14', N'LAMBAYEQUE', N'1403', N'LAMBAYEQUE', N'MOTUPE', N'LAMBAYEQUE', N'NORTE', N'MACROREGION NORTE', N'PE-LAM', N'14', 557, 140, -6.1508, -79.7142, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1276, N'130308', N'140308', N'14', N'LAMBAYEQUE', N'1403', N'LAMBAYEQUE', N'OLMOS', N'LAMBAYEQUE', N'NORTE', N'MACROREGION NORTE', N'PE-LAM', N'14', 5583, 192, -5.9878, -79.7475, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1277, N'130309', N'140309', N'14', N'LAMBAYEQUE', N'1403', N'LAMBAYEQUE', N'PACORA', N'LAMBAYEQUE', N'NORTE', N'MACROREGION NORTE', N'PE-LAM', N'14', 88, 69, -6.4286, -79.8389, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1278, N'130310', N'140310', N'14', N'LAMBAYEQUE', N'1403', N'LAMBAYEQUE', N'SALAS', N'LAMBAYEQUE', N'NORTE', N'MACROREGION NORTE', N'PE-LAM', N'14', 992, 174, -6.2747, -79.6072, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1279, N'130311', N'140311', N'14', N'LAMBAYEQUE', N'1403', N'LAMBAYEQUE', N'SAN JOSE', N'LAMBAYEQUE', N'NORTE', N'MACROREGION NORTE', N'PE-LAM', N'14', 47, 33, -6.7694, -79.9681, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1280, N'130312', N'140312', N'14', N'LAMBAYEQUE', N'1403', N'LAMBAYEQUE', N'TUCUME', N'LAMBAYEQUE', N'NORTE', N'MACROREGION NORTE', N'PE-LAM', N'14', 67, 61, -6.51, -79.8592, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1281, N'140101', N'150101', N'15', N'LIMA', N'1501', N'LIMA', N'LIMA', N'LIMA PROVINCIA', N'LIMA METROPOLITANA', N'LIMA Y CALLAO', N'PE-LMA', N'26', 22, 162, -12.0453, -77.0308, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1282, N'140102', N'150102', N'15', N'LIMA', N'1501', N'LIMA', N'ANCON', N'LIMA PROVINCIA', N'LIMA METROPOLITANA', N'LIMA Y CALLAO', N'PE-LMA', N'26', 285, 14, -11.7739, -77.1764, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1283, N'140103', N'150103', N'15', N'LIMA', N'1501', N'LIMA', N'ATE', N'LIMA PROVINCIA', N'LIMA METROPOLITANA', N'LIMA Y CALLAO', N'PE-LMA', N'26', 78, 378, -12.0264, -76.9214, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1284, N'140125', N'150104', N'15', N'LIMA', N'1501', N'LIMA', N'BARRANCO', N'LIMA PROVINCIA', N'LIMA METROPOLITANA', N'LIMA Y CALLAO', N'PE-LMA', N'26', 3, 97, -12.1492, -77.0217, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1285, N'140104', N'150105', N'15', N'LIMA', N'1501', N'LIMA', N'BREÑA', N'LIMA PROVINCIA', N'LIMA METROPOLITANA', N'LIMA Y CALLAO', N'PE-LMA', N'26', 3, 153, -12.0589, -77.0461, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1286, N'140105', N'150106', N'15', N'LIMA', N'1501', N'LIMA', N'CARABAYLLO', N'LIMA PROVINCIA', N'LIMA METROPOLITANA', N'LIMA Y CALLAO', N'PE-LMA', N'26', 303, 238, -11.8903, -77.0269, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1287, N'140107', N'150107', N'15', N'LIMA', N'1501', N'LIMA', N'CHACLACAYO', N'LIMA PROVINCIA', N'LIMA METROPOLITANA', N'LIMA Y CALLAO', N'PE-LMA', N'26', 40, 685, -11.9753, -76.7689, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1288, N'140108', N'150108', N'15', N'LIMA', N'1501', N'LIMA', N'CHORRILLOS', N'LIMA PROVINCIA', N'LIMA METROPOLITANA', N'LIMA Y CALLAO', N'PE-LMA', N'26', 39, 68, -12.1769, -77.0164, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1289, N'140139', N'150109', N'15', N'LIMA', N'1501', N'LIMA', N'CIENEGUILLA', N'LIMA PROVINCIA', N'LIMA METROPOLITANA', N'LIMA Y CALLAO', N'PE-LMA', N'26', 240, 287, -12.1203, -76.8142, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1290, N'140106', N'150110', N'15', N'LIMA', N'1501', N'LIMA', N'COMAS', N'LIMA PROVINCIA', N'LIMA METROPOLITANA', N'LIMA Y CALLAO', N'PE-LMA', N'26', 49, 107, -11.9572, -77.0494, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1291, N'140135', N'150111', N'15', N'LIMA', N'1501', N'LIMA', N'EL AGUSTINO', N'LIMA PROVINCIA', N'LIMA METROPOLITANA', N'LIMA Y CALLAO', N'PE-LMA', N'26', 13, 200, -12.0483, -77.0006, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1292, N'140134', N'150112', N'15', N'LIMA', N'1501', N'LIMA', N'INDEPENDENCIA', N'LIMA PROVINCIA', N'LIMA METROPOLITANA', N'LIMA Y CALLAO', N'PE-LMA', N'26', 15, 111, -11.9972, -77.0547, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1293, N'140133', N'150113', N'15', N'LIMA', N'1501', N'LIMA', N'JESUS MARIA', N'LIMA PROVINCIA', N'LIMA METROPOLITANA', N'LIMA Y CALLAO', N'PE-LMA', N'26', 5, 142, -12.0756, -77.0433, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1294, N'140110', N'150114', N'15', N'LIMA', N'1501', N'LIMA', N'LA MOLINA', N'LIMA PROVINCIA', N'LIMA METROPOLITANA', N'LIMA Y CALLAO', N'PE-LMA', N'26', 66, 262, -12.0781, -76.9167, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1295, N'140109', N'150115', N'15', N'LIMA', N'1501', N'LIMA', N'LA VICTORIA', N'LIMA PROVINCIA', N'LIMA METROPOLITANA', N'LIMA Y CALLAO', N'PE-LMA', N'26', 9, 142, -12.065, -77.0308, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1296, N'140111', N'150116', N'15', N'LIMA', N'1501', N'LIMA', N'LINCE', N'LIMA PROVINCIA', N'LIMA METROPOLITANA', N'LIMA Y CALLAO', N'PE-LMA', N'26', 3, 150, -12.0844, -77.0303, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1297, N'140142', N'150117', N'15', N'LIMA', N'1501', N'LIMA', N'LOS OLIVOS', N'LIMA PROVINCIA', N'LIMA METROPOLITANA', N'LIMA Y CALLAO', N'PE-LMA', N'26', 18, 67, -11.9914, -77.0708, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1298, N'140112', N'150118', N'15', N'LIMA', N'1501', N'LIMA', N'LURIGANCHO', N'LIMA PROVINCIA', N'LIMA METROPOLITANA', N'LIMA Y CALLAO', N'PE-LMA', N'26', 236, 879, -11.9358, -76.6972, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1299, N'140113', N'150119', N'15', N'LIMA', N'1501', N'LIMA', N'LURIN', N'LIMA PROVINCIA', N'LIMA METROPOLITANA', N'LIMA Y CALLAO', N'PE-LMA', N'26', 180, 12, -12.2747, -76.8703, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1300, N'140114', N'150120', N'15', N'LIMA', N'1501', N'LIMA', N'MAGDALENA DEL MAR', N'LIMA PROVINCIA', N'LIMA METROPOLITANA', N'LIMA Y CALLAO', N'PE-LMA', N'26', 4, 90, -12.0917, -77.0672, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1301, N'140117', N'150121', N'15', N'LIMA', N'1501', N'LIMA', N'PUEBLO LIBRE', N'LIMA PROVINCIA', N'LIMA METROPOLITANA', N'LIMA Y CALLAO', N'PE-LMA', N'26', 4, 114, -12.0781, -77.0625, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1302, N'140115', N'150122', N'15', N'LIMA', N'1501', N'LIMA', N'MIRAFLORES', N'LIMA PROVINCIA', N'LIMA METROPOLITANA', N'LIMA Y CALLAO', N'PE-LMA', N'26', 10, 125, -12.1217, -77.0292, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1303, N'140116', N'150123', N'15', N'LIMA', N'1501', N'LIMA', N'PACHACAMAC', N'LIMA PROVINCIA', N'LIMA METROPOLITANA', N'LIMA Y CALLAO', N'PE-LMA', N'26', 160, 68, -12.1872, -76.8667, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1304, N'140118', N'150124', N'15', N'LIMA', N'1501', N'LIMA', N'PUCUSANA', N'LIMA PROVINCIA', N'LIMA METROPOLITANA', N'LIMA Y CALLAO', N'PE-LMA', N'26', 37, 26, -12.4817, -76.7975, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1305, N'140119', N'150125', N'15', N'LIMA', N'1501', N'LIMA', N'PUENTE PIEDRA', N'LIMA PROVINCIA', N'LIMA METROPOLITANA', N'LIMA Y CALLAO', N'PE-LMA', N'26', 73, 187, -11.8667, -77.0769, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1306, N'140120', N'150126', N'15', N'LIMA', N'1501', N'LIMA', N'PUNTA HERMOSA', N'LIMA PROVINCIA', N'LIMA METROPOLITANA', N'LIMA Y CALLAO', N'PE-LMA', N'26', 120, 52, -12.3336, -76.8242, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1307, N'140121', N'150127', N'15', N'LIMA', N'1501', N'LIMA', N'PUNTA NEGRA', N'LIMA PROVINCIA', N'LIMA METROPOLITANA', N'LIMA Y CALLAO', N'PE-LMA', N'26', 131, 42, -12.3653, -76.7956, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1308, N'140122', N'150128', N'15', N'LIMA', N'1501', N'LIMA', N'RIMAC', N'LIMA PROVINCIA', N'LIMA METROPOLITANA', N'LIMA Y CALLAO', N'PE-LMA', N'26', 12, 153, -12.0422, -77.0269, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1309, N'140123', N'150129', N'15', N'LIMA', N'1501', N'LIMA', N'SAN BARTOLO', N'LIMA PROVINCIA', N'LIMA METROPOLITANA', N'LIMA Y CALLAO', N'PE-LMA', N'26', 45, 25, -12.3892, -76.7808, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1310, N'140140', N'150130', N'15', N'LIMA', N'1501', N'LIMA', N'SAN BORJA', N'LIMA PROVINCIA', N'LIMA METROPOLITANA', N'LIMA Y CALLAO', N'PE-LMA', N'26', 10, 170, -12.1072, -76.9989, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1311, N'140124', N'150131', N'15', N'LIMA', N'1501', N'LIMA', N'SAN ISIDRO', N'LIMA PROVINCIA', N'LIMA METROPOLITANA', N'LIMA Y CALLAO', N'PE-LMA', N'26', 11, 195, -12.0978, -77.0272, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1312, N'140137', N'150132', N'15', N'LIMA', N'1501', N'LIMA', N'SAN JUAN DE LURIGANCHO', N'LIMA PROVINCIA', N'LIMA METROPOLITANA', N'LIMA Y CALLAO', N'PE-LMA', N'26', 131, 222, -12.0297, -77.01, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1313, N'140136', N'150133', N'15', N'LIMA', N'1501', N'LIMA', N'SAN JUAN DE MIRAFLORES', N'LIMA PROVINCIA', N'LIMA METROPOLITANA', N'LIMA Y CALLAO', N'PE-LMA', N'26', 23, 133, -12.1636, -76.9636, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1314, N'140138', N'150134', N'15', N'LIMA', N'1501', N'LIMA', N'SAN LUIS', N'LIMA PROVINCIA', N'LIMA METROPOLITANA', N'LIMA Y CALLAO', N'PE-LMA', N'26', 3, 214, -12.0756, -76.9936, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1315, N'140126', N'150135', N'15', N'LIMA', N'1501', N'LIMA', N'SAN MARTIN DE PORRES', N'LIMA PROVINCIA', N'LIMA METROPOLITANA', N'LIMA Y CALLAO', N'PE-LMA', N'26', 37, 138, -12.03, -77.0575, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1316, N'140127', N'150136', N'15', N'LIMA', N'1501', N'LIMA', N'SAN MIGUEL', N'LIMA PROVINCIA', N'LIMA METROPOLITANA', N'LIMA Y CALLAO', N'PE-LMA', N'26', 11, 84, -12.0922, -77.0794, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1317, N'140143', N'150137', N'15', N'LIMA', N'1501', N'LIMA', N'SANTA ANITA', N'LIMA PROVINCIA', N'LIMA METROPOLITANA', N'LIMA Y CALLAO', N'PE-LMA', N'26', 11, 285, -12.0439, -76.9714, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1318, N'140128', N'150138', N'15', N'LIMA', N'1501', N'LIMA', N'SANTA MARIA DEL MAR', N'LIMA PROVINCIA', N'LIMA METROPOLITANA', N'LIMA Y CALLAO', N'PE-LMA', N'26', 10, 52, -12.4019, -76.7733, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1319, N'140129', N'150139', N'15', N'LIMA', N'1501', N'LIMA', N'SANTA ROSA', N'LIMA PROVINCIA', N'LIMA METROPOLITANA', N'LIMA Y CALLAO', N'PE-LMA', N'26', 21, 72, -11.7872, -77.1569, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1320, N'140130', N'150140', N'15', N'LIMA', N'1501', N'LIMA', N'SANTIAGO DE SURCO', N'LIMA PROVINCIA', N'LIMA METROPOLITANA', N'LIMA Y CALLAO', N'PE-LMA', N'26', 36, 107, -12.145, -77.005, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1321, N'140131', N'150141', N'15', N'LIMA', N'1501', N'LIMA', N'SURQUILLO', N'LIMA PROVINCIA', N'LIMA METROPOLITANA', N'LIMA Y CALLAO', N'PE-LMA', N'26', 3, 125, -12.1186, -77.0217, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1322, N'140141', N'150142', N'15', N'LIMA', N'1501', N'LIMA', N'VILLA EL SALVADOR', N'LIMA PROVINCIA', N'LIMA METROPOLITANA', N'LIMA Y CALLAO', N'PE-LMA', N'26', 35, 204, -12.2133, -76.9372, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1323, N'140132', N'150143', N'15', N'LIMA', N'1501', N'LIMA', N'VILLA MARIA DEL TRIUNFO', N'LIMA PROVINCIA', N'LIMA METROPOLITANA', N'LIMA Y CALLAO', N'PE-LMA', N'26', 71, 210, -12.1625, -76.9436, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1325, N'140901', N'150201', N'15', N'LIMA', N'1502', N'BARRANCA', N'BARRANCA', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 159, 74, -10.7533, -77.765, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1326, N'140902', N'150202', N'15', N'LIMA', N'1502', N'BARRANCA', N'PARAMONGA', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 409, 37, -10.6747, -77.8181, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1327, N'140903', N'150203', N'15', N'LIMA', N'1502', N'BARRANCA', N'PATIVILCA', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 279, 95, -10.6961, -77.7803, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1328, N'140904', N'150204', N'15', N'LIMA', N'1502', N'BARRANCA', N'SUPE', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 513, 69, -10.7961, -77.7161, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1329, N'140905', N'150205', N'15', N'LIMA', N'1502', N'BARRANCA', N'SUPE PUERTO', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 12, 41, -10.8017, -77.7447, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1330, N'140201', N'150301', N'15', N'LIMA', N'1503', N'CAJATAMBO', N'CAJATAMBO', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 568, 3396, -10.4731, -76.9931, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1331, N'140205', N'150302', N'15', N'LIMA', N'1503', N'CAJATAMBO', N'COPA', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 212, 3433, -10.3864, -77.0789, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1332, N'140206', N'150303', N'15', N'LIMA', N'1503', N'CAJATAMBO', N'GORGOR', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 310, 3049, -10.6211, -77.0414, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1333, N'140207', N'150304', N'15', N'LIMA', N'1503', N'CAJATAMBO', N'HUANCAPON', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 146, 3187, -10.5494, -77.1125, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1334, N'140208', N'150305', N'15', N'LIMA', N'1503', N'CAJATAMBO', N'MANAS', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 279, 2457, -10.5956, -77.1672, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1335, N'140301', N'150401', N'15', N'LIMA', N'1504', N'CANTA', N'CANTA', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 123, 2867, -11.4672, -76.6244, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1336, N'140302', N'150402', N'15', N'LIMA', N'1504', N'CANTA', N'ARAHUAY', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 134, 2533, -11.6214, -76.6703, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1337, N'140303', N'150403', N'15', N'LIMA', N'1504', N'CANTA', N'HUAMANTANGA', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 488, 3414, -11.4992, -76.7494, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1338, N'140304', N'150404', N'15', N'LIMA', N'1504', N'CANTA', N'HUAROS', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 333, 3614, -11.4067, -76.5758, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1339, N'140305', N'150405', N'15', N'LIMA', N'1504', N'CANTA', N'LACHAQUI', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 138, 3686, -11.5531, -76.6256, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1340, N'140306', N'150406', N'15', N'LIMA', N'1504', N'CANTA', N'SAN BUENAVENTURA', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 106, 2743, -11.4892, -76.6622, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1341, N'140307', N'150407', N'15', N'LIMA', N'1504', N'CANTA', N'SANTA ROSA DE QUIVES', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 408, 936, -11.6953, -76.8461, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1342, N'140401', N'150501', N'15', N'LIMA', N'1505', N'CAÑETE', N'SAN VICENTE DE CAÑETE', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 513, 77, -13.0778, -76.3878, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1343, N'140416', N'150502', N'15', N'LIMA', N'1505', N'CAÑETE', N'ASIA', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 277, 69, -12.7792, -76.5567, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1344, N'140402', N'150503', N'15', N'LIMA', N'1505', N'CAÑETE', N'CALANGO', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 531, 323, -12.5264, -76.5436, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1345, N'140403', N'150504', N'15', N'LIMA', N'1505', N'CAÑETE', N'CERRO AZUL', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 105, 17, -13.025, -76.4789, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1346, N'140405', N'150505', N'15', N'LIMA', N'1505', N'CAÑETE', N'CHILCA', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 475, 31, -12.5181, -76.7381, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1347, N'140404', N'150506', N'15', N'LIMA', N'1505', N'CAÑETE', N'COAYLLO', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 591, 285, -12.7272, -76.4603, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1348, N'140406', N'150507', N'15', N'LIMA', N'1505', N'CAÑETE', N'IMPERIAL', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 53, 112, -13.0606, -76.3528, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1349, N'140407', N'150508', N'15', N'LIMA', N'1505', N'CAÑETE', N'LUNAHUANA', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 500, 498, -12.9706, -76.1511, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1350, N'140408', N'150509', N'15', N'LIMA', N'1505', N'CAÑETE', N'MALA', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 129, 58, -12.6575, -76.6325, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1351, N'140409', N'150510', N'15', N'LIMA', N'1505', N'CAÑETE', N'NUEVO IMPERIAL', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 329, 169, -13.0756, -76.3167, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1352, N'140410', N'150511', N'15', N'LIMA', N'1505', N'CAÑETE', N'PACARAN', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 259, 721, -12.8661, -76.0542, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1353, N'140411', N'150512', N'15', N'LIMA', N'1505', N'CAÑETE', N'QUILMANA', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 437, 185, -12.9494, -76.3828, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1354, N'140412', N'150513', N'15', N'LIMA', N'1505', N'CAÑETE', N'SAN ANTONIO', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 37, 67, -12.6422, -76.6494, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1355, N'140413', N'150514', N'15', N'LIMA', N'1505', N'CAÑETE', N'SAN LUIS', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 39, 36, -13.0511, -76.4311, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1356, N'140414', N'150515', N'15', N'LIMA', N'1505', N'CAÑETE', N'SANTA CRUZ DE FLORES', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 100, 111, -12.6197, -76.6397, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1357, N'140415', N'150516', N'15', N'LIMA', N'1505', N'CAÑETE', N'ZUÑIGA', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 198, 827, -12.8603, -76.0225, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1358, N'140801', N'150601', N'15', N'LIMA', N'1506', N'HUARAL', N'HUARAL', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 641, 195, -11.4953, -77.2069, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1359, N'140802', N'150602', N'15', N'LIMA', N'1506', N'HUARAL', N'ATAVILLOS ALTO', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 348, 3293, -11.2342, -76.6558, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1360, N'140803', N'150603', N'15', N'LIMA', N'1506', N'HUARAL', N'ATAVILLOS BAJO', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 165, 1885, -11.3519, -76.8256, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1361, N'140804', N'150604', N'15', N'LIMA', N'1506', N'HUARAL', N'AUCALLAMA', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 729, 154, -11.5594, -77.18, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1362, N'140805', N'150605', N'15', N'LIMA', N'1506', N'HUARAL', N'CHANCAY', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 150, 58, -11.5631, -77.2706, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1363, N'140806', N'150606', N'15', N'LIMA', N'1506', N'HUARAL', N'IHUARI', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 468, 2850, -11.1886, -76.9519, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1364, N'140807', N'150607', N'15', N'LIMA', N'1506', N'HUARAL', N'LAMPIAN', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 145, 2467, -11.2378, -76.8392, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1365, N'140808', N'150608', N'15', N'LIMA', N'1506', N'HUARAL', N'PACARAOS', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 294, 3348, -11.1861, -76.6478, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1366, N'140809', N'150609', N'15', N'LIMA', N'1506', N'HUARAL', N'SAN MIGUEL DE ACOS', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 48, 1591, -11.2739, -76.8219, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1367, N'140811', N'150610', N'15', N'LIMA', N'1506', N'HUARAL', N'SANTA CRUZ DE ANDAMARCA', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 217, 3550, -11.1947, -76.6344, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1368, N'140812', N'150611', N'15', N'LIMA', N'1506', N'HUARAL', N'SUMBILCA', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 259, 3396, -11.4067, -76.8197, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1369, N'140810', N'150612', N'15', N'LIMA', N'1506', N'HUARAL', N'VEINTISIETE DE NOVIEMBRE', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 204, 2640, -11.1922, -76.7797, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1370, N'140601', N'150701', N'15', N'LIMA', N'1507', N'HUAROCHIRI', N'MATUCANA', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 179, 2395, -11.845, -76.3861, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1371, N'140602', N'150702', N'15', N'LIMA', N'1507', N'HUAROCHIRI', N'ANTIOQUIA', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 388, 1573, -12.0808, -76.5108, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1372, N'140603', N'150703', N'15', N'LIMA', N'1507', N'HUAROCHIRI', N'CALLAHUANCA', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 57, 1807, -11.8264, -76.6189, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1373, N'140604', N'150704', N'15', N'LIMA', N'1507', N'HUAROCHIRI', N'CARAMPOMA', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 234, 3459, -11.6564, -76.5164, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1374, N'140607', N'150705', N'15', N'LIMA', N'1507', N'HUAROCHIRI', N'CHICLA', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 244, 3703, -11.7064, -76.2681, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1375, N'140606', N'150706', N'15', N'LIMA', N'1507', N'HUAROCHIRI', N'CUENCA', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 60, 2784, -12.1322, -76.4353, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1376, N'140630', N'150707', N'15', N'LIMA', N'1507', N'HUAROCHIRI', N'HUACHUPAMPA', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 76, 2938, -11.7211, -76.5886, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1377, N'140608', N'150708', N'15', N'LIMA', N'1507', N'HUAROCHIRI', N'HUANZA', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 227, 3431, -11.6561, -76.5036, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1378, N'140609', N'150709', N'15', N'LIMA', N'1507', N'HUAROCHIRI', N'HUAROCHIRI', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 249, 3170, -12.1361, -76.2319, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1379, N'140610', N'150710', N'15', N'LIMA', N'1507', N'HUAROCHIRI', N'LAHUAYTAMBO', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 82, 3362, -12.0964, -76.3889, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1380, N'140611', N'150711', N'15', N'LIMA', N'1507', N'HUAROCHIRI', N'LANGA', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 81, 2889, -12.1256, -76.4211, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1381, N'140631', N'150712', N'15', N'LIMA', N'1507', N'HUAROCHIRI', N'LARAOS', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 105, 3683, -11.6644, -76.5394, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1382, N'140612', N'150713', N'15', N'LIMA', N'1507', N'HUAROCHIRI', N'MARIATANA', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 169, 3561, -12.2372, -76.3261, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1383, N'140613', N'150714', N'15', N'LIMA', N'1507', N'HUAROCHIRI', N'RICARDO PALMA', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 35, 975, -11.9236, -76.665, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1384, N'140614', N'150715', N'15', N'LIMA', N'1507', N'HUAROCHIRI', N'SAN ANDRES DE TUPICOCHA', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 83, 3321, -12.0022, -76.4747, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1385, N'140615', N'150716', N'15', N'LIMA', N'1507', N'HUAROCHIRI', N'SAN ANTONIO', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 564, 3456, -11.7436, -76.65, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1386, N'140616', N'150717', N'15', N'LIMA', N'1507', N'HUAROCHIRI', N'SAN BARTOLOME', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 44, 1644, -11.9119, -76.5292, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1387, N'140617', N'150718', N'15', N'LIMA', N'1507', N'HUAROCHIRI', N'SAN DAMIAN', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 343, 3252, -12.0178, -76.3919, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1388, N'140632', N'150719', N'15', N'LIMA', N'1507', N'HUAROCHIRI', N'SAN JUAN DE IRIS', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 124, 3436, -11.6831, -76.525, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1389, N'140619', N'150720', N'15', N'LIMA', N'1507', N'HUAROCHIRI', N'SAN JUAN DE TANTARANCHE', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 137, 3436, -12.1136, -76.1825, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1390, N'140620', N'150721', N'15', N'LIMA', N'1507', N'HUAROCHIRI', N'SAN LORENZO DE QUINTI', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 468, 2682, -12.1453, -76.2125, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1391, N'140621', N'150722', N'15', N'LIMA', N'1507', N'HUAROCHIRI', N'SAN MATEO', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 426, 3164, -11.7592, -76.3006, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1392, N'140622', N'150723', N'15', N'LIMA', N'1507', N'HUAROCHIRI', N'SAN MATEO DE OTAO', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 124, 2084, -11.8703, -76.5439, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1393, N'140605', N'150724', N'15', N'LIMA', N'1507', N'HUAROCHIRI', N'SAN PEDRO DE CASTA', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 80, 3196, -11.7589, -76.5964, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1394, N'140623', N'150725', N'15', N'LIMA', N'1507', N'HUAROCHIRI', N'SAN PEDRO DE HUANCAYRE', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 42, 3140, -12.1314, -76.2156, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1395, N'140618', N'150726', N'15', N'LIMA', N'1507', N'HUAROCHIRI', N'SANGALLAYA', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 82, 2779, -12.1608, -76.2289, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1396, N'140624', N'150727', N'15', N'LIMA', N'1507', N'HUAROCHIRI', N'SANTA CRUZ DE COCACHACRA', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 42, 1440, -11.9117, -76.5394, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1397, N'140625', N'150728', N'15', N'LIMA', N'1507', N'HUAROCHIRI', N'SANTA EULALIA', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 111, 1048, -11.9017, -76.6639, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1398, N'140626', N'150729', N'15', N'LIMA', N'1507', N'HUAROCHIRI', N'SANTIAGO DE ANCHUCAYA', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 94, 3400, -12.0956, -76.2306, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1399, N'140627', N'150730', N'15', N'LIMA', N'1507', N'HUAROCHIRI', N'SANTIAGO DE TUNA', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 54, 2913, -11.9839, -76.5253, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1400, N'140628', N'150731', N'15', N'LIMA', N'1507', N'HUAROCHIRI', N'SANTO DOMINGO DE LOS OLLEROS', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 552, 2861, -12.2189, -76.5142, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1401, N'140629', N'150732', N'15', N'LIMA', N'1507', N'HUAROCHIRI', N'SURCO', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 103, 2049, -11.8825, -76.4361, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1402, N'140501', N'150801', N'15', N'LIMA', N'1508', N'HUAURA', N'HUACHO', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 717, 46, -11.1081, -77.6103, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1403, N'140502', N'150802', N'15', N'LIMA', N'1508', N'HUAURA', N'AMBAR', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 930, 2084, -10.7561, -77.2719, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1404, N'140504', N'150803', N'15', N'LIMA', N'1508', N'HUAURA', N'CALETA DE CARQUIN', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 2, 28, -11.0917, -77.6283, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1405, N'140505', N'150804', N'15', N'LIMA', N'1508', N'HUAURA', N'CHECRAS', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 166, 3305, -10.9181, -76.8256, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1406, N'140506', N'150805', N'15', N'LIMA', N'1508', N'HUAURA', N'HUALMAY', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 6, 47, -11.0967, -77.6131, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1407, N'140507', N'150806', N'15', N'LIMA', N'1508', N'HUAURA', N'HUAURA', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 484, 96, -11.0697, -77.5992, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1408, N'140508', N'150807', N'15', N'LIMA', N'1508', N'HUAURA', N'LEONCIO PRADO', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 300, 3299, -11.0611, -76.9303, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1409, N'140509', N'150808', N'15', N'LIMA', N'1508', N'HUAURA', N'PACCHO', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 229, 3275, -10.9575, -76.9333, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1410, N'140511', N'150809', N'15', N'LIMA', N'1508', N'HUAURA', N'SANTA LEONOR', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 375, 3583, -10.9486, -76.745, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1411, N'140512', N'150810', N'15', N'LIMA', N'1508', N'HUAURA', N'SANTA MARIA', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 128, 83, -11.0967, -77.595, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1412, N'140513', N'150811', N'15', N'LIMA', N'1508', N'HUAURA', N'SAYAN', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 1311, 689, -11.1353, -77.1936, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1413, N'140516', N'150812', N'15', N'LIMA', N'1508', N'HUAURA', N'VEGUETA', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 254, 40, -11.0233, -77.6439, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1414, N'141001', N'150901', N'15', N'LIMA', N'1509', N'OYON', N'OYON', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 890, 3648, -10.6681, -76.7733, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1415, N'141004', N'150902', N'15', N'LIMA', N'1509', N'OYON', N'ANDAJES', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 148, 3505, -10.7928, -76.9092, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1416, N'141003', N'150903', N'15', N'LIMA', N'1509', N'OYON', N'CAUJUL', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 106, 3185, -10.8058, -76.9792, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1417, N'141006', N'150904', N'15', N'LIMA', N'1509', N'OYON', N'COCHAMARCA', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 266, 3492, -10.8633, -77.1289, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1418, N'141002', N'150905', N'15', N'LIMA', N'1509', N'OYON', N'NAVAN', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 227, 3131, -10.8378, -77.0144, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1419, N'141005', N'150906', N'15', N'LIMA', N'1509', N'OYON', N'PACHANGARA', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 252, 2283, -10.8111, -76.875, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1420, N'140701', N'151001', N'15', N'LIMA', N'1510', N'YAUYOS', N'YAUYOS', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 327, 2895, -12.4597, -75.9183, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1421, N'140702', N'151002', N'15', N'LIMA', N'1510', N'YAUYOS', N'ALIS', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 142, 3285, -12.2811, -75.7864, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1422, N'140703', N'151003', N'15', N'LIMA', N'1510', N'YAUYOS', N'AYAUCA', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 439, 3151, -12.5911, -76.0369, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1423, N'140704', N'151004', N'15', N'LIMA', N'1510', N'YAUYOS', N'AYAVIRI', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 239, 3263, -12.3825, -76.1369, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1424, N'140705', N'151005', N'15', N'LIMA', N'1510', N'YAUYOS', N'AZANGARO', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 80, 3435, -13, -75.8372, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1425, N'140706', N'151006', N'15', N'LIMA', N'1510', N'YAUYOS', N'CACRA', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 214, 2788, -12.8125, -75.7831, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1426, N'140707', N'151007', N'15', N'LIMA', N'1510', N'YAUYOS', N'CARANIA', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 122, 3846, -12.3456, -75.8694, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1427, N'140733', N'151008', N'15', N'LIMA', N'1510', N'YAUYOS', N'CATAHUASI', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 124, 1203, -12.7994, -75.8914, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1428, N'140710', N'151009', N'15', N'LIMA', N'1510', N'YAUYOS', N'CHOCOS', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 213, 2733, -12.9144, -75.8628, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1429, N'140708', N'151010', N'15', N'LIMA', N'1510', N'YAUYOS', N'COCHAS', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 28, 2851, -12.2942, -76.1575, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1430, N'140709', N'151011', N'15', N'LIMA', N'1510', N'YAUYOS', N'COLONIA', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 324, 3399, -12.6339, -75.8903, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1431, N'140730', N'151012', N'15', N'LIMA', N'1510', N'YAUYOS', N'HONGOS', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 104, 3215, -12.8108, -75.7653, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1432, N'140711', N'151013', N'15', N'LIMA', N'1510', N'YAUYOS', N'HUAMPARA', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 54, 2501, -12.3603, -76.1672, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1433, N'140712', N'151014', N'15', N'LIMA', N'1510', N'YAUYOS', N'HUANCAYA', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 284, 3591, -12.2033, -75.7992, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1434, N'140713', N'151015', N'15', N'LIMA', N'1510', N'YAUYOS', N'HUANGASCAR', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 50, 2529, -12.8994, -75.8319, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1435, N'140714', N'151016', N'15', N'LIMA', N'1510', N'YAUYOS', N'HUANTAN', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 516, 3315, -12.4564, -75.8117, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1436, N'140715', N'151017', N'15', N'LIMA', N'1510', N'YAUYOS', N'HUAÑEC', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 38, 3222, -12.2939, -76.1386, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1437, N'140716', N'151018', N'15', N'LIMA', N'1510', N'YAUYOS', N'LARAOS', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 403, 3492, -12.3467, -75.7858, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1438, N'140717', N'151019', N'15', N'LIMA', N'1510', N'YAUYOS', N'LINCHA', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 221, 3516, -12.7997, -75.6667, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1439, N'140731', N'151020', N'15', N'LIMA', N'1510', N'YAUYOS', N'MADEAN', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 221, 3292, -12.9444, -75.7772, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1440, N'140718', N'151021', N'15', N'LIMA', N'1510', N'YAUYOS', N'MIRAFLORES', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 226, 3677, -12.2744, -75.8503, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1441, N'140719', N'151022', N'15', N'LIMA', N'1510', N'YAUYOS', N'OMAS', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 295, 1572, -12.5147, -76.2894, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1442, N'140732', N'151023', N'15', N'LIMA', N'1510', N'YAUYOS', N'PUTINZA', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 66, 1985, -12.6681, -75.9494, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1443, N'140720', N'151024', N'15', N'LIMA', N'1510', N'YAUYOS', N'QUINCHES', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 113, 2981, -12.3078, -76.1433, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1444, N'140721', N'151025', N'15', N'LIMA', N'1510', N'YAUYOS', N'QUINOCAY', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 153, 2672, -12.3622, -76.2264, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1445, N'140722', N'151026', N'15', N'LIMA', N'1510', N'YAUYOS', N'SAN JOAQUIN', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 41, 2960, -12.2839, -76.1469, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1446, N'140723', N'151027', N'15', N'LIMA', N'1510', N'YAUYOS', N'SAN PEDRO DE PILAS', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 97, 2678, -12.4544, -76.2269, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1447, N'140724', N'151028', N'15', N'LIMA', N'1510', N'YAUYOS', N'TANTA', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 347, 4293, -12.1222, -76.0133, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1448, N'140725', N'151029', N'15', N'LIMA', N'1510', N'YAUYOS', N'TAURIPAMPA', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 531, 3526, -12.6172, -76.1619, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1449, N'140727', N'151030', N'15', N'LIMA', N'1510', N'YAUYOS', N'TOMAS', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 298, 3580, -12.2378, -75.745, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1450, N'140726', N'151031', N'15', N'LIMA', N'1510', N'YAUYOS', N'TUPE', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 321, 2841, -12.7411, -75.8094, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1451, N'140728', N'151032', N'15', N'LIMA', N'1510', N'YAUYOS', N'VIÑAC', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 165, 3315, -12.9311, -75.78, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1452, N'140729', N'151033', N'15', N'LIMA', N'1510', N'YAUYOS', N'VITIS', N'LIMA REGION', N'CENTRO', N'LIMA Y CALLAO', N'PE-LIM', N'15', 102, 3625, -12.2239, -75.8081, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1453, N'150101', N'160101', N'16', N'LORETO', N'1601', N'MAYNAS', N'IQUITOS', N'LORETO', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-LOR', N'16', 358, 107, -3.7481, -73.2442, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1454, N'150102', N'160102', N'16', N'LORETO', N'1601', N'MAYNAS', N'ALTO NANAY', N'LORETO', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-LOR', N'16', 14291, 115, -3.8883, -73.6975, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1455, N'150103', N'160103', N'16', N'LORETO', N'1601', N'MAYNAS', N'FERNANDO LORES', N'LORETO', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-LOR', N'16', 4476, 129, -4.0017, -73.1569, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1456, N'150110', N'160104', N'16', N'LORETO', N'1601', N'MAYNAS', N'INDIANA', N'LORETO', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-LOR', N'16', 3298, 98, -3.5003, -73.0411, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1457, N'150104', N'160105', N'16', N'LORETO', N'1601', N'MAYNAS', N'LAS AMAZONAS', N'LORETO', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-LOR', N'16', 6594, 100, -3.4231, -72.7644, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1458, N'150105', N'160106', N'16', N'LORETO', N'1601', N'MAYNAS', N'MAZAN', N'LORETO', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-LOR', N'16', 9884, 106, -3.4886, -73.0817, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1459, N'150106', N'160107', N'16', N'LORETO', N'1601', N'MAYNAS', N'NAPO', N'LORETO', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-LOR', N'16', 24050, 142, -2.4892, -73.6761, N'SI')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1460, N'150111', N'160108', N'16', N'LORETO', N'1601', N'MAYNAS', N'PUNCHANA', N'LORETO', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-LOR', N'16', 1573, 124, -3.7286, -73.2419, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1461, N'150108', N'160110', N'16', N'LORETO', N'1601', N'MAYNAS', N'TORRES CAUSANA', N'LORETO', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-LOR', N'16', 6795, 196, -0.9706, -75.1742, N'SI')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1462, N'150112', N'160112', N'16', N'LORETO', N'1601', N'MAYNAS', N'BELEN', N'LORETO', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-LOR', N'16', 633, 116, -3.7692, -73.26, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1463, N'150113', N'160113', N'16', N'LORETO', N'1601', N'MAYNAS', N'SAN JUAN BAUTISTA', N'LORETO', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-LOR', N'16', 3117, 120, -3.7703, -73.2803, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1464, N'150201', N'160201', N'16', N'LORETO', N'1602', N'ALTO AMAZONAS', N'YURIMAGUAS', N'LORETO', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-LOR', N'16', 2188, 150, -5.8842, -76.1281, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1465, N'150202', N'160202', N'16', N'LORETO', N'1602', N'ALTO AMAZONAS', N'BALSAPUERTO', N'LORETO', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-LOR', N'16', 2954, 220, -5.8333, -76.5597, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1466, N'150205', N'160205', N'16', N'LORETO', N'1602', N'ALTO AMAZONAS', N'JEBEROS', N'LORETO', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-LOR', N'16', 4254, 146, -5.2908, -76.2833, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1467, N'150206', N'160206', N'16', N'LORETO', N'1602', N'ALTO AMAZONAS', N'LAGUNAS', N'LORETO', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-LOR', N'16', 5929, 119, -5.2239, -75.675, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1468, N'150210', N'160210', N'16', N'LORETO', N'1602', N'ALTO AMAZONAS', N'SANTA CRUZ', N'LORETO', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-LOR', N'16', 2222, 131, -5.5133, -75.8589, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1469, N'150211', N'160211', N'16', N'LORETO', N'1602', N'ALTO AMAZONAS', N'TENIENTE CESAR LOPEZ ROJAS', N'LORETO', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-LOR', N'16', 1292, 149, -6.0256, -75.8742, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1470, N'150301', N'160301', N'16', N'LORETO', N'1603', N'LORETO', N'NAUTA', N'LORETO', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-LOR', N'16', 6672, 127, -4.5014, -73.5694, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1471, N'150302', N'160302', N'16', N'LORETO', N'1603', N'LORETO', N'PARINARI', N'LORETO', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-LOR', N'16', 12935, 106, -4.6317, -74.4631, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1472, N'150303', N'160303', N'16', N'LORETO', N'1603', N'LORETO', N'TIGRE', N'LORETO', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-LOR', N'16', 19786, 131, -3.4897, -74.7817, N'SI')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1473, N'150305', N'160304', N'16', N'LORETO', N'1603', N'LORETO', N'TROMPETEROS', N'LORETO', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-LOR', N'16', 12246, 131, -3.805, -75.0606, N'SI')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1474, N'150304', N'160305', N'16', N'LORETO', N'1603', N'LORETO', N'URARINAS', N'LORETO', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-LOR', N'16', 15434, 100, -4.5875, -74.7672, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1475, N'150601', N'160401', N'16', N'LORETO', N'1604', N'MARISCAL RAMON CASTILLA', N'RAMON CASTILLA', N'LORETO', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-LOR', N'16', 7163, 86, -3.9061, -70.5169, N'SI')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1476, N'150602', N'160402', N'16', N'LORETO', N'1604', N'MARISCAL RAMON CASTILLA', N'PEBAS', N'LORETO', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-LOR', N'16', 11048, 117, -3.3203, -71.8619, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1477, N'150603', N'160403', N'16', N'LORETO', N'1604', N'MARISCAL RAMON CASTILLA', N'YAVARI', N'LORETO', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-LOR', N'16', 13808, 75, -4.3536, -70.0417, N'SI')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1478, N'150604', N'160404', N'16', N'LORETO', N'1604', N'MARISCAL RAMON CASTILLA', N'SAN PABLO', N'LORETO', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-LOR', N'16', 5046, 85, -4.0203, -71.1031, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1479, N'150401', N'160501', N'16', N'LORETO', N'1605', N'REQUENA', N'REQUENA', N'LORETO', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-LOR', N'16', 3039, 116, -5.0639, -73.8567, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1480, N'150402', N'160502', N'16', N'LORETO', N'1605', N'REQUENA', N'ALTO TAPICHE', N'LORETO', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-LOR', N'16', 9014, 123, -6.0256, -74.0942, N'SI')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1481, N'150403', N'160503', N'16', N'LORETO', N'1605', N'REQUENA', N'CAPELO', N'LORETO', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-LOR', N'16', 842, 112, -5.4053, -74.1578, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1482, N'150404', N'160504', N'16', N'LORETO', N'1605', N'REQUENA', N'EMILIO SAN MARTIN', N'LORETO', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-LOR', N'16', 4573, 108, -5.7936, -74.2839, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1483, N'150405', N'160505', N'16', N'LORETO', N'1605', N'REQUENA', N'MAQUIA', N'LORETO', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-LOR', N'16', 4792, 108, -5.7497, -74.5378, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1484, N'150406', N'160506', N'16', N'LORETO', N'1605', N'REQUENA', N'PUINAHUA', N'LORETO', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-LOR', N'16', 6149, 113, -5.2556, -74.3456, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1485, N'150407', N'160507', N'16', N'LORETO', N'1605', N'REQUENA', N'SAQUENA', N'LORETO', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-LOR', N'16', 2081, 106, -4.725, -73.5331, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1486, N'150408', N'160508', N'16', N'LORETO', N'1605', N'REQUENA', N'SOPLIN', N'LORETO', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-LOR', N'16', 4711, 118, -6.0078, -73.6925, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1487, N'150409', N'160509', N'16', N'LORETO', N'1605', N'REQUENA', N'TAPICHE', N'LORETO', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-LOR', N'16', 2014, 108, -5.6936, -74.1378, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1488, N'150410', N'160510', N'16', N'LORETO', N'1605', N'REQUENA', N'JENARO HERRERA', N'LORETO', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-LOR', N'16', 1517, 116, -4.9036, -73.6706, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1489, N'150411', N'160511', N'16', N'LORETO', N'1605', N'REQUENA', N'YAQUERANA', N'LORETO', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-LOR', N'16', 10947, 90, -5.1489, -72.8753, N'SI')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1490, N'150501', N'160601', N'16', N'LORETO', N'1606', N'UCAYALI', N'CONTAMANA', N'LORETO', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-LOR', N'16', 10675, 138, -7.3506, -75.0097, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1491, N'150506', N'160602', N'16', N'LORETO', N'1606', N'UCAYALI', N'INAHUAYA', N'LORETO', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-LOR', N'16', 646, 140, -7.1169, -75.2625, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1492, N'150503', N'160603', N'16', N'LORETO', N'1606', N'UCAYALI', N'PADRE MARQUEZ', N'LORETO', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-LOR', N'16', 2476, 139, -7.9467, -74.8408, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1493, N'150504', N'160604', N'16', N'LORETO', N'1606', N'UCAYALI', N'PAMPA HERMOSA', N'LORETO', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-LOR', N'16', 7347, 111, -7.1964, -75.2944, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1494, N'150505', N'160605', N'16', N'LORETO', N'1606', N'UCAYALI', N'SARAYACU', N'LORETO', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-LOR', N'16', 6303, 122, -6.3931, -75.1169, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1495, N'150502', N'160606', N'16', N'LORETO', N'1606', N'UCAYALI', N'VARGAS GUERRA', N'LORETO', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-LOR', N'16', 1846, 129, -6.9111, -75.1589, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1496, N'150701', N'160701', N'16', N'LORETO', N'1607', N'DATEM DEL MARAÑON', N'BARRANCA', N'LORETO', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-LOR', N'16', 7236, 134, -4.8311, -76.555, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1497, N'150703', N'160702', N'16', N'LORETO', N'1607', N'DATEM DEL MARAÑON', N'CAHUAPANAS', N'LORETO', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-LOR', N'16', 4685, 162, -5.2492, -77.0414, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1498, N'150704', N'160703', N'16', N'LORETO', N'1607', N'DATEM DEL MARAÑON', N'MANSERICHE', N'LORETO', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-LOR', N'16', 3494, 155, -4.5636, -77.4172, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1499, N'150705', N'160704', N'16', N'LORETO', N'1607', N'DATEM DEL MARAÑON', N'MORONA', N'LORETO', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-LOR', N'16', 10777, 144, -4.3264, -77.2161, N'SI')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1500, N'150706', N'160705', N'16', N'LORETO', N'1607', N'DATEM DEL MARAÑON', N'PASTAZA', N'LORETO', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-LOR', N'16', 8909, 137, -4.6511, -76.5875, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1501, N'150702', N'160706', N'16', N'LORETO', N'1607', N'DATEM DEL MARAÑON', N'ANDOAS', N'LORETO', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-LOR', N'16', 11541, 172, -3.4756, -76.4336, N'SI')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1502, N'150901', N'160801', N'16', N'LORETO', N'1608', N'PUTUMAYO', N'PUTUMAYO', N'LORETO', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-LOR', N'16', 10886, 131, -2.4469, -72.6681, N'SI')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1503, N'150902', N'160802', N'16', N'LORETO', N'1608', N'PUTUMAYO', N'ROSA PANDURO', N'LORETO', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-LOR', N'16', 7039, 132, -1.7886, -73.4131, N'SI')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1504, N'150903', N'160803', N'16', N'LORETO', N'1608', N'PUTUMAYO', N'TENIENTE MANUEL CLAVERO', N'LORETO', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-LOR', N'16', 9489, 185, -0.3733, -74.6758, N'SI')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1505, N'150904', N'160804', N'16', N'LORETO', N'1608', N'PUTUMAYO', N'YAGUAS', N'LORETO', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-LOR', N'16', 17725, 94, -2.4081, -71.1767, N'SI')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1506, N'160101', N'170101', N'17', N'MADRE DE DIOS', N'1701', N'TAMBOPATA', N'TAMBOPATA', N'MADRE DE DIOS', N'SUR', N'MACROREGION SUR', N'PE-MDD', N'17', 22219, 204, -12.5936, -69.1767, N'SI')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1507, N'160102', N'170102', N'17', N'MADRE DE DIOS', N'1701', N'TAMBOPATA', N'INAMBARI', N'MADRE DE DIOS', N'SUR', N'MACROREGION SUR', N'PE-MDD', N'17', 4257, 351, -13.1014, -70.3717, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1508, N'160103', N'170103', N'17', N'MADRE DE DIOS', N'1701', N'TAMBOPATA', N'LAS PIEDRAS', N'MADRE DE DIOS', N'SUR', N'MACROREGION SUR', N'PE-MDD', N'17', 7032, 239, -12.2792, -69.1503, N'SI')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1509, N'160104', N'170104', N'17', N'MADRE DE DIOS', N'1701', N'TAMBOPATA', N'LABERINTO', N'MADRE DE DIOS', N'SUR', N'MACROREGION SUR', N'PE-MDD', N'17', 2761, 192, -12.7172, -69.5867, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1510, N'160201', N'170201', N'17', N'MADRE DE DIOS', N'1702', N'MANU', N'MANU', N'MADRE DE DIOS', N'SUR', N'MACROREGION SUR', N'PE-MDD', N'17', 8167, 535, -12.8372, -71.3653, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1511, N'160202', N'170202', N'17', N'MADRE DE DIOS', N'1702', N'MANU', N'FITZCARRALD', N'MADRE DE DIOS', N'SUR', N'MACROREGION SUR', N'PE-MDD', N'17', 10955, 282, -12.2653, -70.91, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1512, N'160203', N'170203', N'17', N'MADRE DE DIOS', N'1702', N'MANU', N'MADRE DE DIOS', N'MADRE DE DIOS', N'SUR', N'MACROREGION SUR', N'PE-MDD', N'17', 7235, 246, -12.6186, -70.3942, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1513, N'160204', N'170204', N'17', N'MADRE DE DIOS', N'1702', N'MANU', N'HUEPETUHE', N'MADRE DE DIOS', N'SUR', N'MACROREGION SUR', N'PE-MDD', N'17', 1478, 444, -12.9936, -70.5272, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1514, N'160301', N'170301', N'17', N'MADRE DE DIOS', N'1703', N'TAHUAMANU', N'IÑAPARI', N'MADRE DE DIOS', N'SUR', N'MACROREGION SUR', N'PE-MDD', N'17', 14854, 238, -10.945, -69.5767, N'SI')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1515, N'160302', N'170302', N'17', N'MADRE DE DIOS', N'1703', N'TAHUAMANU', N'IBERIA', N'MADRE DE DIOS', N'SUR', N'MACROREGION SUR', N'PE-MDD', N'17', 2549, 268, -11.4108, -69.4869, N'SI')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1516, N'160303', N'170303', N'17', N'MADRE DE DIOS', N'1703', N'TAHUAMANU', N'TAHUAMANU', N'MADRE DE DIOS', N'SUR', N'MACROREGION SUR', N'PE-MDD', N'17', 3794, 261, -11.4547, -69.3214, N'SI')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1517, N'170101', N'180101', N'18', N'MOQUEGUA', N'1801', N'MARISCAL NIETO', N'MOQUEGUA', N'MOQUEGUA', N'SUR', N'MACROREGION SUR', N'PE-MOQ', N'18', 3949, 1428, -17.1942, -70.9333, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1518, N'170102', N'180102', N'18', N'MOQUEGUA', N'1801', N'MARISCAL NIETO', N'CARUMAS', N'MOQUEGUA', N'SUR', N'MACROREGION SUR', N'PE-MOQ', N'18', 2256, 3054, -16.8092, -70.6947, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1519, N'170103', N'180103', N'18', N'MOQUEGUA', N'1801', N'MARISCAL NIETO', N'CUCHUMBAYA', N'MOQUEGUA', N'SUR', N'MACROREGION SUR', N'PE-MOQ', N'18', 68, 3156, -16.7508, -70.6861, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1520, N'170106', N'180104', N'18', N'MOQUEGUA', N'1801', N'MARISCAL NIETO', N'SAMEGUA', N'MOQUEGUA', N'SUR', N'MACROREGION SUR', N'PE-MOQ', N'18', 63, 1615, -17.1822, -70.9003, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1521, N'170104', N'180105', N'18', N'MOQUEGUA', N'1801', N'MARISCAL NIETO', N'SAN CRISTOBAL', N'MOQUEGUA', N'SUR', N'MACROREGION SUR', N'PE-MOQ', N'18', 543, 3472, -16.7392, -70.6833, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1522, N'170105', N'180106', N'18', N'MOQUEGUA', N'1801', N'MARISCAL NIETO', N'TORATA', N'MOQUEGUA', N'SUR', N'MACROREGION SUR', N'PE-MOQ', N'18', 1793, 2203, -17.0767, -70.8442, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1523, N'170201', N'180201', N'18', N'MOQUEGUA', N'1802', N'GENERAL SANCHEZ CERRO', N'OMATE', N'MOQUEGUA', N'SUR', N'MACROREGION SUR', N'PE-MOQ', N'18', 251, 2169, -16.6736, -70.9706, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1524, N'170203', N'180202', N'18', N'MOQUEGUA', N'1802', N'GENERAL SANCHEZ CERRO', N'CHOJATA', N'MOQUEGUA', N'SUR', N'MACROREGION SUR', N'PE-MOQ', N'18', 848, 3634, -16.3883, -70.7303, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1525, N'170202', N'180203', N'18', N'MOQUEGUA', N'1802', N'GENERAL SANCHEZ CERRO', N'COALAQUE', N'MOQUEGUA', N'SUR', N'MACROREGION SUR', N'PE-MOQ', N'18', 248, 2300, -16.6489, -71.0217, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1526, N'170204', N'180204', N'18', N'MOQUEGUA', N'1802', N'GENERAL SANCHEZ CERRO', N'ICHUÑA', N'MOQUEGUA', N'SUR', N'MACROREGION SUR', N'PE-MOQ', N'18', 1018, 3794, -16.1406, -70.5356, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1527, N'170205', N'180205', N'18', N'MOQUEGUA', N'1802', N'GENERAL SANCHEZ CERRO', N'LA CAPILLA', N'MOQUEGUA', N'SUR', N'MACROREGION SUR', N'PE-MOQ', N'18', 776, 1817, -16.7567, -71.1792, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1528, N'170206', N'180206', N'18', N'MOQUEGUA', N'1802', N'GENERAL SANCHEZ CERRO', N'LLOQUE', N'MOQUEGUA', N'SUR', N'MACROREGION SUR', N'PE-MOQ', N'18', 254, 3325, -16.3239, -70.7386, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1529, N'170207', N'180207', N'18', N'MOQUEGUA', N'1802', N'GENERAL SANCHEZ CERRO', N'MATALAQUE', N'MOQUEGUA', N'SUR', N'MACROREGION SUR', N'PE-MOQ', N'18', 557, 2577, -16.4811, -70.8267, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1530, N'170208', N'180208', N'18', N'MOQUEGUA', N'1802', N'GENERAL SANCHEZ CERRO', N'PUQUINA', N'MOQUEGUA', N'SUR', N'MACROREGION SUR', N'PE-MOQ', N'18', 551, 3092, -16.6253, -71.1839, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1531, N'170209', N'180209', N'18', N'MOQUEGUA', N'1802', N'GENERAL SANCHEZ CERRO', N'QUINISTAQUILLAS', N'MOQUEGUA', N'SUR', N'MACROREGION SUR', N'PE-MOQ', N'18', 194, 1789, -16.7489, -70.8803, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1532, N'170210', N'180210', N'18', N'MOQUEGUA', N'1802', N'GENERAL SANCHEZ CERRO', N'UBINAS', N'MOQUEGUA', N'SUR', N'MACROREGION SUR', N'PE-MOQ', N'18', 875, 3395, -16.3867, -70.8556, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1533, N'170211', N'180211', N'18', N'MOQUEGUA', N'1802', N'GENERAL SANCHEZ CERRO', N'YUNGA', N'MOQUEGUA', N'SUR', N'MACROREGION SUR', N'PE-MOQ', N'18', 111, 3619, -16.195, -70.6778, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1534, N'170301', N'180301', N'18', N'MOQUEGUA', N'1803', N'ILO', N'ILO', N'MOQUEGUA', N'SUR', N'MACROREGION SUR', N'PE-MOQ', N'18', 296, 33, -17.625, -71.3433, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1535, N'170302', N'180302', N'18', N'MOQUEGUA', N'1803', N'ILO', N'EL ALGARROBAL', N'MOQUEGUA', N'SUR', N'MACROREGION SUR', N'PE-MOQ', N'18', 747, 136, -17.6228, -71.2683, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1536, N'170303', N'180303', N'18', N'MOQUEGUA', N'1803', N'ILO', N'PACOCHA', N'MOQUEGUA', N'SUR', N'MACROREGION SUR', N'PE-MOQ', N'18', 338, 77, -17.6108, -71.3403, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1537, N'180101', N'190101', N'19', N'PASCO', N'1901', N'PASCO', N'CHAUPIMARCA', N'PASCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-PAS', N'19', 7, 4373, -10.6825, -76.2569, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1538, N'180103', N'190102', N'19', N'PASCO', N'1901', N'PASCO', N'HUACHON', N'PASCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-PAS', N'19', 846, 3400, -10.6364, -75.9511, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1539, N'180104', N'190103', N'19', N'PASCO', N'1901', N'PASCO', N'HUARIACA', N'PASCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-PAS', N'19', 133, 2986, -10.4392, -76.1917, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1540, N'180105', N'190104', N'19', N'PASCO', N'1901', N'PASCO', N'HUAYLLAY', N'PASCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-PAS', N'19', 1027, 4341, -11.0019, -76.3647, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1541, N'180106', N'190105', N'19', N'PASCO', N'1901', N'PASCO', N'NINACACA', N'PASCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-PAS', N'19', 509, 4172, -10.8556, -76.1131, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1542, N'180107', N'190106', N'19', N'PASCO', N'1901', N'PASCO', N'PALLANCHACRA', N'PASCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-PAS', N'19', 74, 3126, -10.4153, -76.2356, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1543, N'180108', N'190107', N'19', N'PASCO', N'1901', N'PASCO', N'PAUCARTAMBO', N'PASCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-PAS', N'19', 782, 2954, -10.7744, -75.8133, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1544, N'180109', N'190108', N'19', N'PASCO', N'1901', N'PASCO', N'SAN FRANCISCO DE ASIS DE YARUSYACAN', N'PASCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-PAS', N'19', 118, 3785, -10.49, -76.1961, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1545, N'180110', N'190109', N'19', N'PASCO', N'1901', N'PASCO', N'SIMON BOLIVAR', N'PASCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-PAS', N'19', 697, 4234, -10.6892, -76.3164, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1546, N'180111', N'190110', N'19', N'PASCO', N'1901', N'PASCO', N'TICLACAYAN', N'PASCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-PAS', N'19', 748, 3543, -10.535, -76.1642, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1547, N'180112', N'190111', N'19', N'PASCO', N'1901', N'PASCO', N'TINYAHUARCO', N'PASCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-PAS', N'19', 94, 4281, -10.7697, -76.2769, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1548, N'180113', N'190112', N'19', N'PASCO', N'1901', N'PASCO', N'VICCO', N'PASCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-PAS', N'19', 173, 4128, -10.8383, -76.2383, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1549, N'180114', N'190113', N'19', N'PASCO', N'1901', N'PASCO', N'YANACANCHA', N'PASCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-PAS', N'19', 165, 4394, -10.6633, -76.2531, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1550, N'180201', N'190201', N'19', N'PASCO', N'1902', N'DANIEL ALCIDES CARRION', N'YANAHUANCA', N'PASCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-PAS', N'19', 921, 3203, -10.4914, -76.5164, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1551, N'180202', N'190202', N'19', N'PASCO', N'1902', N'DANIEL ALCIDES CARRION', N'CHACAYAN', N'PASCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-PAS', N'19', 199, 3385, -10.4344, -76.4372, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1552, N'180203', N'190203', N'19', N'PASCO', N'1902', N'DANIEL ALCIDES CARRION', N'GOYLLARISQUIZGA', N'PASCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-PAS', N'19', 23, 4202, -10.4731, -76.4083, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1553, N'180204', N'190204', N'19', N'PASCO', N'1902', N'DANIEL ALCIDES CARRION', N'PAUCAR', N'PASCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-PAS', N'19', 134, 3381, -10.3711, -76.4433, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1554, N'180205', N'190205', N'19', N'PASCO', N'1902', N'DANIEL ALCIDES CARRION', N'SAN PEDRO DE PILLAO', N'PASCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-PAS', N'19', 92, 3648, -10.4389, -76.4953, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1555, N'180206', N'190206', N'19', N'PASCO', N'1902', N'DANIEL ALCIDES CARRION', N'SANTA ANA DE TUSI', N'PASCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-PAS', N'19', 353, 3786, -10.4725, -76.3536, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1556, N'180207', N'190207', N'19', N'PASCO', N'1902', N'DANIEL ALCIDES CARRION', N'TAPUC', N'PASCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-PAS', N'19', 60, 3713, -10.4547, -76.4625, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1557, N'180208', N'190208', N'19', N'PASCO', N'1902', N'DANIEL ALCIDES CARRION', N'VILCABAMBA', N'PASCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-PAS', N'19', 102, 3459, -10.4786, -76.4469, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1558, N'180301', N'190301', N'19', N'PASCO', N'1903', N'OXAPAMPA', N'OXAPAMPA', N'PASCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-PAS', N'19', 420, 1832, -10.575, -75.4047, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1559, N'180302', N'190302', N'19', N'PASCO', N'1903', N'OXAPAMPA', N'CHONTABAMBA', N'PASCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-PAS', N'19', 457, 1849, -10.6022, -75.4389, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1560, N'180303', N'190303', N'19', N'PASCO', N'1903', N'OXAPAMPA', N'HUANCABAMBA', N'PASCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-PAS', N'19', 1182, 1769, -10.4261, -75.5239, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1561, N'180307', N'190304', N'19', N'PASCO', N'1903', N'OXAPAMPA', N'PALCAZU', N'PASCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-PAS', N'19', 2912, 302, -10.1842, -75.1481, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1562, N'180306', N'190305', N'19', N'PASCO', N'1903', N'OXAPAMPA', N'POZUZO', N'PASCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-PAS', N'19', 751, 750, -10.0711, -75.5503, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1563, N'180304', N'190306', N'19', N'PASCO', N'1903', N'OXAPAMPA', N'PUERTO BERMUDEZ', N'PASCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-PAS', N'19', 8014, 281, -10.2992, -74.9372, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1564, N'180305', N'190307', N'19', N'PASCO', N'1903', N'OXAPAMPA', N'VILLA RICA', N'PASCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-PAS', N'19', 859, 1551, -10.7392, -75.2758, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1565, N'180308', N'190308', N'19', N'PASCO', N'1903', N'OXAPAMPA', N'CONSTITUCION', N'PASCO', N'CENTRO', N'MACROREGION CENTRO', N'PE-PAS', N'19', 3171, 247, -9.8564, -75.0169, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1566, N'190101', N'200101', N'20', N'PIURA', N'2001', N'PIURA', N'PIURA', N'PIURA', N'NORTE', N'MACROREGION NORTE', N'PE-PIU', N'20', 196, 57, -5.1525, -80.6578, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1567, N'190103', N'200104', N'20', N'PIURA', N'2001', N'PIURA', N'CASTILLA', N'PIURA', N'NORTE', N'MACROREGION NORTE', N'PE-PIU', N'20', 657, 35, -5.2014, -80.6228, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1568, N'190104', N'200105', N'20', N'PIURA', N'2001', N'PIURA', N'CATACAOS', N'PIURA', N'NORTE', N'MACROREGION NORTE', N'PE-PIU', N'20', 2287, 35, -5.2672, -80.6725, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1569, N'190113', N'200107', N'20', N'PIURA', N'2001', N'PIURA', N'CURA MORI', N'PIURA', N'NORTE', N'MACROREGION NORTE', N'PE-PIU', N'20', 217, 35, -5.3236, -80.6656, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1570, N'190114', N'200108', N'20', N'PIURA', N'2001', N'PIURA', N'EL TALLAN', N'PIURA', N'NORTE', N'MACROREGION NORTE', N'PE-PIU', N'20', 101, 21, -5.4092, -80.6811, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1571, N'190105', N'200109', N'20', N'PIURA', N'2001', N'PIURA', N'LA ARENA', N'PIURA', N'NORTE', N'MACROREGION NORTE', N'PE-PIU', N'20', 171, 33, -5.3431, -80.7036, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1572, N'190106', N'200110', N'20', N'PIURA', N'2001', N'PIURA', N'LA UNION', N'PIURA', N'NORTE', N'MACROREGION NORTE', N'PE-PIU', N'20', 321, 27, -5.3883, -80.7372, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1573, N'190107', N'200111', N'20', N'PIURA', N'2001', N'PIURA', N'LAS LOMAS', N'PIURA', N'NORTE', N'MACROREGION NORTE', N'PE-PIU', N'20', 558, 257, -4.65, -80.2392, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1574, N'190109', N'200114', N'20', N'PIURA', N'2001', N'PIURA', N'TAMBO GRANDE', N'PIURA', N'NORTE', N'MACROREGION NORTE', N'PE-PIU', N'20', 1497, 76, -4.9281, -80.3372, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1575, N'190115', N'200115', N'20', N'PIURA', N'2001', N'PIURA', N'VEINTISEIS DE OCTUBRE', N'PIURA', N'NORTE', N'MACROREGION NORTE', N'PE-PIU', N'20', 72, 53, -5.1792, -80.6781, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1576, N'190201', N'200201', N'20', N'PIURA', N'2002', N'AYABACA', N'AYABACA', N'PIURA', N'NORTE', N'MACROREGION NORTE', N'PE-PIU', N'20', 1550, 2735, -4.6406, -79.7153, N'SI')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1577, N'190202', N'200202', N'20', N'PIURA', N'2002', N'AYABACA', N'FRIAS', N'PIURA', N'NORTE', N'MACROREGION NORTE', N'PE-PIU', N'20', 565, 1703, -4.9317, -79.9475, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1578, N'190209', N'200203', N'20', N'PIURA', N'2002', N'AYABACA', N'JILILI', N'PIURA', N'NORTE', N'MACROREGION NORTE', N'PE-PIU', N'20', 105, 1311, -4.5847, -79.7972, N'SI')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1579, N'190203', N'200204', N'20', N'PIURA', N'2002', N'AYABACA', N'LAGUNAS', N'PIURA', N'NORTE', N'MACROREGION NORTE', N'PE-PIU', N'20', 191, 2219, -4.7892, -79.845, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1580, N'190204', N'200205', N'20', N'PIURA', N'2002', N'AYABACA', N'MONTERO', N'PIURA', N'NORTE', N'MACROREGION NORTE', N'PE-PIU', N'20', 131, 1058, -4.6322, -79.8289, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1581, N'190205', N'200206', N'20', N'PIURA', N'2002', N'AYABACA', N'PACAIPAMPA', N'PIURA', N'NORTE', N'MACROREGION NORTE', N'PE-PIU', N'20', 982, 1980, -4.9956, -79.6678, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1582, N'190210', N'200207', N'20', N'PIURA', N'2002', N'AYABACA', N'PAIMAS', N'PIURA', N'NORTE', N'MACROREGION NORTE', N'PE-PIU', N'20', 320, 598, -4.6275, -79.9456, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1583, N'190206', N'200208', N'20', N'PIURA', N'2002', N'AYABACA', N'SAPILLICA', N'PIURA', N'NORTE', N'MACROREGION NORTE', N'PE-PIU', N'20', 267, 1464, -4.7792, -79.9822, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1584, N'190207', N'200209', N'20', N'PIURA', N'2002', N'AYABACA', N'SICCHEZ', N'PIURA', N'NORTE', N'MACROREGION NORTE', N'PE-PIU', N'20', 33, 1452, -4.57, -79.7639, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1585, N'190208', N'200210', N'20', N'PIURA', N'2002', N'AYABACA', N'SUYO', N'PIURA', N'NORTE', N'MACROREGION NORTE', N'PE-PIU', N'20', 1079, 417, -4.5128, -80.0025, N'SI')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1586, N'190301', N'200301', N'20', N'PIURA', N'2003', N'HUANCABAMBA', N'HUANCABAMBA', N'PIURA', N'NORTE', N'MACROREGION NORTE', N'PE-PIU', N'20', 447, 1955, -5.2386, -79.4503, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1587, N'190302', N'200302', N'20', N'PIURA', N'2003', N'HUANCABAMBA', N'CANCHAQUE', N'PIURA', N'NORTE', N'MACROREGION NORTE', N'PE-PIU', N'20', 306, 1152, -5.3758, -79.6056, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1588, N'190306', N'200303', N'20', N'PIURA', N'2003', N'HUANCABAMBA', N'EL CARMEN DE LA FRONTERA', N'PIURA', N'NORTE', N'MACROREGION NORTE', N'PE-PIU', N'20', 703, 2472, -5.1483, -79.4283, N'SI')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1589, N'190303', N'200304', N'20', N'PIURA', N'2003', N'HUANCABAMBA', N'HUARMACA', N'PIURA', N'NORTE', N'MACROREGION NORTE', N'PE-PIU', N'20', 1908, 2188, -5.5681, -79.5244, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1590, N'190308', N'200305', N'20', N'PIURA', N'2003', N'HUANCABAMBA', N'LALAQUIZ', N'PIURA', N'NORTE', N'MACROREGION NORTE', N'PE-PIU', N'20', 139, 972, -5.2158, -79.68, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1591, N'190307', N'200306', N'20', N'PIURA', N'2003', N'HUANCABAMBA', N'SAN MIGUEL DE EL FAIQUE', N'PIURA', N'NORTE', N'MACROREGION NORTE', N'PE-PIU', N'20', 202, 1259, -5.4019, -79.6061, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1592, N'190304', N'200307', N'20', N'PIURA', N'2003', N'HUANCABAMBA', N'SONDOR', N'PIURA', N'NORTE', N'MACROREGION NORTE', N'PE-PIU', N'20', 337, 2003, -5.3156, -79.4097, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1593, N'190305', N'200308', N'20', N'PIURA', N'2003', N'HUANCABAMBA', N'SONDORILLO', N'PIURA', N'NORTE', N'MACROREGION NORTE', N'PE-PIU', N'20', 226, 1886, -5.3394, -79.4286, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1594, N'190401', N'200401', N'20', N'PIURA', N'2004', N'MORROPON', N'CHULUCANAS', N'PIURA', N'NORTE', N'MACROREGION NORTE', N'PE-PIU', N'20', 842, 135, -5.0972, -80.1603, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1595, N'190402', N'200402', N'20', N'PIURA', N'2004', N'MORROPON', N'BUENOS AIRES', N'PIURA', N'NORTE', N'MACROREGION NORTE', N'PE-PIU', N'20', 245, 154, -5.2669, -79.9669, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1596, N'190403', N'200403', N'20', N'PIURA', N'2004', N'MORROPON', N'CHALACO', N'PIURA', N'NORTE', N'MACROREGION NORTE', N'PE-PIU', N'20', 152, 2261, -5.0411, -79.7956, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1597, N'190408', N'200404', N'20', N'PIURA', N'2004', N'MORROPON', N'LA MATANZA', N'PIURA', N'NORTE', N'MACROREGION NORTE', N'PE-PIU', N'20', 1044, 126, -5.2136, -80.0906, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1598, N'190404', N'200405', N'20', N'PIURA', N'2004', N'MORROPON', N'MORROPON', N'PIURA', N'NORTE', N'MACROREGION NORTE', N'PE-PIU', N'20', 170, 151, -5.1861, -79.9692, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1599, N'190405', N'200406', N'20', N'PIURA', N'2004', N'MORROPON', N'SALITRAL', N'PIURA', N'NORTE', N'MACROREGION NORTE', N'PE-PIU', N'20', 614, 175, -5.3419, -79.8336, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1600, N'190410', N'200407', N'20', N'PIURA', N'2004', N'MORROPON', N'SAN JUAN DE BIGOTE', N'PIURA', N'NORTE', N'MACROREGION NORTE', N'PE-PIU', N'20', 245, 201, -5.3194, -79.7861, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1601, N'190406', N'200408', N'20', N'PIURA', N'2004', N'MORROPON', N'SANTA CATALINA DE MOSSA', N'PIURA', N'NORTE', N'MACROREGION NORTE', N'PE-PIU', N'20', 77, 881, -5.1028, -79.885, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1602, N'190407', N'200409', N'20', N'PIURA', N'2004', N'MORROPON', N'SANTO DOMINGO', N'PIURA', N'NORTE', N'MACROREGION NORTE', N'PE-PIU', N'20', 187, 1490, -5.0294, -79.8758, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1603, N'190409', N'200410', N'20', N'PIURA', N'2004', N'MORROPON', N'YAMANGO', N'PIURA', N'NORTE', N'MACROREGION NORTE', N'PE-PIU', N'20', 217, 1192, -5.1808, -79.7511, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1604, N'190501', N'200501', N'20', N'PIURA', N'2005', N'PAITA', N'PAITA', N'PIURA', N'NORTE', N'MACROREGION NORTE', N'PE-PIU', N'20', 706, 71, -5.0931, -81.0994, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1605, N'190502', N'200502', N'20', N'PIURA', N'2005', N'PAITA', N'AMOTAPE', N'PIURA', N'NORTE', N'MACROREGION NORTE', N'PE-PIU', N'20', 91, 23, -4.8819, -81.0153, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1606, N'190503', N'200503', N'20', N'PIURA', N'2005', N'PAITA', N'ARENAL', N'PIURA', N'NORTE', N'MACROREGION NORTE', N'PE-PIU', N'20', 8, 37, -4.8836, -81.0264, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1607, N'190505', N'200504', N'20', N'PIURA', N'2005', N'PAITA', N'COLAN', N'PIURA', N'NORTE', N'MACROREGION NORTE', N'PE-PIU', N'20', 125, 25, -4.9006, -81.0564, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1608, N'190504', N'200505', N'20', N'PIURA', N'2005', N'PAITA', N'LA HUACA', N'PIURA', N'NORTE', N'MACROREGION NORTE', N'PE-PIU', N'20', 600, 33, -4.9103, -80.9614, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1609, N'190506', N'200506', N'20', N'PIURA', N'2005', N'PAITA', N'TAMARINDO', N'PIURA', N'NORTE', N'MACROREGION NORTE', N'PE-PIU', N'20', 64, 33, -4.8783, -80.9758, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1610, N'190507', N'200507', N'20', N'PIURA', N'2005', N'PAITA', N'VICHAYAL', N'PIURA', N'NORTE', N'MACROREGION NORTE', N'PE-PIU', N'20', 134, 27, -4.8642, -81.0731, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1611, N'190601', N'200601', N'20', N'PIURA', N'2006', N'SULLANA', N'SULLANA', N'PIURA', N'NORTE', N'MACROREGION NORTE', N'PE-PIU', N'20', 530, 76, -4.8906, -80.6878, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1612, N'190602', N'200602', N'20', N'PIURA', N'2006', N'SULLANA', N'BELLAVISTA', N'PIURA', N'NORTE', N'MACROREGION NORTE', N'PE-PIU', N'20', 3, 77, -4.89, -80.6803, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1613, N'190608', N'200603', N'20', N'PIURA', N'2006', N'SULLANA', N'IGNACIO ESCUDERO', N'PIURA', N'NORTE', N'MACROREGION NORTE', N'PE-PIU', N'20', 307, 39, -4.8461, -80.8731, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1614, N'190603', N'200604', N'20', N'PIURA', N'2006', N'SULLANA', N'LANCONES', N'PIURA', N'NORTE', N'MACROREGION NORTE', N'PE-PIU', N'20', 2153, 156, -4.6328, -80.5456, N'SI')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1615, N'190604', N'200605', N'20', N'PIURA', N'2006', N'SULLANA', N'MARCAVELICA', N'PIURA', N'NORTE', N'MACROREGION NORTE', N'PE-PIU', N'20', 1688, 53, -4.8817, -80.7036, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1616, N'190605', N'200606', N'20', N'PIURA', N'2006', N'SULLANA', N'MIGUEL CHECA', N'PIURA', N'NORTE', N'MACROREGION NORTE', N'PE-PIU', N'20', 480, 62, -4.9003, -80.8147, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1617, N'190606', N'200607', N'20', N'PIURA', N'2006', N'SULLANA', N'QUERECOTILLO', N'PIURA', N'NORTE', N'MACROREGION NORTE', N'PE-PIU', N'20', 270, 66, -4.8392, -80.6483, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1618, N'190607', N'200608', N'20', N'PIURA', N'2006', N'SULLANA', N'SALITRAL', N'PIURA', N'NORTE', N'MACROREGION NORTE', N'PE-PIU', N'20', 28, 65, -4.8569, -80.6808, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1619, N'190701', N'200701', N'20', N'PIURA', N'2007', N'TALARA', N'PARIÑAS', N'PIURA', N'NORTE', N'MACROREGION NORTE', N'PE-PIU', N'20', 1117, 23, -4.5794, -81.2694, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1620, N'190702', N'200702', N'20', N'PIURA', N'2007', N'TALARA', N'EL ALTO', N'PIURA', N'NORTE', N'MACROREGION NORTE', N'PE-PIU', N'20', 491, 276, -4.2686, -81.2214, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1621, N'190703', N'200703', N'20', N'PIURA', N'2007', N'TALARA', N'LA BREA', N'PIURA', N'NORTE', N'MACROREGION NORTE', N'PE-PIU', N'20', 693, 8, -4.6547, -81.3058, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1622, N'190704', N'200704', N'20', N'PIURA', N'2007', N'TALARA', N'LOBITOS', N'PIURA', N'NORTE', N'MACROREGION NORTE', N'PE-PIU', N'20', 233, 31, -4.4569, -81.285, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1623, N'190706', N'200705', N'20', N'PIURA', N'2007', N'TALARA', N'LOS ORGANOS', N'PIURA', N'NORTE', N'MACROREGION NORTE', N'PE-PIU', N'20', 165, 7, -4.1792, -81.1294, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1624, N'190705', N'200706', N'20', N'PIURA', N'2007', N'TALARA', N'MANCORA', N'PIURA', N'NORTE', N'MACROREGION NORTE', N'PE-PIU', N'20', 100, 8, -4.1069, -81.0539, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1625, N'190801', N'200801', N'20', N'PIURA', N'2008', N'SECHURA', N'SECHURA', N'PIURA', N'NORTE', N'MACROREGION NORTE', N'PE-PIU', N'20', 5711, 12, -5.5572, -80.8222, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1626, N'190804', N'200802', N'20', N'PIURA', N'2008', N'SECHURA', N'BELLAVISTA DE LA UNION', N'PIURA', N'NORTE', N'MACROREGION NORTE', N'PE-PIU', N'20', 14, 23, -5.4403, -80.755, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1627, N'190803', N'200803', N'20', N'PIURA', N'2008', N'SECHURA', N'BERNAL', N'PIURA', N'NORTE', N'MACROREGION NORTE', N'PE-PIU', N'20', 72, 22, -5.4589, -80.7419, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1628, N'190805', N'200804', N'20', N'PIURA', N'2008', N'SECHURA', N'CRISTO NOS VALGA', N'PIURA', N'NORTE', N'MACROREGION NORTE', N'PE-PIU', N'20', 234, 25, -5.4931, -80.7411, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1629, N'190802', N'200805', N'20', N'PIURA', N'2008', N'SECHURA', N'VICE', N'PIURA', N'NORTE', N'MACROREGION NORTE', N'PE-PIU', N'20', 261, 23, -5.4222, -80.7764, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1630, N'190806', N'200806', N'20', N'PIURA', N'2008', N'SECHURA', N'RINCONADA LLICUAR', N'PIURA', N'NORTE', N'MACROREGION NORTE', N'PE-PIU', N'20', 19, 26, -5.4636, -80.7653, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1631, N'200101', N'210101', N'21', N'PUNO', N'2101', N'PUNO', N'PUNO', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 461, 3848, -15.8403, -70.0281, N'SI')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1632, N'200102', N'210102', N'21', N'PUNO', N'2101', N'PUNO', N'ACORA', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 1941, 3848, -15.9736, -69.7978, N'SI')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1633, N'200115', N'210103', N'21', N'PUNO', N'2101', N'PUNO', N'AMANTANI', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 15, 3871, -15.6572, -69.7183, N'SI')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1634, N'200103', N'210104', N'21', N'PUNO', N'2101', N'PUNO', N'ATUNCOLLA', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 125, 3844, -15.6883, -70.1439, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1635, N'200104', N'210105', N'21', N'PUNO', N'2101', N'PUNO', N'CAPACHICA', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 117, 3872, -15.6417, -69.8308, N'SI')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1636, N'200106', N'210106', N'21', N'PUNO', N'2101', N'PUNO', N'CHUCUITO', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 121, 3893, -15.8947, -69.8894, N'SI')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1637, N'200105', N'210107', N'21', N'PUNO', N'2101', N'PUNO', N'COATA', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 104, 3839, -15.5714, -69.9506, N'SI')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1638, N'200107', N'210108', N'21', N'PUNO', N'2101', N'PUNO', N'HUATA', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 130, 3863, -15.615, -69.9714, N'SI')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1639, N'200108', N'210109', N'21', N'PUNO', N'2101', N'PUNO', N'MAÑAZO', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 411, 3949, -15.8011, -70.3433, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1640, N'200109', N'210110', N'21', N'PUNO', N'2101', N'PUNO', N'PAUCARCOLLA', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 170, 3864, -15.7456, -70.0561, N'SI')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1641, N'200110', N'210111', N'21', N'PUNO', N'2101', N'PUNO', N'PICHACANI', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 1633, 3962, -16.15, -70.0633, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1642, N'200114', N'210112', N'21', N'PUNO', N'2101', N'PUNO', N'PLATERIA', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 239, 3835, -15.9483, -69.8333, N'SI')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1643, N'200111', N'210113', N'21', N'PUNO', N'2101', N'PUNO', N'SAN ANTONIO', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 377, 4330, -16.1406, -70.3439, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1644, N'200112', N'210114', N'21', N'PUNO', N'2101', N'PUNO', N'TIQUILLACA', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 456, 3912, -15.7969, -70.1867, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1645, N'200113', N'210115', N'21', N'PUNO', N'2101', N'PUNO', N'VILQUE', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 193, 3878, -15.7667, -70.2589, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1646, N'200201', N'210201', N'21', N'PUNO', N'2102', N'AZANGARO', N'AZANGARO', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 706, 3878, -14.9081, -70.1956, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1647, N'200202', N'210202', N'21', N'PUNO', N'2102', N'AZANGARO', N'ACHAYA', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 132, 3868, -15.2847, -70.1611, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1648, N'200203', N'210203', N'21', N'PUNO', N'2102', N'AZANGARO', N'ARAPA', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 330, 3846, -15.1389, -70.11, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1649, N'200204', N'210204', N'21', N'PUNO', N'2102', N'AZANGARO', N'ASILLO', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 392, 3927, -14.7864, -70.3536, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1650, N'200205', N'210205', N'21', N'PUNO', N'2102', N'AZANGARO', N'CAMINACA', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 147, 3857, -15.3247, -70.0728, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1651, N'200206', N'210206', N'21', N'PUNO', N'2102', N'AZANGARO', N'CHUPA', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 143, 3847, -15.1058, -69.9872, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1652, N'200207', N'210207', N'21', N'PUNO', N'2102', N'AZANGARO', N'JOSE DOMINGO CHOQUEHUANCA', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 70, 3887, -15.0339, -70.3381, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1653, N'200208', N'210208', N'21', N'PUNO', N'2102', N'AZANGARO', N'MUÑANI', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 764, 3925, -14.7708, -69.9556, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1654, N'200210', N'210209', N'21', N'PUNO', N'2102', N'AZANGARO', N'POTONI', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 603, 4133, -14.39, -70.105, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1655, N'200212', N'210210', N'21', N'PUNO', N'2102', N'AZANGARO', N'SAMAN', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 189, 3836, -15.2919, -70.0172, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1656, N'200213', N'210211', N'21', N'PUNO', N'2102', N'AZANGARO', N'SAN ANTON', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 515, 3971, -14.5839, -70.3172, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1657, N'200214', N'210212', N'21', N'PUNO', N'2102', N'AZANGARO', N'SAN JOSE', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 373, 4094, -14.6803, -70.16, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1658, N'200215', N'210213', N'21', N'PUNO', N'2102', N'AZANGARO', N'SAN JUAN DE SALINAS', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 106, 3841, -14.9914, -70.1061, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1659, N'200216', N'210214', N'21', N'PUNO', N'2102', N'AZANGARO', N'SANTIAGO DE PUPUJA', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 301, 3933, -15.0528, -70.2781, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1660, N'200217', N'210215', N'21', N'PUNO', N'2102', N'AZANGARO', N'TIRAPATA', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 199, 3903, -14.955, -70.4028, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1661, N'200301', N'210301', N'21', N'PUNO', N'2103', N'CARABAYA', N'MACUSANI', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 1030, 4311, -14.0686, -70.4311, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1662, N'200302', N'210302', N'21', N'PUNO', N'2103', N'CARABAYA', N'AJOYANI', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 413, 4272, -14.2294, -70.2236, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1663, N'200303', N'210303', N'21', N'PUNO', N'2103', N'CARABAYA', N'AYAPATA', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 1092, 3481, -13.7767, -70.3228, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1664, N'200304', N'210304', N'21', N'PUNO', N'2103', N'CARABAYA', N'COASA', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 3573, 3768, -13.9892, -70.0158, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1665, N'200305', N'210305', N'21', N'PUNO', N'2103', N'CARABAYA', N'CORANI', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 853, 4039, -13.8686, -70.6044, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1666, N'200306', N'210306', N'21', N'PUNO', N'2103', N'CARABAYA', N'CRUCERO', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 836, 4146, -14.3617, -70.0236, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1667, N'200307', N'210307', N'21', N'PUNO', N'2103', N'CARABAYA', N'ITUATA', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 1201, 3787, -13.8764, -70.2139, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1668, N'200308', N'210308', N'21', N'PUNO', N'2103', N'CARABAYA', N'OLLACHEA', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 596, 2746, -13.7939, -70.4725, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1669, N'200309', N'210309', N'21', N'PUNO', N'2103', N'CARABAYA', N'SAN GABAN', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 2029, 641, -13.4383, -70.4028, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1670, N'200310', N'210310', N'21', N'PUNO', N'2103', N'CARABAYA', N'USICAYOS', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 644, 3781, -14.1253, -69.9675, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1671, N'200401', N'210401', N'21', N'PUNO', N'2104', N'CHUCUITO', N'JULI', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 720, 3878, -16.2128, -69.4594, N'SI')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1672, N'200402', N'210402', N'21', N'PUNO', N'2104', N'CHUCUITO', N'DESAGUADERO', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 178, 3849, -16.5644, -69.0394, N'SI')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1673, N'200403', N'210403', N'21', N'PUNO', N'2104', N'CHUCUITO', N'HUACULLANI', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 705, 3945, -16.6306, -69.3219, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1674, N'200412', N'210404', N'21', N'PUNO', N'2104', N'CHUCUITO', N'KELLUYO', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 486, 3858, -16.7269, -69.2503, N'SI')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1675, N'200406', N'210405', N'21', N'PUNO', N'2104', N'CHUCUITO', N'PISACOMA', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 959, 3932, -16.9086, -69.3714, N'SI')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1676, N'200407', N'210406', N'21', N'PUNO', N'2104', N'CHUCUITO', N'POMATA', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 383, 3878, -16.2736, -69.2928, N'SI')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1677, N'200410', N'210407', N'21', N'PUNO', N'2104', N'CHUCUITO', N'ZEPITA', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 547, 3836, -16.4969, -69.1033, N'SI')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1678, N'201201', N'210501', N'21', N'PUNO', N'2105', N'EL COLLAO', N'ILAVE', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 875, 3907, -16.0869, -69.6381, N'SI')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1679, N'201204', N'210502', N'21', N'PUNO', N'2105', N'EL COLLAO', N'CAPAZO', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 1039, 4402, -17.1839, -69.7444, N'SI')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1680, N'201202', N'210503', N'21', N'PUNO', N'2105', N'EL COLLAO', N'PILCUYO', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 157, 3841, -16.1108, -69.5542, N'SI')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1681, N'201203', N'210504', N'21', N'PUNO', N'2105', N'EL COLLAO', N'SANTA ROSA', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 2524, 3981, -16.7422, -69.7167, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1682, N'201205', N'210505', N'21', N'PUNO', N'2105', N'EL COLLAO', N'CONDURIRI', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 1006, 3969, -16.6219, -69.7086, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1683, N'200501', N'210601', N'21', N'PUNO', N'2106', N'HUANCANE', N'HUANCANE', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 382, 3866, -15.2008, -69.7678, N'SI')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1684, N'200502', N'210602', N'21', N'PUNO', N'2106', N'HUANCANE', N'COJATA', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 881, 4354, -15.0153, -69.3656, N'SI')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1685, N'200511', N'210603', N'21', N'PUNO', N'2106', N'HUANCANE', N'HUATASANI', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 107, 3849, -15.0594, -69.8019, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1686, N'200504', N'210604', N'21', N'PUNO', N'2106', N'HUANCANE', N'INCHUPALLA', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 289, 3930, -15.0097, -69.6828, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1687, N'200506', N'210605', N'21', N'PUNO', N'2106', N'HUANCANE', N'PUSI', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 148, 3851, -15.4419, -69.9297, N'SI')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1688, N'200507', N'210606', N'21', N'PUNO', N'2106', N'HUANCANE', N'ROSASPATA', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 301, 3891, -15.2347, -69.5275, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1689, N'200508', N'210607', N'21', N'PUNO', N'2106', N'HUANCANE', N'TARACO', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 198, 3848, -15.2972, -69.9783, N'SI')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1690, N'200509', N'210608', N'21', N'PUNO', N'2106', N'HUANCANE', N'VILQUE CHICO', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 499, 3851, -15.2139, -69.6892, N'SI')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1691, N'200601', N'210701', N'21', N'PUNO', N'2107', N'LAMPA', N'LAMPA', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 676, 3881, -15.3647, -70.3678, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1692, N'200602', N'210702', N'21', N'PUNO', N'2107', N'LAMPA', N'CABANILLA', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 443, 3890, -15.6203, -70.3456, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1693, N'200603', N'210703', N'21', N'PUNO', N'2107', N'LAMPA', N'CALAPUJA', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 141, 3851, -15.3106, -70.2217, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1694, N'200604', N'210704', N'21', N'PUNO', N'2107', N'LAMPA', N'NICASIO', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 134, 3868, -15.2356, -70.2611, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1695, N'200605', N'210705', N'21', N'PUNO', N'2107', N'LAMPA', N'OCUVIRI', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 878, 4227, -15.1139, -70.9092, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1696, N'200606', N'210706', N'21', N'PUNO', N'2107', N'LAMPA', N'PALCA', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 484, 4082, -15.2369, -70.5981, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1697, N'200607', N'210707', N'21', N'PUNO', N'2107', N'LAMPA', N'PARATIA', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 745, 4352, -15.4542, -70.5997, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1698, N'200608', N'210708', N'21', N'PUNO', N'2107', N'LAMPA', N'PUCARA', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 538, 3894, -15.0417, -70.3678, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1699, N'200609', N'210709', N'21', N'PUNO', N'2107', N'LAMPA', N'SANTA LUCIA', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 1596, 4053, -15.6994, -70.6064, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1700, N'200610', N'210710', N'21', N'PUNO', N'2107', N'LAMPA', N'VILAVILA', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 157, 4316, -15.1883, -70.66, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1701, N'200701', N'210801', N'21', N'PUNO', N'2108', N'MELGAR', N'AYAVIRI', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 1013, 3937, -14.8817, -70.5894, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1702, N'200702', N'210802', N'21', N'PUNO', N'2108', N'MELGAR', N'ANTAUTA', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 636, 4152, -14.2997, -70.2922, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1703, N'200703', N'210803', N'21', N'PUNO', N'2108', N'MELGAR', N'CUPI', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 214, 3984, -14.905, -70.8667, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1704, N'200704', N'210804', N'21', N'PUNO', N'2108', N'MELGAR', N'LLALLI', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 216, 3998, -14.9481, -70.8806, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1705, N'200705', N'210805', N'21', N'PUNO', N'2108', N'MELGAR', N'MACARI', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 674, 3979, -14.7717, -70.9033, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1706, N'200706', N'210806', N'21', N'PUNO', N'2108', N'MELGAR', N'NUÑOA', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 2200, 4038, -14.4761, -70.6364, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1707, N'200707', N'210807', N'21', N'PUNO', N'2108', N'MELGAR', N'ORURILLO', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 379, 3915, -14.7278, -70.5122, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1708, N'200708', N'210808', N'21', N'PUNO', N'2108', N'MELGAR', N'SANTA ROSA', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 790, 4010, -14.6075, -70.7878, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1709, N'200709', N'210809', N'21', N'PUNO', N'2108', N'MELGAR', N'UMACHIRI', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 324, 3943, -14.8539, -70.7539, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1710, N'201301', N'210901', N'21', N'PUNO', N'2109', N'MOHO', N'MOHO', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 494, 3902, -15.3603, -69.4997, N'SI')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1711, N'201302', N'210902', N'21', N'PUNO', N'2109', N'MOHO', N'CONIMA', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 73, 3862, -15.4578, -69.4378, N'SI')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1712, N'201304', N'210903', N'21', N'PUNO', N'2109', N'MOHO', N'HUAYRAPATA', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 388, 3912, -15.3214, -69.3411, N'SI')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1713, N'201303', N'210904', N'21', N'PUNO', N'2109', N'MOHO', N'TILALI', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 48, 3843, -15.515, -69.3481, N'SI')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1714, N'201101', N'211001', N'21', N'PUNO', N'2110', N'SAN ANTONIO DE PUTINA', N'PUTINA', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 1022, 3878, -14.9142, -69.8689, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1715, N'201104', N'211002', N'21', N'PUNO', N'2110', N'SAN ANTONIO DE PUTINA', N'ANANEA', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 940, 4705, -14.6786, -69.535, N'SI')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1716, N'201102', N'211003', N'21', N'PUNO', N'2110', N'SAN ANTONIO DE PUTINA', N'PEDRO VILCA APAZA', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 566, 3873, -15.0636, -69.8817, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1717, N'201103', N'211004', N'21', N'PUNO', N'2110', N'SAN ANTONIO DE PUTINA', N'QUILCAPUNCU', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 517, 3928, -14.8936, -69.7303, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1718, N'201105', N'211005', N'21', N'PUNO', N'2110', N'SAN ANTONIO DE PUTINA', N'SINA', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 163, 3181, -14.4967, -69.2803, N'SI')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1719, N'200901', N'211101', N'21', N'PUNO', N'2111', N'SAN ROMAN', N'JULIACA', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 534, 3877, -15.4839, -70.1333, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1720, N'200902', N'211102', N'21', N'PUNO', N'2111', N'SAN ROMAN', N'CABANA', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 191, 3912, -15.6492, -70.3219, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1721, N'200903', N'211103', N'21', N'PUNO', N'2111', N'SAN ROMAN', N'CABANILLAS', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 1267, 3894, -15.6444, -70.3539, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1722, N'200904', N'211104', N'21', N'PUNO', N'2111', N'SAN ROMAN', N'CARACOTO', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 286, 3844, -15.5675, -70.1025, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1723, N'200905', N'211105', N'21', N'PUNO', N'2111', N'SAN ROMAN', N'SAN MIGUEL', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 122, 3875, -15.4603, -70.1269, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1724, N'200801', N'211201', N'21', N'PUNO', N'2112', N'SANDIA', N'SANDIA', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 580, 2206, -14.3222, -69.4664, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1725, N'200803', N'211202', N'21', N'PUNO', N'2112', N'SANDIA', N'CUYOCUYO', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 504, 3425, -14.4703, -69.5372, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1726, N'200804', N'211203', N'21', N'PUNO', N'2112', N'SANDIA', N'LIMBANI', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 2112, 3333, -14.1497, -69.6906, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1727, N'200806', N'211204', N'21', N'PUNO', N'2112', N'SANDIA', N'PATAMBUCO', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 463, 3650, -14.3617, -69.6194, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1728, N'200805', N'211205', N'21', N'PUNO', N'2112', N'SANDIA', N'PHARA', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 401, 3485, -14.1519, -69.6653, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1729, N'200807', N'211206', N'21', N'PUNO', N'2112', N'SANDIA', N'QUIACA', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 448, 2970, -14.4222, -69.345, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1730, N'200808', N'211207', N'21', N'PUNO', N'2112', N'SANDIA', N'SAN JUAN DEL ORO', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 197, 1308, -14.2208, -69.1536, N'SI')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1731, N'200810', N'211208', N'21', N'PUNO', N'2112', N'SANDIA', N'YANAHUAYA', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 671, 1419, -14.2586, -69.1694, N'SI')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1732, N'200811', N'211209', N'21', N'PUNO', N'2112', N'SANDIA', N'ALTO INAMBARI', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 1125, 1352, -14.09, -69.2433, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1733, N'200812', N'211210', N'21', N'PUNO', N'2112', N'SANDIA', N'SAN PEDRO DE PUTINA PUNCO', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 5362, 948, -14.1125, -69.0478, N'SI')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1734, N'201001', N'211301', N'21', N'PUNO', N'2113', N'YUNGUYO', N'YUNGUYO', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 171, 3850, -16.2267, -69.0956, N'SI')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1735, N'201003', N'211302', N'21', N'PUNO', N'2113', N'YUNGUYO', N'ANAPIA', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 10, 3864, -16.3139, -68.8528, N'SI')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1736, N'201004', N'211303', N'21', N'PUNO', N'2113', N'YUNGUYO', N'COPANI', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 47, 3864, -16.4, -69.0403, N'SI')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1737, N'201005', N'211304', N'21', N'PUNO', N'2113', N'YUNGUYO', N'CUTURAPI', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 22, 3861, -16.2706, -69.1769, N'SI')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1738, N'201006', N'211305', N'21', N'PUNO', N'2113', N'YUNGUYO', N'OLLARAYA', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 24, 3852, -16.2197, -68.9911, N'SI')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1739, N'201007', N'211306', N'21', N'PUNO', N'2113', N'YUNGUYO', N'TINICACHI', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 6, 3853, -16.1986, -68.9617, N'SI')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1740, N'201002', N'211307', N'21', N'PUNO', N'2113', N'YUNGUYO', N'UNICACHI', N'PUNO', N'SUR', N'MACROREGION SUR', N'PE-PUN', N'21', 11, 3827, -16.2236, -68.9811, N'SI')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1741, N'210101', N'220101', N'22', N'SAN MARTIN', N'2201', N'MOYOBAMBA', N'MOYOBAMBA', N'SAN MARTIN', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-SAM', N'22', 2738, 895, -6.0347, -76.9742, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1742, N'210102', N'220102', N'22', N'SAN MARTIN', N'2201', N'MOYOBAMBA', N'CALZADA', N'SAN MARTIN', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-SAM', N'22', 95, 856, -6.0303, -77.0667, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1743, N'210103', N'220103', N'22', N'SAN MARTIN', N'2201', N'MOYOBAMBA', N'HABANA', N'SAN MARTIN', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-SAM', N'22', 91, 850, -6.0797, -77.0914, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1744, N'210104', N'220104', N'22', N'SAN MARTIN', N'2201', N'MOYOBAMBA', N'JEPELACIO', N'SAN MARTIN', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-SAM', N'22', 360, 1067, -6.1081, -76.9153, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1745, N'210105', N'220105', N'22', N'SAN MARTIN', N'2201', N'MOYOBAMBA', N'SORITOR', N'SAN MARTIN', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-SAM', N'22', 388, 904, -6.1394, -77.1025, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1746, N'210106', N'220106', N'22', N'SAN MARTIN', N'2201', N'MOYOBAMBA', N'YANTALO', N'SAN MARTIN', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-SAM', N'22', 100, 862, -5.9744, -77.0208, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1747, N'210701', N'220201', N'22', N'SAN MARTIN', N'2202', N'BELLAVISTA', N'BELLAVISTA', N'SAN MARTIN', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-SAM', N'22', 287, 330, -7.0522, -76.5897, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1748, N'210704', N'220202', N'22', N'SAN MARTIN', N'2202', N'BELLAVISTA', N'ALTO BIAVO', N'SAN MARTIN', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-SAM', N'22', 6117, 253, -7.2558, -76.4767, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1749, N'210706', N'220203', N'22', N'SAN MARTIN', N'2202', N'BELLAVISTA', N'BAJO BIAVO', N'SAN MARTIN', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-SAM', N'22', 975, 256, -7.1017, -76.4719, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1750, N'210705', N'220204', N'22', N'SAN MARTIN', N'2202', N'BELLAVISTA', N'HUALLAGA', N'SAN MARTIN', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-SAM', N'22', 210, 267, -7.1311, -76.6486, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1751, N'210703', N'220205', N'22', N'SAN MARTIN', N'2202', N'BELLAVISTA', N'SAN PABLO', N'SAN MARTIN', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-SAM', N'22', 362, 278, -6.8097, -76.5747, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1752, N'210702', N'220206', N'22', N'SAN MARTIN', N'2202', N'BELLAVISTA', N'SAN RAFAEL', N'SAN MARTIN', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-SAM', N'22', 98, 242, -7.0231, -76.4658, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1753, N'211001', N'220301', N'22', N'SAN MARTIN', N'2203', N'EL DORADO', N'SAN JOSE DE SISA', N'SAN MARTIN', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-SAM', N'22', 300, 342, -6.6139, -76.6953, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1754, N'211002', N'220302', N'22', N'SAN MARTIN', N'2203', N'EL DORADO', N'AGUA BLANCA', N'SAN MARTIN', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-SAM', N'22', 168, 318, -6.7253, -76.6953, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1755, N'211004', N'220303', N'22', N'SAN MARTIN', N'2203', N'EL DORADO', N'SAN MARTIN', N'SAN MARTIN', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-SAM', N'22', 563, 437, -6.5144, -76.7406, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1756, N'211005', N'220304', N'22', N'SAN MARTIN', N'2203', N'EL DORADO', N'SANTA ROSA', N'SAN MARTIN', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-SAM', N'22', 243, 288, -6.7464, -76.6236, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1757, N'211003', N'220305', N'22', N'SAN MARTIN', N'2203', N'EL DORADO', N'SHATOJA', N'SAN MARTIN', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-SAM', N'22', 24, 413, -6.5283, -76.72, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1758, N'210201', N'220401', N'22', N'SAN MARTIN', N'2204', N'HUALLAGA', N'SAPOSOA', N'SAN MARTIN', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-SAM', N'22', 545, 317, -6.9367, -76.7722, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1759, N'210205', N'220402', N'22', N'SAN MARTIN', N'2204', N'HUALLAGA', N'ALTO SAPOSOA', N'SAN MARTIN', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-SAM', N'22', 1347, 408, -6.7647, -76.8136, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1760, N'210206', N'220403', N'22', N'SAN MARTIN', N'2204', N'HUALLAGA', N'EL ESLABON', N'SAN MARTIN', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-SAM', N'22', 123, 293, -7.0217, -76.7233, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1761, N'210202', N'220404', N'22', N'SAN MARTIN', N'2204', N'HUALLAGA', N'PISCOYACU', N'SAN MARTIN', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-SAM', N'22', 185, 310, -6.9811, -76.7694, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1762, N'210203', N'220405', N'22', N'SAN MARTIN', N'2204', N'HUALLAGA', N'SACANCHE', N'SAN MARTIN', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-SAM', N'22', 143, 269, -7.07, -76.7136, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1763, N'210204', N'220406', N'22', N'SAN MARTIN', N'2204', N'HUALLAGA', N'TINGO DE SAPOSOA', N'SAN MARTIN', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-SAM', N'22', 37, 259, -7.0919, -76.6414, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1764, N'210301', N'220501', N'22', N'SAN MARTIN', N'2205', N'LAMAS', N'LAMAS', N'SAN MARTIN', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-SAM', N'22', 80, 764, -6.4239, -76.5233, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1765, N'210315', N'220502', N'22', N'SAN MARTIN', N'2205', N'LAMAS', N'ALONSO DE ALVARADO', N'SAN MARTIN', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-SAM', N'22', 294, 1090, -6.3558, -76.7753, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1766, N'210303', N'220503', N'22', N'SAN MARTIN', N'2205', N'LAMAS', N'BARRANQUITA', N'SAN MARTIN', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-SAM', N'22', 1065, 173, -6.2522, -76.0333, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1767, N'210304', N'220504', N'22', N'SAN MARTIN', N'2205', N'LAMAS', N'CAYNARACHI', N'SAN MARTIN', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-SAM', N'22', 1679, 193, -6.3308, -76.2842, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1768, N'210305', N'220505', N'22', N'SAN MARTIN', N'2205', N'LAMAS', N'CUÑUMBUQUI', N'SAN MARTIN', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-SAM', N'22', 191, 248, -6.5106, -76.4817, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1769, N'210306', N'220506', N'22', N'SAN MARTIN', N'2205', N'LAMAS', N'PINTO RECODO', N'SAN MARTIN', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-SAM', N'22', 524, 276, -6.3792, -76.6044, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1770, N'210307', N'220507', N'22', N'SAN MARTIN', N'2205', N'LAMAS', N'RUMISAPA', N'SAN MARTIN', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-SAM', N'22', 39, 328, -6.4489, -76.4717, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1771, N'210316', N'220508', N'22', N'SAN MARTIN', N'2205', N'LAMAS', N'SAN ROQUE DE CUMBAZA', N'SAN MARTIN', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-SAM', N'22', 525, 611, -6.3856, -76.4386, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1772, N'210311', N'220509', N'22', N'SAN MARTIN', N'2205', N'LAMAS', N'SHANAO', N'SAN MARTIN', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-SAM', N'22', 25, 260, -6.4117, -76.5942, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1773, N'210313', N'220510', N'22', N'SAN MARTIN', N'2205', N'LAMAS', N'TABALOSOS', N'SAN MARTIN', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-SAM', N'22', 485, 597, -6.3894, -76.6342, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1774, N'210314', N'220511', N'22', N'SAN MARTIN', N'2205', N'LAMAS', N'ZAPATERO', N'SAN MARTIN', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-SAM', N'22', 175, 299, -6.5297, -76.4942, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1775, N'210401', N'220601', N'22', N'SAN MARTIN', N'2206', N'MARISCAL CACERES', N'JUANJUI', N'SAN MARTIN', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-SAM', N'22', 335, 299, -7.1767, -76.7239, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1776, N'210402', N'220602', N'22', N'SAN MARTIN', N'2206', N'MARISCAL CACERES', N'CAMPANILLA', N'SAN MARTIN', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-SAM', N'22', 2250, 318, -7.4831, -76.6497, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1777, N'210403', N'220603', N'22', N'SAN MARTIN', N'2206', N'MARISCAL CACERES', N'HUICUNGO', N'SAN MARTIN', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-SAM', N'22', 9830, 308, -7.3169, -76.7772, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1778, N'210404', N'220604', N'22', N'SAN MARTIN', N'2206', N'MARISCAL CACERES', N'PACHIZA', N'SAN MARTIN', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-SAM', N'22', 1840, 295, -7.2981, -76.7733, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1779, N'210405', N'220605', N'22', N'SAN MARTIN', N'2206', N'MARISCAL CACERES', N'PAJARILLO', N'SAN MARTIN', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-SAM', N'22', 244, 286, -7.1767, -76.6886, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1780, N'210901', N'220701', N'22', N'SAN MARTIN', N'2207', N'PICOTA', N'PICOTA', N'SAN MARTIN', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-SAM', N'22', 219, 228, -6.92, -76.3303, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1781, N'210902', N'220702', N'22', N'SAN MARTIN', N'2207', N'PICOTA', N'BUENOS AIRES', N'SAN MARTIN', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-SAM', N'22', 273, 209, -6.7917, -76.3278, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1782, N'210903', N'220703', N'22', N'SAN MARTIN', N'2207', N'PICOTA', N'CASPISAPA', N'SAN MARTIN', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-SAM', N'22', 81, 238, -6.9564, -76.4186, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1783, N'210904', N'220704', N'22', N'SAN MARTIN', N'2207', N'PICOTA', N'PILLUANA', N'SAN MARTIN', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-SAM', N'22', 239, 218, -6.7767, -76.2917, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1784, N'210905', N'220705', N'22', N'SAN MARTIN', N'2207', N'PICOTA', N'PUCACACA', N'SAN MARTIN', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-SAM', N'22', 231, 228, -6.8489, -76.3411, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1785, N'210906', N'220706', N'22', N'SAN MARTIN', N'2207', N'PICOTA', N'SAN CRISTOBAL', N'SAN MARTIN', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-SAM', N'22', 30, 238, -6.9919, -76.4178, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1786, N'210907', N'220707', N'22', N'SAN MARTIN', N'2207', N'PICOTA', N'SAN HILARION', N'SAN MARTIN', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-SAM', N'22', 97, 230, -7.0039, -76.4394, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1787, N'210910', N'220708', N'22', N'SAN MARTIN', N'2207', N'PICOTA', N'SHAMBOYACU', N'SAN MARTIN', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-SAM', N'22', 416, 289, -7.0242, -76.1328, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1788, N'210908', N'220709', N'22', N'SAN MARTIN', N'2207', N'PICOTA', N'TINGO DE PONASA', N'SAN MARTIN', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-SAM', N'22', 340, 244, -6.9361, -76.2539, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1789, N'210909', N'220710', N'22', N'SAN MARTIN', N'2207', N'PICOTA', N'TRES UNIDOS', N'SAN MARTIN', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-SAM', N'22', 247, 237, -6.8058, -76.2322, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1790, N'210501', N'220801', N'22', N'SAN MARTIN', N'2208', N'RIOJA', N'RIOJA', N'SAN MARTIN', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-SAM', N'22', 186, 850, -6.0625, -77.1683, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1791, N'210509', N'220802', N'22', N'SAN MARTIN', N'2208', N'RIOJA', N'AWAJUN', N'SAN MARTIN', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-SAM', N'22', 481, 888, -5.8161, -77.3828, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1792, N'210506', N'220803', N'22', N'SAN MARTIN', N'2208', N'RIOJA', N'ELIAS SOPLIN VARGAS', N'SAN MARTIN', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-SAM', N'22', 200, 853, -5.9872, -77.2781, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1793, N'210505', N'220804', N'22', N'SAN MARTIN', N'2208', N'RIOJA', N'NUEVA CAJAMARCA', N'SAN MARTIN', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-SAM', N'22', 330, 869, -5.9361, -77.3069, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1794, N'210508', N'220805', N'22', N'SAN MARTIN', N'2208', N'RIOJA', N'PARDO MIGUEL', N'SAN MARTIN', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-SAM', N'22', 1132, 963, -5.7394, -77.5044, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1795, N'210502', N'220806', N'22', N'SAN MARTIN', N'2208', N'RIOJA', N'POSIC', N'SAN MARTIN', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-SAM', N'22', 55, 838, -6.0133, -77.1619, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1796, N'210507', N'220807', N'22', N'SAN MARTIN', N'2208', N'RIOJA', N'SAN FERNANDO', N'SAN MARTIN', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-SAM', N'22', 64, 828, -5.9019, -77.2694, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1797, N'210503', N'220808', N'22', N'SAN MARTIN', N'2208', N'RIOJA', N'YORONGOS', N'SAN MARTIN', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-SAM', N'22', 75, 883, -6.1386, -77.1442, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1798, N'210504', N'220809', N'22', N'SAN MARTIN', N'2208', N'RIOJA', N'YURACYACU', N'SAN MARTIN', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-SAM', N'22', 14, 812, -5.9311, -77.2264, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1799, N'210601', N'220901', N'22', N'SAN MARTIN', N'2209', N'SAN MARTIN', N'TARAPOTO', N'SAN MARTIN', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-SAM', N'22', 68, 342, -6.4894, -76.3603, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1800, N'210602', N'220902', N'22', N'SAN MARTIN', N'2209', N'SAN MARTIN', N'ALBERTO LEVEAU', N'SAN MARTIN', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-SAM', N'22', 268, 215, -6.6631, -76.2867, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1801, N'210604', N'220903', N'22', N'SAN MARTIN', N'2209', N'SAN MARTIN', N'CACATACHI', N'SAN MARTIN', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-SAM', N'22', 75, 309, -6.4619, -76.4514, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1802, N'210606', N'220904', N'22', N'SAN MARTIN', N'2209', N'SAN MARTIN', N'CHAZUTA', N'SAN MARTIN', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-SAM', N'22', 966, 189, -6.5736, -76.1378, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1803, N'210607', N'220905', N'22', N'SAN MARTIN', N'2209', N'SAN MARTIN', N'CHIPURANA', N'SAN MARTIN', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-SAM', N'22', 500, 152, -6.3542, -75.7414, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1804, N'210608', N'220906', N'22', N'SAN MARTIN', N'2209', N'SAN MARTIN', N'EL PORVENIR', N'SAN MARTIN', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-SAM', N'22', 483, 152, -6.2117, -75.8008, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1805, N'210609', N'220907', N'22', N'SAN MARTIN', N'2209', N'SAN MARTIN', N'HUIMBAYOC', N'SAN MARTIN', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-SAM', N'22', 1609, 181, -6.4178, -75.7681, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1806, N'210610', N'220908', N'22', N'SAN MARTIN', N'2209', N'SAN MARTIN', N'JUAN GUERRA', N'SAN MARTIN', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-SAM', N'22', 197, 207, -6.5842, -76.3308, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1807, N'210621', N'220909', N'22', N'SAN MARTIN', N'2209', N'SAN MARTIN', N'LA BANDA DE SHILCAYO', N'SAN MARTIN', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-SAM', N'22', 287, 418, -6.49, -76.3406, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1808, N'210611', N'220910', N'22', N'SAN MARTIN', N'2209', N'SAN MARTIN', N'MORALES', N'SAN MARTIN', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-SAM', N'22', 44, 290, -6.4792, -76.3831, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1809, N'210612', N'220911', N'22', N'SAN MARTIN', N'2209', N'SAN MARTIN', N'PAPAPLAYA', N'SAN MARTIN', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-SAM', N'22', 686, 149, -6.2453, -75.7906, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1810, N'210616', N'220912', N'22', N'SAN MARTIN', N'2209', N'SAN MARTIN', N'SAN ANTONIO', N'SAN MARTIN', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-SAM', N'22', 93, 499, -6.4094, -76.4067, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1811, N'210619', N'220913', N'22', N'SAN MARTIN', N'2209', N'SAN MARTIN', N'SAUCE', N'SAN MARTIN', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-SAM', N'22', 103, 622, -6.6906, -76.2167, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1812, N'210620', N'220914', N'22', N'SAN MARTIN', N'2209', N'SAN MARTIN', N'SHAPAJA', N'SAN MARTIN', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-SAM', N'22', 270, 214, -6.5797, -76.2619, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1813, N'210801', N'221001', N'22', N'SAN MARTIN', N'2210', N'TOCACHE', N'TOCACHE', N'SAN MARTIN', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-SAM', N'22', 1142, 519, -8.1883, -76.5094, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1814, N'210802', N'221002', N'22', N'SAN MARTIN', N'2210', N'TOCACHE', N'NUEVO PROGRESO', N'SAN MARTIN', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-SAM', N'22', 861, 512, -8.4506, -76.3264, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1815, N'210803', N'221003', N'22', N'SAN MARTIN', N'2210', N'TOCACHE', N'POLVORA', N'SAN MARTIN', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-SAM', N'22', 2174, 543, -7.9078, -76.6678, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1816, N'210804', N'221004', N'22', N'SAN MARTIN', N'2210', N'TOCACHE', N'SHUNTE', N'SAN MARTIN', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-SAM', N'22', 964, 1015, -8.3517, -76.7297, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1817, N'210805', N'221005', N'22', N'SAN MARTIN', N'2210', N'TOCACHE', N'UCHIZA', N'SAN MARTIN', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-SAM', N'22', 724, 566, -8.4583, -76.4617, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1818, N'220101', N'230101', N'23', N'TACNA', N'2301', N'TACNA', N'TACNA', N'TACNA', N'SUR', N'MACROREGION SUR', N'PE-TAC', N'23', 1878, 583, -18.0019, -70.2519, N'SI')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1819, N'220111', N'230102', N'23', N'TACNA', N'2301', N'TACNA', N'ALTO DE LA ALIANZA', N'TACNA', N'SUR', N'MACROREGION SUR', N'PE-TAC', N'23', 371, 603, -17.9931, -70.2478, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1820, N'220102', N'230103', N'23', N'TACNA', N'2301', N'TACNA', N'CALANA', N'TACNA', N'SUR', N'MACROREGION SUR', N'PE-TAC', N'23', 108, 881, -17.9433, -70.1883, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1821, N'220112', N'230104', N'23', N'TACNA', N'2301', N'TACNA', N'CIUDAD NUEVA', N'TACNA', N'SUR', N'MACROREGION SUR', N'PE-TAC', N'23', 173, 695, -17.9819, -70.2381, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1822, N'220104', N'230105', N'23', N'TACNA', N'2301', N'TACNA', N'INCLAN', N'TACNA', N'SUR', N'MACROREGION SUR', N'PE-TAC', N'23', 1415, 519, -17.7939, -70.4947, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1823, N'220107', N'230106', N'23', N'TACNA', N'2301', N'TACNA', N'PACHIA', N'TACNA', N'SUR', N'MACROREGION SUR', N'PE-TAC', N'23', 604, 1087, -17.8964, -70.1539, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1824, N'220108', N'230107', N'23', N'TACNA', N'2301', N'TACNA', N'PALCA', N'TACNA', N'SUR', N'MACROREGION SUR', N'PE-TAC', N'23', 1418, 2939, -17.7783, -69.9597, N'SI')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1825, N'220109', N'230108', N'23', N'TACNA', N'2301', N'TACNA', N'POCOLLAY', N'TACNA', N'SUR', N'MACROREGION SUR', N'PE-TAC', N'23', 266, 690, -17.9967, -70.2258, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1826, N'220110', N'230109', N'23', N'TACNA', N'2301', N'TACNA', N'SAMA', N'TACNA', N'SUR', N'MACROREGION SUR', N'PE-TAC', N'23', 1116, 397, -17.8625, -70.56, N'SI')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1827, N'220113', N'230110', N'23', N'TACNA', N'2301', N'TACNA', N'CORONEL GREGORIO ALBARRACIN LANCHIP', N'TACNA', N'SUR', N'MACROREGION SUR', N'PE-TAC', N'23', 188, 562, -18.0431, -70.2517, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1828, N'220114', N'230111', N'23', N'TACNA', N'2301', N'TACNA', N'LA YARADA LOS PALOS', N'TACNA', N'SUR', N'MACROREGION SUR', N'PE-TAC', N'23', 529, 42, -18.2861, -70.4392, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1829, N'220401', N'230201', N'23', N'TACNA', N'2302', N'CANDARAVE', N'CANDARAVE', N'TACNA', N'SUR', N'MACROREGION SUR', N'PE-TAC', N'23', 1111, 3427, -17.2681, -70.2503, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1830, N'220402', N'230202', N'23', N'TACNA', N'2302', N'CANDARAVE', N'CAIRANI', N'TACNA', N'SUR', N'MACROREGION SUR', N'PE-TAC', N'23', 371, 3389, -17.2853, -70.3636, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1831, N'220406', N'230203', N'23', N'TACNA', N'2302', N'CANDARAVE', N'CAMILACA', N'TACNA', N'SUR', N'MACROREGION SUR', N'PE-TAC', N'23', 519, 3853, -17.2425, -70.3881, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1832, N'220403', N'230204', N'23', N'TACNA', N'2302', N'CANDARAVE', N'CURIBAYA', N'TACNA', N'SUR', N'MACROREGION SUR', N'PE-TAC', N'23', 127, 2412, -17.3814, -70.3347, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1833, N'220404', N'230205', N'23', N'TACNA', N'2302', N'CANDARAVE', N'HUANUARA', N'TACNA', N'SUR', N'MACROREGION SUR', N'PE-TAC', N'23', 96, 3226, -17.3136, -70.3225, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1834, N'220405', N'230206', N'23', N'TACNA', N'2302', N'CANDARAVE', N'QUILAHUANI', N'TACNA', N'SUR', N'MACROREGION SUR', N'PE-TAC', N'23', 38, 3205, -17.3183, -70.2586, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1835, N'220301', N'230301', N'23', N'TACNA', N'2303', N'JORGE BASADRE', N'LOCUMBA', N'TACNA', N'SUR', N'MACROREGION SUR', N'PE-TAC', N'23', 969, 589, -17.6139, -70.7628, N'SI')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1836, N'220303', N'230302', N'23', N'TACNA', N'2303', N'JORGE BASADRE', N'ILABAYA', N'TACNA', N'SUR', N'MACROREGION SUR', N'PE-TAC', N'23', 1111, 1387, -17.4181, -70.5131, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1837, N'220302', N'230303', N'23', N'TACNA', N'2303', N'JORGE BASADRE', N'ITE', N'TACNA', N'SUR', N'MACROREGION SUR', N'PE-TAC', N'23', 848, 160, -17.8617, -70.9658, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1838, N'220201', N'230401', N'23', N'TACNA', N'2304', N'TARATA', N'TARATA', N'TACNA', N'SUR', N'MACROREGION SUR', N'PE-TAC', N'23', 864, 3077, -17.475, -70.0319, N'SI')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1839, N'220205', N'230402', N'23', N'TACNA', N'2304', N'TARATA', N'CHUCATAMANI', N'TACNA', N'SUR', N'MACROREGION SUR', N'PE-TAC', N'23', 372, 2352, -17.4806, -70.1231, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1840, N'220206', N'230403', N'23', N'TACNA', N'2304', N'TARATA', N'ESTIQUE', N'TACNA', N'SUR', N'MACROREGION SUR', N'PE-TAC', N'23', 313, 3149, -17.5419, -70.0183, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1841, N'220207', N'230404', N'23', N'TACNA', N'2304', N'TARATA', N'ESTIQUE-PAMPA', N'TACNA', N'SUR', N'MACROREGION SUR', N'PE-TAC', N'23', 186, 3064, -17.5386, -70.0314, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1842, N'220210', N'230405', N'23', N'TACNA', N'2304', N'TARATA', N'SITAJARA', N'TACNA', N'SUR', N'MACROREGION SUR', N'PE-TAC', N'23', 251, 3163, -17.3753, -70.1339, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1843, N'220211', N'230406', N'23', N'TACNA', N'2304', N'TARATA', N'SUSAPAYA', N'TACNA', N'SUR', N'MACROREGION SUR', N'PE-TAC', N'23', 373, 3462, -17.3481, -70.1336, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1844, N'220212', N'230407', N'23', N'TACNA', N'2304', N'TARATA', N'TARUCACHI', N'TACNA', N'SUR', N'MACROREGION SUR', N'PE-TAC', N'23', 113, 3054, -17.5258, -70.0317, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1845, N'220213', N'230408', N'23', N'TACNA', N'2304', N'TARATA', N'TICACO', N'TACNA', N'SUR', N'MACROREGION SUR', N'PE-TAC', N'23', 347, 3272, -17.4472, -70.0467, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1846, N'230101', N'240101', N'24', N'TUMBES', N'2401', N'TUMBES', N'TUMBES', N'TUMBES', N'NORTE', N'MACROREGION NORTE', N'PE-TUM', N'24', 158, 9, -3.5711, -80.4592, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1847, N'230102', N'240102', N'24', N'TUMBES', N'2401', N'TUMBES', N'CORRALES', N'TUMBES', N'NORTE', N'MACROREGION NORTE', N'PE-TUM', N'24', 132, 27, -3.6014, -80.4806, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1848, N'230103', N'240103', N'24', N'TUMBES', N'2401', N'TUMBES', N'LA CRUZ', N'TUMBES', N'NORTE', N'MACROREGION NORTE', N'PE-TUM', N'24', 65, 10, -3.6372, -80.59, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1849, N'230104', N'240104', N'24', N'TUMBES', N'2401', N'TUMBES', N'PAMPAS DE HOSPITAL', N'TUMBES', N'NORTE', N'MACROREGION NORTE', N'PE-TUM', N'24', 728, 28, -3.6933, -80.4392, N'SI')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1850, N'230105', N'240105', N'24', N'TUMBES', N'2401', N'TUMBES', N'SAN JACINTO', N'TUMBES', N'NORTE', N'MACROREGION NORTE', N'PE-TUM', N'24', 599, 23, -3.6408, -80.4453, N'SI')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1851, N'230106', N'240106', N'24', N'TUMBES', N'2401', N'TUMBES', N'SAN JUAN DE LA VIRGEN', N'TUMBES', N'NORTE', N'MACROREGION NORTE', N'PE-TUM', N'24', 119, 26, -3.6278, -80.4336, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1852, N'230201', N'240201', N'24', N'TUMBES', N'2402', N'CONTRALMIRANTE VILLAR', N'ZORRITOS', N'TUMBES', N'NORTE', N'MACROREGION NORTE', N'PE-TUM', N'24', 645, 11, -3.6775, -80.6681, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1853, N'230202', N'240202', N'24', N'TUMBES', N'2402', N'CONTRALMIRANTE VILLAR', N'CASITAS', N'TUMBES', N'NORTE', N'MACROREGION NORTE', N'PE-TUM', N'24', 855, 137, -3.9422, -80.6511, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1854, N'230203', N'240203', N'24', N'TUMBES', N'2402', N'CONTRALMIRANTE VILLAR', N'CANOAS DE PUNTA SAL', N'TUMBES', N'NORTE', N'MACROREGION NORTE', N'PE-TUM', N'24', 623, 66, -3.9506, -80.94, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1855, N'230301', N'240301', N'24', N'TUMBES', N'2403', N'ZARUMILLA', N'ZARUMILLA', N'TUMBES', N'NORTE', N'MACROREGION NORTE', N'PE-TUM', N'24', 113, 15, -3.5011, -80.2756, N'SI')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1856, N'230304', N'240302', N'24', N'TUMBES', N'2403', N'ZARUMILLA', N'AGUAS VERDES', N'TUMBES', N'NORTE', N'MACROREGION NORTE', N'PE-TUM', N'24', 46, 13, -3.4817, -80.245, N'SI')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1857, N'230302', N'240303', N'24', N'TUMBES', N'2403', N'ZARUMILLA', N'MATAPALO', N'TUMBES', N'NORTE', N'MACROREGION NORTE', N'PE-TUM', N'24', 392, 69, -3.6822, -80.1997, N'SI')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1858, N'230303', N'240304', N'24', N'TUMBES', N'2403', N'ZARUMILLA', N'PAPAYAL', N'TUMBES', N'NORTE', N'MACROREGION NORTE', N'PE-TUM', N'24', 194, 36, -3.5714, -80.235, N'SI')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1859, N'250101', N'250101', N'25', N'UCAYALI', N'2501', N'CORONEL PORTILLO', N'CALLERIA', N'UCAYALI', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-UCA', N'25', 10485, 162, -8.3681, -74.5433, N'SI')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1860, N'250104', N'250102', N'25', N'UCAYALI', N'2501', N'CORONEL PORTILLO', N'CAMPOVERDE', N'UCAYALI', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-UCA', N'25', 1194, 203, -8.4719, -74.8053, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1861, N'250105', N'250103', N'25', N'UCAYALI', N'2501', N'CORONEL PORTILLO', N'IPARIA', N'UCAYALI', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-UCA', N'25', 8029, 170, -9.3061, -74.4356, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1862, N'250103', N'250104', N'25', N'UCAYALI', N'2501', N'CORONEL PORTILLO', N'MASISEA', N'UCAYALI', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-UCA', N'25', 14102, 150, -8.6047, -74.3061, N'SI')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1863, N'250102', N'250105', N'25', N'UCAYALI', N'2501', N'CORONEL PORTILLO', N'YARINACOCHA', N'UCAYALI', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-UCA', N'25', 596, 131, -8.3556, -74.5758, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1864, N'250106', N'250106', N'25', N'UCAYALI', N'2501', N'CORONEL PORTILLO', N'NUEVA REQUENA', N'UCAYALI', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-UCA', N'25', 1858, 183, -8.3206, -74.8514, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1865, N'250107', N'250107', N'25', N'UCAYALI', N'2501', N'CORONEL PORTILLO', N'MANANTAY', N'UCAYALI', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-UCA', N'25', 580, 165, -8.4003, -74.5414, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1866, N'250301', N'250201', N'25', N'UCAYALI', N'2502', N'ATALAYA', N'RAYMONDI', N'UCAYALI', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-UCA', N'25', 14505, 256, -10.7297, -73.7553, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1867, N'250304', N'250202', N'25', N'UCAYALI', N'2502', N'ATALAYA', N'SEPAHUA', N'UCAYALI', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-UCA', N'25', 8224, 277, -11.1372, -73.0456, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1868, N'250302', N'250203', N'25', N'UCAYALI', N'2502', N'ATALAYA', N'TAHUANIA', N'UCAYALI', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-UCA', N'25', 7010, 197, -10.0306, -73.9564, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1869, N'250303', N'250204', N'25', N'UCAYALI', N'2502', N'ATALAYA', N'YURUA', N'UCAYALI', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-UCA', N'25', 9176, 240, -9.5314, -72.76, N'SI')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1870, N'250201', N'250301', N'25', N'UCAYALI', N'2503', N'PADRE ABAD', N'PADRE ABAD', N'UCAYALI', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-UCA', N'25', 4689, 275, -9.0336, -75.5075, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1871, N'250202', N'250302', N'25', N'UCAYALI', N'2503', N'PADRE ABAD', N'IRAZOLA', N'UCAYALI', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-UCA', N'25', 999, 228, -8.8286, -75.2133, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1872, N'250203', N'250303', N'25', N'UCAYALI', N'2503', N'PADRE ABAD', N'CURIMANA', N'UCAYALI', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-UCA', N'25', 2134, 181, -8.4333, -75.1478, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1873, N'250204', N'250304', N'25', N'UCAYALI', N'2503', N'PADRE ABAD', N'NESHUYA', N'UCAYALI', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-UCA', N'25', 580, 193, -8.64, -74.9644, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1874, N'250205', N'250305', N'25', N'UCAYALI', N'2503', N'PADRE ABAD', N'ALEXANDER VON HUMBOLDT', N'UCAYALI', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-UCA', N'25', 191, 237, -8.8275, -75.0508, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1875, N'250401', N'250401', N'25', N'UCAYALI', N'2504', N'PURUS', N'PURUS', N'UCAYALI', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-UCA', N'25', 17848, 228, -9.7722, -70.7097, N'SI')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1876, N'050314', N'050413', N'05', N'AYACUCHO', N'0504', N'HUANTA', N'PUTIS', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', NULL, NULL, NULL, NULL, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1877, N'050412', N'050512', N'05', N'AYACUCHO', N'0505', N'LA MAR', N'UNION PROGRESO', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', NULL, NULL, NULL, NULL, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1878, N'050415', N'050513', N'05', N'AYACUCHO', N'0505', N'LA MAR', N'RIO MAGDALENA', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', NULL, NULL, NULL, NULL, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1879, N'050414', N'050514', N'05', N'AYACUCHO', N'0505', N'LA MAR', N'NINABAMBA', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', NULL, NULL, NULL, NULL, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1880, N'050413', N'050515', N'05', N'AYACUCHO', N'0505', N'LA MAR', N'PATIBAMBA', N'AYACUCHO', N'CENTRO', N'MACROREGION CENTRO', N'PE-AYA', N'05', NULL, NULL, NULL, NULL, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1881, N'250207', N'250306', N'25', N'UCAYALI', N'2503', N'PADRE ABAD', N'HUIPOCA', N'UCAYALI', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-UCA', N'25', NULL, NULL, NULL, NULL, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1882, N'250206', N'250307', N'25', N'UCAYALI', N'2503', N'PADRE ABAD', N'BOQUERON', N'UCAYALI', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-UCA', N'25', NULL, NULL, NULL, NULL, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1883, N'170107', N'180199', N'18', N'MOQUEGUA', N'1801', N'MARISCAL NIETO', N'SAN ANTONIO', N'MOQUEGUA', N'SUR', N'MACROREGION SUR', N'PE-MOQ', N'18', NULL, NULL, NULL, NULL, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1884, N'080533', N'090724', N'09', N'HUANCAVELICA', N'0907', N'TAYACAJA', N'LAMBRAS', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', NULL, NULL, NULL, NULL, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1885, N'080534', N'090725', N'09', N'HUANCAVELICA', N'0907', N'TAYACAJA', N'COCHABAMBA', N'HUANCAVELICA', N'CENTRO', N'MACROREGION CENTRO', N'PE-HUV', N'09', NULL, NULL, NULL, NULL, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1886, NULL, N'150144', N'15', N'LIMA', N'1501', N'LIMA', N'SANTA MARIA DE HUACHIPA', N'LIMA PROVINCIA', N'LIMA METROPOLITANA', N'LIMA Y CALLAO', N'PE-LMA', N'26', NULL, NULL, NULL, NULL, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1887, N'070916', N'080915', N'08', N'CUSCO', N'0809', N'LA CONVENCION', N'KUMPIRUSHIATO', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', NULL, NULL, NULL, NULL, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1888, N'070917', N'080916', N'08', N'CUSCO', N'0809', N'LA CONVENCION', N'CIELO PUNCO', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', NULL, NULL, NULL, NULL, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1889, N'070918', N'080917', N'08', N'CUSCO', N'0809', N'LA CONVENCION', N'MANITEA', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', NULL, NULL, NULL, NULL, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1890, N'070919', N'080918', N'08', N'CUSCO', N'0809', N'LA CONVENCION', N'UNION ASHÁNINKA', N'CUSCO', N'SUR', N'MACROREGION SUR', N'PE-CUS', N'08', NULL, NULL, NULL, NULL, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1891, N'030712', N'030612', N'03', N'APURIMAC', N'0306', N'CHINCHEROS', N'AHUAYRO', N'APURIMAC', N'SUR', N'MACROREGION CENTRO', N'PE-APU', N'03', NULL, NULL, NULL, NULL, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1892, N'210806', N'221006', N'22', N'SAN MARTIN', N'2210', N'TOCACHE', N'SANTA LUCIA', N'SAN MARTIN', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-SAM', N'22', NULL, NULL, NULL, NULL, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1893, N'150107', N'160109', N'16', N'LORETO', N'1601', N'MAYNAS', N'PUTUMAYO', N'LORETO', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-LOR', N'16', NULL, NULL, NULL, NULL, N'NO')
GO
INSERT [dbo].[UBIGEO] ([ubigeo_id], [ubigeo_reniec], [ubigeo_inei], [departamento_inei], [departamento], [provincia_inei], [provincia], [distrito], [region], [macroregion_inei], [macroregion_minsa], [iso_3166_2], [fips], [superficie], [altitud], [latitud], [longitud], [Frontera]) VALUES (1894, N'150114', N'160114', N'16', N'LORETO', N'1601', N'MAYNAS', N'TENIENTE MANUEL CLAVERO', N'LORETO', N'ORIENTE', N'MACROREGION ORIENTE', N'PE-LOR', N'16', NULL, NULL, NULL, NULL, N'NO')
GO
ALTER TABLE [dbo].[ENTIDAD] ADD  CONSTRAINT [DF__ENTIDAD__estado__76969D2E]  DEFAULT ((1)) FOR [estado]
GO
ALTER TABLE [dbo].[ENTIDAD] ADD  CONSTRAINT [DF__ENTIDAD__usuario__778AC167]  DEFAULT ('sys') FOR [usuario_reg]
GO
ALTER TABLE [dbo].[ENTIDAD] ADD  CONSTRAINT [DF__ENTIDAD__fecha_r__787EE5A0]  DEFAULT (getdate()) FOR [fecha_reg]
GO
ALTER TABLE [dbo].[ENTIDADGRUPO] ADD  DEFAULT ((1)) FOR [estado]
GO
ALTER TABLE [dbo].[ENTIDADGRUPO] ADD  DEFAULT ('sys') FOR [usuario_reg]
GO
ALTER TABLE [dbo].[ENTIDADGRUPO] ADD  DEFAULT (getdate()) FOR [fecha_reg]
GO
ALTER TABLE [dbo].[ENTIDADSECTOR] ADD  CONSTRAINT [DF__ENTIDADSE__estad__4CA06362]  DEFAULT ((1)) FOR [estado]
GO
ALTER TABLE [dbo].[ENTIDADSECTOR] ADD  CONSTRAINT [DF__ENTIDADSE__usuar__4D94879B]  DEFAULT ('sys') FOR [usuario_reg]
GO
ALTER TABLE [dbo].[ENTIDADSECTOR] ADD  CONSTRAINT [DF__ENTIDADSE__fecha__4E88ABD4]  DEFAULT (getdate()) FOR [fecha_reg]
GO
ALTER TABLE [dbo].[MODALIDADINTEGRIDAD] ADD  DEFAULT ((1)) FOR [estado]
GO
ALTER TABLE [dbo].[MODALIDADINTEGRIDAD] ADD  DEFAULT ('sys') FOR [usuario_reg]
GO
ALTER TABLE [dbo].[MODALIDADINTEGRIDAD] ADD  DEFAULT (getdate()) FOR [fecha_reg]
GO
ALTER TABLE [dbo].[PERSONA] ADD  DEFAULT ((1)) FOR [estado]
GO
ALTER TABLE [dbo].[PERSONA] ADD  DEFAULT ('sys') FOR [usuario_reg]
GO
ALTER TABLE [dbo].[PERSONA] ADD  DEFAULT (getdate()) FOR [fecha_reg]
GO
ALTER TABLE [dbo].[TIPOSECTOR] ADD  DEFAULT ((1)) FOR [estado]
GO
ALTER TABLE [dbo].[TIPOSECTOR] ADD  DEFAULT ('sys') FOR [usuario_reg]
GO
ALTER TABLE [dbo].[TIPOSECTOR] ADD  DEFAULT (getdate()) FOR [fecha_reg]
GO
ALTER TABLE [dbo].[ENTIDAD]  WITH CHECK ADD  CONSTRAINT [FK__ENTIDAD__entidad__72C60C4A] FOREIGN KEY([entidadgrupo_id])
REFERENCES [dbo].[ENTIDADGRUPO] ([entidadgrupo_id])
GO
ALTER TABLE [dbo].[ENTIDAD] CHECK CONSTRAINT [FK__ENTIDAD__entidad__72C60C4A]
GO
ALTER TABLE [dbo].[ENTIDAD]  WITH CHECK ADD  CONSTRAINT [FK__ENTIDAD__entidad__73BA3083] FOREIGN KEY([entidadsector_id])
REFERENCES [dbo].[ENTIDADSECTOR] ([entidadsector_id])
GO
ALTER TABLE [dbo].[ENTIDAD] CHECK CONSTRAINT [FK__ENTIDAD__entidad__73BA3083]
GO
ALTER TABLE [dbo].[ENTIDAD]  WITH CHECK ADD  CONSTRAINT [FK__ENTIDAD__modalid__74AE54BC] FOREIGN KEY([modalidadintegridad_id])
REFERENCES [dbo].[MODALIDADINTEGRIDAD] ([modalidadintegridad_id])
GO
ALTER TABLE [dbo].[ENTIDAD] CHECK CONSTRAINT [FK__ENTIDAD__modalid__74AE54BC]
GO
ALTER TABLE [dbo].[ENTIDAD]  WITH CHECK ADD  CONSTRAINT [FK__ENTIDAD__ubigeo___75A278F5] FOREIGN KEY([ubigeo_id])
REFERENCES [dbo].[UBIGEO] ([ubigeo_id])
GO
ALTER TABLE [dbo].[ENTIDAD] CHECK CONSTRAINT [FK__ENTIDAD__ubigeo___75A278F5]
GO
ALTER TABLE [dbo].[ENTIDADSECTOR]  WITH CHECK ADD  CONSTRAINT [FK_ENTIDADSECTOR_TIPOSECTOR] FOREIGN KEY([tiposector_id])
REFERENCES [dbo].[TIPOSECTOR] ([tiposector_id])
GO
ALTER TABLE [dbo].[ENTIDADSECTOR] CHECK CONSTRAINT [FK_ENTIDADSECTOR_TIPOSECTOR]
GO
/****** Object:  StoredProcedure [dbo].[USP_DEL_ENTIDAD]    Script Date: 21/06/2024 22:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE     PROCEDURE [dbo].[USP_DEL_ENTIDAD](
	@entidad_id int = NULL,
	@usuario_act varchar(20) = NULL,
	@error BIT = NULL OUTPUT,
	@message NVARCHAR(500) = NULL OUTPUT
)
AS
BEGIN
	SET @error = 0;

	-- validamos si existe la entidad que desea eliminar
	IF NOT EXISTS(SELECT TOP(1) t1.* FROM [dbo].[ENTIDAD] AS t1 WITH(NOLOCK) WHERE t1.entidad_id = @entidad_id) 
	BEGIN
		SET @error = 1;
		SET @message = 'La Entidad que desea Eliminar no existe';
	END
	
	IF(@error = 0)
	BEGIN

		--Se elimina el perfil actualizando sus datos de auditoria

		UPDATE 
			[dbo].[ENTIDAD]
		SET 
			estado = 0,
			usuario_act = @usuario_act
		WHERE
			entidad_id = @entidad_id

		-- setemos el mensaje de salida
		set @message = 'Información eliminada satisfactoriamente';

	END


END

GO
/****** Object:  StoredProcedure [dbo].[USP_DEL_ENTIDADGRUPO]    Script Date: 21/06/2024 22:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create       PROCEDURE [dbo].[USP_DEL_ENTIDADGRUPO](
	@entidadgrupo_id int = NULL,
	@usuario_act varchar(20) = NULL,
	@error BIT = NULL OUTPUT,
	@message NVARCHAR(500) = NULL OUTPUT
)
AS
BEGIN
	SET @error = 0;

	-- validamos si existe el perfil que desea eliminar
	IF NOT EXISTS(SELECT TOP(1) t1.* FROM [dbo].[ENTIDADGRUPO] AS t1 WITH(NOLOCK) WHERE t1.entidadgrupo_id = @entidadgrupo_id) 
	BEGIN
		SET @error = 1;
		SET @message = 'El grupo que desea Eliminar no existe';
	END
	
	IF(@error = 0)
	BEGIN

		--Se elimina el perfil actualizando sus datos de auditoria

		UPDATE 
		[dbo].[ENTIDADGRUPO]
		SET 
		estado = 0,
		usuario_act = @usuario_act
		WHERE
		entidadgrupo_id = @entidadgrupo_id

		-- setemos el mensaje de salida
		set @message = 'Información eliminada satisfactoriamente';

	END


END

GO
/****** Object:  StoredProcedure [dbo].[USP_DEL_PERSONA]    Script Date: 21/06/2024 22:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[USP_DEL_PERSONA](
	@persona_id int = NULL,
	@usuario_act varchar(20) = NULL,
	@error BIT = NULL OUTPUT,
	@message NVARCHAR(500) = NULL OUTPUT
)
AS
BEGIN
	SET @error = 0;

	-- validamos si existe la persona que desea eliminar
	IF NOT EXISTS(SELECT TOP(1) t1.* FROM [dbo].[PERSONA] AS t1 WITH(NOLOCK) WHERE t1.persona_id = @persona_id) 
	BEGIN
		SET @error = 1;
		SET @message = 'La Persona que desea Eliminar no existe';
	END
	
	IF(@error = 0)
	BEGIN

		--Se elimina el perfil actualizando sus datos de auditoria

		UPDATE 
			[dbo].[PERSONA]
		SET 
			estado = 0,
			usuario_act = @usuario_act
		WHERE
			persona_id = @persona_id

		-- setemos el mensaje de salida
		set @message = 'Información eliminada satisfactoriamente';

	END


END

GO
/****** Object:  StoredProcedure [dbo].[USP_GET_ENTIDAD]    Script Date: 21/06/2024 22:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE         PROCEDURE [dbo].[USP_GET_ENTIDAD](
	@entidad_id INT,
	@error BIT = NULL OUTPUT,
	@message NVARCHAR(500) = NULL OUTPUT
)
AS
BEGIN

	set @error = 0

	-- validamos si existe la persona que desea modificar
	IF NOT EXISTS(SELECT TOP(1) t1.* FROM [dbo].[ENTIDAD] AS t1 WITH(NOLOCK) WHERE t1.entidad_id = @entidad_id) 
	BEGIN
		SET @error = 1;
		SET @message = 'La entidad que desea consultar no existe';
	END
	
	IF(@error = 0)
	BEGIN
		SELECT 
			  T1.[entidad_id]
			, T1.[entidadgrupo_id]
			, T1.[entidadsector_id]
			, T1.[modalidadintegridad_id]
			, T1.[ubigeo_id]
			, T1.[numero_ruc]
			, T1.[codigo]
			, T1.[acronimo]
			, T1.[nombre]
			, T1.[estado]
			, T1.[usuario_reg]
			, T1.[fecha_reg]
			, T1.[usuario_act]
			, T1.[fecha_act]
			, T2.[codigo]				as	entidadgrupo_codigo
			, T2.[descripcion]			as	entidadgrupo_descripcion
			, T2.[abreviatura]			as	entidadgrupo_abreviatura
			, T3.[codigo]				as	entidadsector_codigo
			, T3.[descripcion]			as	entidadsector_descripcion
			, T3.[abreviatura]			as	entidadsector_abreviatura
			, T4.[codigo]				as	modalidadintegridad_codigo
			, T4.[descripcion]			as	modalidadintegridad_descripcion
			, T4.[abreviatura]			as	modalidadintegridad_abreviatura
			, T5.[departamento_inei]	as	ubigeo_departamento_inei
			, T5.[departamento]			as	ubigeo_departamento
			, T5.[provincia_inei]		as	ubigeo_provincia_inei
			, T5.[provincia]			as	ubigeo_provincia
			, T5.[distrito]				as	ubigeo_distrito
	  FROM 
				   [dbo].[ENTIDAD]				T1 WITH(NOLOCK)
		INNER JOIN [dbo].ENTIDADGRUPO			T2 WITH(NOLOCK) ON T1.entidadgrupo_id			= T2.entidadgrupo_id
		INNER JOIN [dbo].ENTIDADSECTOR			T3 WITH(NOLOCK) ON T1.entidadsector_id			= T3.entidadsector_id
		INNER JOIN [dbo].MODALIDADINTEGRIDAD	T4 WITH(NOLOCK) ON T1.modalidadintegridad_id	= T4.modalidadintegridad_id
		INNER JOIN [dbo].UBIGEO					T5 WITH(NOLOCK) ON T1.ubigeo_id					= T5.ubigeo_id
	  WHERE
		T1.entidad_id = @entidad_id;

		set @message = 'Consulta exitosa';
	END


END

GO
/****** Object:  StoredProcedure [dbo].[USP_GET_ENTIDADGRUPO]    Script Date: 21/06/2024 22:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE     PROCEDURE [dbo].[USP_GET_ENTIDADGRUPO](
	@entidadgrupo_id INT,
	@error BIT = NULL OUTPUT,
	@message NVARCHAR(500) = NULL OUTPUT
)
AS
BEGIN

	set @error = 0

	-- validamos si existe el grupo que desea consultar
	IF NOT EXISTS(SELECT TOP(1) t1.* FROM [dbo].[ENTIDADGRUPO] AS t1 WITH(NOLOCK) WHERE t1.entidadgrupo_id = @entidadgrupo_id) 
	BEGIN
		SET @error = 1;
		SET @message = 'El grupo que desea consultar no existe';
	END
	
	IF(@error = 0)
	BEGIN
		SELECT
			 T1.entidadgrupo_id, 
			 T1.codigo, 
			 T1.abreviatura, 
			 T1.descripcion, 
			 T1.estado, 
			 T1.usuario_reg, 
			 T1.fecha_reg, 
			 T1.usuario_act, 
			 T1.fecha_act 
		FROM 
			[dbo].[ENTIDADGRUPO]  T1 WITH(NOLOCK)
		WHERE
			T1.entidadgrupo_id = @entidadgrupo_id;

		set @message = 'Consulta exitosa';
	END


END

GO
/****** Object:  StoredProcedure [dbo].[USP_GET_PERSONA]    Script Date: 21/06/2024 22:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE       PROCEDURE [dbo].[USP_GET_PERSONA](
	@persona_id INT,
	@error BIT = NULL OUTPUT,
	@message NVARCHAR(500) = NULL OUTPUT
)
AS
BEGIN

	set @error = 0

	-- validamos si existe la persona que desea modificar
	IF NOT EXISTS(SELECT TOP(1) t1.* FROM [dbo].[PERSONA] AS t1 WITH(NOLOCK) WHERE t1.persona_id = @persona_id) 
	BEGIN
		SET @error = 1;
		SET @message = 'La persona que desea consultar no existe';
	END
	
	IF(@error = 0)
	BEGIN
		SELECT
			 T1.persona_id, 
			 T1.nombres, 
			 T1.apellido_paterno, 
			 T1.apellido_materno, 
			 T1.numdocumento, 
			 T1.email, 
			 T1.telefono_movil, 
			 T1.estado, 
			 T1.usuario_reg, 
			 T1.fecha_reg, 
			 T1.usuario_act, 
			 T1.fecha_act
		FROM 
			[dbo].[PERSONA]  T1 WITH(NOLOCK)
		WHERE
			T1.persona_id = @persona_id;

		set @message = 'Consulta exitosa';
	END


END

GO
/****** Object:  StoredProcedure [dbo].[USP_INS_ENTIDAD]    Script Date: 21/06/2024 22:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[USP_INS_ENTIDAD]	
	@entidadgrupo_id int = null,
	@entidadsector_id int = null,
	@modalidadintegridad_id int = null,
	@ubigeo_id int = null,
	@numero_ruc varchar(11) = null,
	@codigo varchar(30) = null,
	@acronimo varchar(20) = null,
	@nombre varchar(250) = null,
	@usuario_reg varchar(20) = null,
	@entidad_id int = null OUTPUT,
	@error bit = null OUTPUT,
	@message nvarchar(500) = null OUTPUT
AS
BEGIN
	
	--Inicializa como false
	SET @error = 0;

	-- validamos si existe una entidad con el mismo numero de RUC
	IF EXISTS(SELECT TOP(1) t1.* FROM [dbo].ENTIDAD AS t1 WITH(NOLOCK) WHERE t1.ESTADO = 1 AND  TRIM(LOWER(@numero_ruc)) = TRIM(LOWER(t1.numero_ruc))) 
	BEGIN
		SET @error = 1;
		SET @message = 'Ya existe una entidad con el número de RUC: ' + TRIM(LOWER(@numero_ruc));
	END

	-- validamos si existe una entidad con el mismo codigo
	IF EXISTS(SELECT TOP(1) t1.* FROM [dbo].ENTIDAD AS t1 WITH(NOLOCK) WHERE t1.ESTADO = 1 AND  TRIM(LOWER(@codigo)) = TRIM(LOWER(t1.codigo))) 
	BEGIN
		SET @error = 1;
		SET @message = 'Ya existe una entidad con el código: ' + TRIM(LOWER(@numero_ruc));
	END

	-- validamos si existe una entidad con el mismo acronimo/alias
	IF EXISTS(SELECT TOP(1) t1.* FROM [dbo].ENTIDAD AS t1 WITH(NOLOCK) WHERE t1.ESTADO = 1 AND  TRIM(LOWER(@acronimo)) = TRIM(LOWER(t1.acronimo))) 
	BEGIN
		SET @error = 1;
		SET @message = 'Ya existe una entidad con el acrónimo (alias): ' + TRIM(LOWER(@numero_ruc));
	END

	-- validamos si existe una entidad con el mismo nombre
	IF EXISTS(SELECT TOP(1) t1.* FROM [dbo].ENTIDAD AS t1 WITH(NOLOCK) WHERE t1.ESTADO = 1 AND  TRIM(LOWER(@nombre)) = TRIM(LOWER(t1.nombre))) 
	BEGIN
		SET @error = 1;
		SET @message = 'Ya existe una entidad con el nombre: ' + TRIM(LOWER(@numero_ruc));
	END
 
	IF(@error = 0) 
	BEGIN
	
		-- insertamos el grupo de la entidad
		INSERT INTO dbo.[ENTIDAD] (
			[entidadgrupo_id], 
			[entidadsector_id], 
			[modalidadintegridad_id], 
			[ubigeo_id], 
			[numero_ruc], 
			[codigo], 
			[acronimo], 
			[nombre], 
			[estado], 
			[usuario_reg],
			[fecha_reg]
		)
		VALUES (
			@entidadgrupo_id,
			@entidadsector_id,
			@modalidadintegridad_id,
			@ubigeo_id,
			TRIM(@numero_ruc),
			TRIM(@codigo),
			TRIM(@acronimo),
			TRIM(@nombre),
			1,
			case when @usuario_reg is null then 'sys' else @usuario_reg end,
			GETDATE()
		);

		-- seteamos el id de la entidad como variable de salida 
		set @entidad_id = @@IDENTITY;

		-- setemos el mensaje de salida
		set @message = 'Información registrada satisfactoriamente';

	END
END

GO
/****** Object:  StoredProcedure [dbo].[USP_INS_ENTIDADGRUPO]    Script Date: 21/06/2024 22:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE      PROCEDURE [dbo].[USP_INS_ENTIDADGRUPO]
	@abreviatura varchar(50) = NULL, 
	@descripcion varchar(150) = NULL,
	@usuario_reg varchar(20) = NULL,
	@error BIT = NULL OUTPUT,
	@message NVARCHAR(500) = NULL OUTPUT
AS
BEGIN
	
	--Inicializa como false
	SET @error = 0;

	-- validamos si existe un ENTIDADGRUPO con la misma descripcion
	IF EXISTS(SELECT TOP(1) t1.* FROM [dbo].[ENTIDADGRUPO] AS t1 WITH(NOLOCK) WHERE t1.ESTADO = 1 AND  TRIM(LOWER(@descripcion)) = TRIM(LOWER(t1.descripcion))) 
	BEGIN
		SET @error = 1;
		SET @message = 'Ya existe un grupo registrado con la descripción ' + TRIM(LOWER(@descripcion));
	END

	-- validamos si existe un ENTIDADGRUPO con la misma abreviatura
	IF EXISTS(SELECT TOP(1) t1.* FROM [dbo].[ENTIDADGRUPO] AS t1 WITH(NOLOCK) WHERE t1.ESTADO = 1 AND  TRIM(LOWER(@abreviatura)) = TRIM(LOWER(t1.abreviatura))) 
	BEGIN
		SET @error = 1;
		SET @message = 'Ya existe un grupo registrado con la abreviatura ' + TRIM(LOWER(@abreviatura));
	END
 
	IF(@error = 0) 
	BEGIN
	
		-- insertamos el grupo de la entidad
		INSERT INTO dbo.[ENTIDADGRUPO] (
			codigo,
			abreviatura,
			descripcion,
			usuario_reg,
			fecha_reg
		)
		VALUES (
			(select RIGHT('00000' + CAST(MAX(entidadgrupo_id) + 1 AS VARCHAR(5)), 5) from dbo.[ENTIDADGRUPO] with(nolock)),
			TRIM(@abreviatura),
			TRIM(@descripcion),
			case when @usuario_reg is null then 'sys' else @usuario_reg end,
			GETDATE()
		);

		-- setemos el mensaje de salida
		set @message = 'Información registrada satisfactoriamente';

	END
END

GO
/****** Object:  StoredProcedure [dbo].[USP_INS_PERSONA]    Script Date: 21/06/2024 22:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[USP_INS_PERSONA]
	@nombres varchar(100) = null,
	@apellido_paterno varchar(100) = null,
	@apellido_materno varchar(100) = null,
	@numdocumento varchar(20) = null,
	@email varchar(50) = null,
	@telefono_movil varchar(20) = null,
	@usuario_reg varchar(20) = null,
	@persona_id int = null OUTPUT,
	@error bit = null OUTPUT,
	@message nvarchar(500) = null OUTPUT
AS
BEGIN
	
	--Inicializa como false
	SET @error = 0;

	-- validamos si existe un persona con el mismo numero de documento
	IF EXISTS(SELECT TOP(1) t1.* FROM [dbo].[PERSONA] AS t1 WITH(NOLOCK) WHERE t1.ESTADO = 1 AND  TRIM(LOWER(@numdocumento)) = TRIM(LOWER(t1.numdocumento))) 
	BEGIN
		SET @error = 1;
		SET @message = 'Ya existe un numero de documento: ' + TRIM(LOWER(@numdocumento));
	END
 
	IF(@error = 0) 
	BEGIN
	
		-- insertamos el grupo de la entidad
		INSERT INTO dbo.[PERSONA] (
			nombres,
			apellido_paterno,
			apellido_materno,
			numdocumento,
			email,
			telefono_movil,
			usuario_reg,
			fecha_reg
		)
		VALUES (
			TRIM(@nombres),
			TRIM(@apellido_paterno),
			TRIM(@apellido_materno),
			TRIM(@numdocumento),
			TRIM(@email),
			TRIM(@telefono_movil),
			case when @usuario_reg is null then 'sys' else @usuario_reg end,
			GETDATE()
		);

		-- seteamos el id de la persona como variable de salida 
		set @persona_id = @@IDENTITY;

		-- setemos el mensaje de salida
		set @message = 'Información registrada satisfactoriamente';

	END
END

GO
/****** Object:  StoredProcedure [dbo].[USP_SEL_ENTIDAD]    Script Date: 21/06/2024 22:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE     PROCEDURE [dbo].[USP_SEL_ENTIDAD](
	@entidad_id int = null,
	@entidadgrupo_id int = null,
	@entidadsector_id int = null,
	@modalidadintegridad_id int = null,
	@ubigeo_id int = null,
	@filtro varchar(max) = null,
	@error BIT = NULL OUTPUT,
	@message NVARCHAR(500) = NULL OUTPUT
)
AS
BEGIN

	set @error = 0;

	SELECT
		  T1.[entidad_id]
		, T1.[entidadgrupo_id]
		, T1.[entidadsector_id]
		, T1.[modalidadintegridad_id]
		, T1.[ubigeo_id]
		, T1.[numero_ruc]
		, T1.[codigo]
		, T1.[acronimo]
		, T1.[nombre]
		, T1.[estado]
		, T1.[usuario_reg]
		, T1.[fecha_reg]
		, T1.[usuario_act]
		, T1.[fecha_act]
		, T2.[codigo]				as	entidadgrupo_codigo
		, T2.[descripcion]			as	entidadgrupo_descripcion
		, T2.[abreviatura]			as	entidadgrupo_abreviatura
		, T3.[codigo]				as	entidadsector_codigo
		, T3.[descripcion]			as	entidadsector_descripcion
		, T3.[abreviatura]			as	entidadsector_abreviatura
		, T4.[codigo]				as	modalidadintegridad_codigo
		, T4.[descripcion]			as	modalidadintegridad_descripcion
		, T4.[abreviatura]			as	modalidadintegridad_abreviatura
		, T5.[departamento_inei]	as	ubigeo_departamento_inei
		, T5.[departamento]			as	ubigeo_departamento
		, T5.[provincia_inei]		as	ubigeo_provincia_inei
		, T5.[provincia]			as	ubigeo_provincia
		, T5.[distrito]				as	ubigeo_distrito
	FROM 
				   [dbo].[ENTIDAD]				T1 WITH(NOLOCK)
		INNER JOIN [dbo].ENTIDADGRUPO			T2 WITH(NOLOCK) ON T1.entidadgrupo_id			= T2.entidadgrupo_id
		INNER JOIN [dbo].ENTIDADSECTOR			T3 WITH(NOLOCK) ON T1.entidadsector_id			= T3.entidadsector_id
		INNER JOIN [dbo].MODALIDADINTEGRIDAD	T4 WITH(NOLOCK) ON T1.modalidadintegridad_id	= T4.modalidadintegridad_id
		INNER JOIN [dbo].UBIGEO					T5 WITH(NOLOCK) ON T1.ubigeo_id					= T5.ubigeo_id
	WHERE
		T1.estado = 1 AND
		(@entidad_id IS NULL OR T1.entidad_id = @entidad_id) AND
		(@FILTRO IS NULL OR (RTRIM(LTRIM(ISNULL(T1.nombre, ''))) + ' ' +
			RTRIM(LTRIM(ISNULL(T1.acronimo, ''))) + ' ' +
			RTRIM(LTRIM(ISNULL(T1.codigo, ''))) + ' ' +
			--RTRIM(LTRIM(ISNULL(T2.descripcion, ''))) + ' ' +
			--RTRIM(LTRIM(ISNULL(T3.descripcion, ''))) + ' ' +
			--RTRIM(LTRIM(ISNULL(T4.descripcion, ''))) + ' ' +
			--RTRIM(LTRIM(ISNULL(T5.departamento, ''))) + ' ' +
			--RTRIM(LTRIM(ISNULL(T5.provincia, ''))) + ' ' +
			--RTRIM(LTRIM(ISNULL(T5.distrito, ''))) + ' ' +
			RTRIM(LTRIM(ISNULL(T1.numero_ruc, '')))) LIKE '%' + @filtro + '%' COLLATE Latin1_General_CI_AI);

	-- seteamos mensaje de salida
	set @message = 'Consulta exitosa';


END

GO
/****** Object:  StoredProcedure [dbo].[USP_SEL_ENTIDADGRUPO]    Script Date: 21/06/2024 22:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE       PROCEDURE [dbo].[USP_SEL_ENTIDADGRUPO](
	@entidadgrupo_id int =null,
	@filtro varchar(max)=null,
	@error BIT = NULL OUTPUT,
	@message NVARCHAR(500) = NULL OUTPUT
)
AS
BEGIN

	set @error = 0;

	SELECT
		T1.[entidadgrupo_id], 
		T1.[codigo], 
		T1.[abreviatura], 
		T1.[descripcion], 
		T1.[estado], 
		T1.[usuario_reg], 
		T1.[fecha_reg], 
		T1.[usuario_act], 
		T1.[fecha_act] 
	FROM
		[dbo].[ENTIDADGRUPO] AS T1 WITH(NOLOCK)
	WHERE
		T1.estado = 1
	ORDER BY
		T1.descripcion

		-- seteamos mensaje de salida
		set @message = 'Consulta exitosa';


END

GO
/****** Object:  StoredProcedure [dbo].[USP_SEL_ENTIDADSECTOR]    Script Date: 21/06/2024 22:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE     PROCEDURE [dbo].[USP_SEL_ENTIDADSECTOR](
	@entidadsector_id int = null,	
	@filtro varchar(max) = null,
	@error BIT = NULL OUTPUT,
	@message NVARCHAR(500) = NULL OUTPUT
)
AS
BEGIN

	set @error = 0;

	SELECT
		T1.[entidadsector_id], 
		T1.[tiposector_id], 
		T1.[codigo], 
		T1.[abreviatura], 
		T1.[descripcion], 
		T1.[estado], 
		T1.[usuario_reg], 
		T1.[fecha_reg], 
		T1.[usuario_act], 
		T1.[fecha_act],
		T2.[codigo]			AS tiposector_codigo,
		T2.[descripcion]	As tiposector_descripcion
	FROM
		[dbo].[ENTIDADSECTOR] AS T1 WITH(NOLOCK)
		INNER JOIN [dbo].[TIPOSECTOR] AS T2 WITH(NOLOCK) ON T1.tiposector_id = T2.tiposector_id
	WHERE
		T1.estado = 1
	ORDER BY
		T1.descripcion

		-- seteamos mensaje de salida
		set @message = 'Consulta exitosa';


END

GO
/****** Object:  StoredProcedure [dbo].[USP_SEL_MODALIDADINTEGRIDAD]    Script Date: 21/06/2024 22:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE     PROCEDURE [dbo].[USP_SEL_MODALIDADINTEGRIDAD](
	@modalidadintegridad_id int = null,	
	@filtro varchar(max) = null,
	@error BIT = NULL OUTPUT,
	@message NVARCHAR(500) = NULL OUTPUT
)
AS
BEGIN

	set @error = 0;

	SELECT
		[modalidadintegridad_id], 
		[codigo], 
		[abreviatura], 
		[descripcion], 
		[estado], 
		[usuario_reg], 
		[fecha_reg], 
		[usuario_act], 
		[fecha_act]
	FROM
		[dbo].[MODALIDADINTEGRIDAD] AS T1 WITH(NOLOCK)
	WHERE
		T1.estado = 1
	ORDER BY
		T1.descripcion

		-- seteamos mensaje de salida
		set @message = 'Consulta exitosa';


END

GO
/****** Object:  StoredProcedure [dbo].[USP_SEL_PERSONA]    Script Date: 21/06/2024 22:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[USP_SEL_PERSONA](
	@persona_id int = null,
	@filtro varchar(max) = null,
	@error BIT = NULL OUTPUT,
	@message NVARCHAR(500) = NULL OUTPUT
)
AS
BEGIN

	set @error = 0;

	SELECT
		T1.persona_id, 
		T1.nombres, 
		T1.apellido_paterno, 
		T1.apellido_materno, 
		T1.numdocumento, 
		T1.email, 
		T1.telefono_movil, 
		T1.estado, 
		T1.usuario_reg, 
		T1.fecha_reg, 
		T1.usuario_act, 
		T1.fecha_act
	FROM 
		[dbo].PERSONA  T1 WITH(NOLOCK)
	WHERE
		T1.estado = 1 AND
		(@persona_id IS NULL OR T1.persona_id = @persona_id) AND
		(@FILTRO IS NULL OR (RTRIM(LTRIM(ISNULL(T1.nombres, ''))) + ' ' +
			RTRIM(LTRIM(ISNULL(T1.apellido_paterno, ''))) + ' ' +
			RTRIM(LTRIM(ISNULL(T1.apellido_materno, ''))) + ' ' +
			RTRIM(LTRIM(ISNULL(T1.numdocumento, '')))) LIKE '%' + @filtro + '%' COLLATE Latin1_General_CI_AI);

		-- seteamos mensaje de salida
		set @message = 'Consulta exitosa';


END

GO
/****** Object:  StoredProcedure [dbo].[USP_SEL_UBIGEO_DEPARTAMENTO]    Script Date: 21/06/2024 22:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE     PROCEDURE [dbo].[USP_SEL_UBIGEO_DEPARTAMENTO](
	@error BIT = NULL OUTPUT,
	@message NVARCHAR(500) = NULL OUTPUT
)
AS
BEGIN

	set @error = 0;

	SELECT
		departamento_inei,
		departamento
	FROM
		[dbo].[UBIGEO] AS T1 WITH(NOLOCK)
	GROUP BY
		departamento_inei, departamento
	ORDER BY
		departamento

	-- seteamos mensaje de salida
	set @message = 'Consulta exitosa';


END

GO
/****** Object:  StoredProcedure [dbo].[USP_SEL_UBIGEO_DISTRITO]    Script Date: 21/06/2024 22:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE       PROCEDURE [dbo].[USP_SEL_UBIGEO_DISTRITO](
	@provincia_inei varchar(10) =  null,
	@error BIT = NULL OUTPUT,
	@message NVARCHAR(500) = NULL OUTPUT
)
AS
BEGIN

	set @error = 0;

	SELECT
		ubigeo_id,
		distrito
	FROM
		[dbo].[UBIGEO] AS T1 WITH(NOLOCK)
	WHERE
		(@provincia_inei is null or T1.provincia_inei = @provincia_inei)	
	ORDER BY
		distrito

	-- seteamos mensaje de salida
	set @message = 'Consulta exitosa';


END

GO
/****** Object:  StoredProcedure [dbo].[USP_SEL_UBIGEO_PROVINCIA]    Script Date: 21/06/2024 22:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE     PROCEDURE [dbo].[USP_SEL_UBIGEO_PROVINCIA](
	@departamento_inei varchar(10) =  null,
	@error BIT = NULL OUTPUT,
	@message NVARCHAR(500) = NULL OUTPUT
)
AS
BEGIN

	set @error = 0;

	SELECT
		departamento_inei,
		provincia_inei,
		provincia
	FROM
		[dbo].[UBIGEO] AS T1 WITH(NOLOCK)
	WHERE
		(@departamento_inei is null or T1.departamento_inei = @departamento_inei)
	GROUP BY
		departamento_inei, provincia_inei, provincia
	ORDER BY
		departamento_inei, provincia_inei

	-- seteamos mensaje de salida
	set @message = 'Consulta exitosa';


END

GO
/****** Object:  StoredProcedure [dbo].[USP_UPD_ENTIDAD]    Script Date: 21/06/2024 22:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE     PROCEDURE [dbo].[USP_UPD_ENTIDAD]
	@entidad_id int = NULL,
	@entidadgrupo_id int = null,
	@entidadsector_id int = null,
	@modalidadintegridad_id int = null,
	@ubigeo_id int = null,
	@numero_ruc varchar(11) = null,
	@codigo varchar(30) = null,
	@acronimo varchar(20) = null,
	@nombre varchar(250) = null,
	@usuario_act varchar(20) = NULL,
	@error BIT = NULL OUTPUT,
	@message NVARCHAR(500) = NULL OUTPUT
AS
BEGIN
	
	--Inicializa como false
	SET @error = 0;

	-- validamos si existe una entidad que desea modificar
	IF NOT EXISTS(SELECT TOP(1) t1.* FROM [dbo].ENTIDAD AS t1 WITH(NOLOCK) WHERE t1.entidad_id = @entidad_id) 
	BEGIN
		SET @error = 1;
		SET @message = 'La entidad que intenta modificar no existe';
	END

	-- validamos si existe una entidad con el mismo numero de RUC
	IF EXISTS(SELECT TOP(1) t1.* FROM [dbo].ENTIDAD AS t1 WITH(NOLOCK) WHERE t1.ESTADO = 1 AND  TRIM(LOWER(@numero_ruc)) = TRIM(LOWER(t1.numero_ruc)) AND @entidad_id <> t1.entidad_id) 
	BEGIN
		SET @error = 1;
		SET @message = 'Ya existe una entidad con el número de RUC: ' + TRIM(LOWER(@numero_ruc));
	END

	-- validamos si existe una entidad con el mismo codigo
	IF EXISTS(SELECT TOP(1) t1.* FROM [dbo].ENTIDAD AS t1 WITH(NOLOCK) WHERE t1.ESTADO = 1 AND  TRIM(LOWER(@codigo)) = TRIM(LOWER(t1.codigo)) AND @entidad_id <> t1.entidad_id) 
	BEGIN
		SET @error = 1;
		SET @message = 'Ya existe una entidad con el código: ' + TRIM(LOWER(@numero_ruc));
	END

	-- validamos si existe una entidad con el mismo acronimo/alias
	IF EXISTS(SELECT TOP(1) t1.* FROM [dbo].ENTIDAD AS t1 WITH(NOLOCK) WHERE t1.ESTADO = 1 AND  TRIM(LOWER(@acronimo)) = TRIM(LOWER(t1.acronimo)) AND @entidad_id <> t1.entidad_id) 
	BEGIN
		SET @error = 1;
		SET @message = 'Ya existe una entidad con el acrónimo (alias): ' + TRIM(LOWER(@numero_ruc));
	END

	-- validamos si existe una entidad con el mismo nombre
	IF EXISTS(SELECT TOP(1) t1.* FROM [dbo].ENTIDAD AS t1 WITH(NOLOCK) WHERE t1.ESTADO = 1 AND  TRIM(LOWER(@nombre)) = TRIM(LOWER(t1.nombre)) AND @entidad_id <> t1.entidad_id) 
	BEGIN
		SET @error = 1;
		SET @message = 'Ya existe una entidad con el nombre: ' + TRIM(LOWER(@numero_ruc));
	END
 
	-- si no ocurrio ningun error
	IF(@error = 0) 
	BEGIN
		-- actualizamos el grupo
		UPDATE dbo.[ENTIDAD]
		set 
			[entidadgrupo_id]			= @entidadgrupo_id, 
			[entidadsector_id]			= @entidadsector_id, 
			[modalidadintegridad_id]	= @modalidadintegridad_id, 
			[ubigeo_id]					= @ubigeo_id, 
			[numero_ruc]				= @numero_ruc, 
			[codigo]					= @codigo, 
			[acronimo]					= @acronimo, 
			[nombre]					= @nombre, 
			[usuario_act]				= @usuario_act,
			[fecha_act]					= GETDATE()
		where
			entidad_id = @entidad_id;

		-- setemos el mensaje de salida
		set @message = 'Información actualizada satisfactoriamente';

	END
END

GO
/****** Object:  StoredProcedure [dbo].[USP_UPD_ENTIDADGRUPO]    Script Date: 21/06/2024 22:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE      PROCEDURE [dbo].[USP_UPD_ENTIDADGRUPO]
	@entidadgrupo_id int = NULL,
	@abreviatura varchar(50) = NULL, 
	@descripcion varchar(150) = NULL,
	@usuario_act varchar(20) = NULL,
	@error BIT = NULL OUTPUT,
	@message NVARCHAR(500) = NULL OUTPUT
AS
BEGIN
	
	--Inicializa como false
	SET @error = 0;

	-- validamos si existe un grupo con la misma descripcion
	IF EXISTS(SELECT TOP(1) t1.* FROM [dbo].[ENTIDADGRUPO] AS t1 WITH(NOLOCK) WHERE t1.ESTADO = 1 AND  TRIM(LOWER(@descripcion)) = TRIM(LOWER(t1.descripcion)) AND @entidadgrupo_id <> t1.entidadgrupo_id) 
	BEGIN
		SET @error = 1;
		SET @message = 'Ya existe un ENTIDADGRUPO registrado con la descripción ' + TRIM(LOWER(@descripcion));
	END

	-- validamos si existe un grupo con la misma abreviatura
	IF EXISTS(SELECT TOP(1) t1.* FROM [dbo].[ENTIDADGRUPO] AS t1 WITH(NOLOCK) WHERE t1.ESTADO = 1 AND  TRIM(LOWER(@abreviatura)) = TRIM(LOWER(t1.abreviatura)) AND @entidadgrupo_id <> t1.entidadgrupo_id) 
	BEGIN
		SET @error = 1;
		SET @message = 'Ya existe un ENTIDADGRUPO registrado con la abreviatura ' + TRIM(LOWER(@abreviatura));
	END
 
	-- si no ocurrio ningun error
	IF(@error = 0) 
	BEGIN
		-- actualizamos el grupo
		UPDATE dbo.[ENTIDADGRUPO]
		set 
			abreviatura = @abreviatura,
			descripcion = @descripcion,
			usuario_act = @usuario_act,
			fecha_act = GETDATE()
		where
			entidadgrupo_id = @entidadgrupo_id;

		-- setemos el mensaje de salida
		set @message = 'Información actualizada satisfactoriamente';

	END
END

GO
/****** Object:  StoredProcedure [dbo].[USP_UPD_PERSONA]    Script Date: 21/06/2024 22:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[USP_UPD_PERSONA]
	@persona_id int = NULL,
	@nombres varchar(100) = null,
	@apellido_paterno varchar(100) = null,
	@apellido_materno varchar(100) = null,
	@numdocumento varchar(20) = null,
	@email varchar(50) = null,
	@telefono_movil varchar(20) = null,
	@usuario_act varchar(20) = NULL,
	@error BIT = NULL OUTPUT,
	@message NVARCHAR(500) = NULL OUTPUT
AS
BEGIN
	
	--Inicializa como false
	SET @error = 0;

	-- validamos si existe una persona con el mismo numero de documento
	IF EXISTS(SELECT TOP(1) t1.* FROM [dbo].[PERSONA] AS t1 WITH(NOLOCK) WHERE t1.ESTADO = 1 AND  TRIM(LOWER(@numdocumento)) = TRIM(LOWER(t1.numdocumento)) AND @persona_id <> t1.persona_id) 
	BEGIN
		SET @error = 1;
		SET @message = 'Ya existe un persona registrada con el DNI: ' + TRIM(LOWER(@numdocumento));
	END
 
	-- si no ocurrio ningun error
	IF(@error = 0) 
	BEGIN
		-- actualizamos el grupo
		UPDATE dbo.[PERSONA]
		set 
			nombres = @nombres,
			apellido_paterno = @apellido_paterno,
			apellido_materno = @apellido_materno,
			numdocumento = @numdocumento,
			email = @email,
			telefono_movil = @telefono_movil,
			usuario_act = @usuario_act,
			fecha_act = GETDATE()
		where
			persona_id = @persona_id;

		-- setemos el mensaje de salida
		set @message = 'Información actualizada satisfactoriamente';

	END
END

GO
