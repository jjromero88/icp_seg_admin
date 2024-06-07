USE [pcm_icp_seg]
GO
/****** Object:  Table [dbo].[BLOQUEOUSUARIO]    Script Date: 7/06/2024 11:16:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BLOQUEOUSUARIO](
	[bloqueousuario_id] [int] IDENTITY(1,1) NOT NULL,
	[usuario_id] [int] NULL,
	[fecha_bloqueo] [datetime] NULL,
	[fecha_desbloqueo] [datetime] NULL,
	[estado] [bit] NULL,
	[usuario_reg] [varchar](20) NULL,
	[fecha_reg] [datetime] NULL,
	[usuactio_act] [varchar](20) NULL,
	[fecha_act] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[bloqueousuario_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOG_ACCESO]    Script Date: 7/06/2024 11:16:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOG_ACCESO](
	[logacceso_id] [int] IDENTITY(1,1) NOT NULL,
	[usuario_id] [int] NULL,
	[username] [varchar](20) NULL,
	[password] [varchar](15) NULL,
	[login_exitoso] [bit] NULL,
	[login_fecha] [datetime] NULL,
	[login_message] [varchar](500) NULL,
	[estado] [bit] NULL,
	[usuario_reg] [varchar](20) NULL,
	[fecha_reg] [datetime] NULL,
	[usuactio_act] [varchar](20) NULL,
	[fecha_act] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[logacceso_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOG_BLOQUEO]    Script Date: 7/06/2024 11:16:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOG_BLOQUEO](
	[logbloqueo_id] [int] IDENTITY(1,1) NOT NULL,
	[usuario_id] [int] NULL,
	[fecha_bloqueo] [datetime] NULL,
	[fecha_desbloqueo] [datetime] NULL,
	[estado] [bit] NULL,
	[usuario_reg] [varchar](20) NULL,
	[fecha_reg] [datetime] NULL,
	[usuactio_act] [varchar](20) NULL,
	[fecha_act] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[logbloqueo_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PERFIL]    Script Date: 7/06/2024 11:16:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PERFIL](
	[perfil_id] [int] IDENTITY(1,1) NOT NULL,
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
	[perfil_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PERFILOPCION]    Script Date: 7/06/2024 11:16:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PERFILOPCION](
	[perfilopcion_id] [int] IDENTITY(1,1) NOT NULL,
	[perfil_id] [int] NOT NULL,
	[sistemaopcion_id] [int] NOT NULL,
	[habilitado] [bit] NOT NULL,
	[estado] [bit] NULL,
	[usuario_reg] [varchar](20) NULL,
	[fecha_reg] [datetime] NULL,
	[usuactio_act] [varchar](20) NULL,
	[fecha_act] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[perfilopcion_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SISTEMAOPCION]    Script Date: 7/06/2024 11:16:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SISTEMAOPCION](
	[sistemaopcion_id] [int] IDENTITY(1,1) NOT NULL,
	[padre_id] [int] NULL,
	[codigo] [varchar](10) NULL,
	[abreviatura] [varchar](50) NULL,
	[descripcion] [varchar](150) NULL,
	[num_orden] [int] NULL,
	[url_opcion] [varchar](250) NULL,
	[icono_opcion] [varchar](50) NULL,
	[estado] [bit] NULL,
	[usuario_reg] [varchar](20) NULL,
	[fecha_reg] [datetime] NULL,
	[usuactio_act] [varchar](20) NULL,
	[fecha_act] [datetime] NULL,
 CONSTRAINT [PK__SISTEMAO__447E12DF1C864108] PRIMARY KEY CLUSTERED 
(
	[sistemaopcion_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USUARIO]    Script Date: 7/06/2024 11:16:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USUARIO](
	[usuario_id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](20) NULL,
	[password] [varchar](150) NULL,
	[interno] [bit] NULL,
	[numdocumento] [varchar](20) NULL,
	[apellido_paterno] [varchar](100) NULL,
	[apellido_materno] [varchar](100) NULL,
	[nombres] [varchar](100) NULL,
	[email] [varchar](150) NULL,
	[telefono_movil] [varchar](20) NULL,
	[estado] [bit] NULL,
	[usuario_reg] [varchar](20) NULL,
	[fecha_reg] [datetime] NULL,
	[usuactio_act] [varchar](20) NULL,
	[fecha_act] [datetime] NULL,
 CONSTRAINT [PK__USUARIO__2ED7D2AF33C5DD61] PRIMARY KEY CLUSTERED 
(
	[usuario_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USUARIOPERFIL]    Script Date: 7/06/2024 11:16:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USUARIOPERFIL](
	[usuarioperfil_id] [int] IDENTITY(1,1) NOT NULL,
	[usuario_id] [int] NULL,
	[perfil_id] [int] NULL,
	[estado] [bit] NULL,
	[usuario_reg] [varchar](20) NULL,
	[fecha_reg] [datetime] NULL,
	[usuactio_act] [varchar](20) NULL,
	[fecha_act] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[usuarioperfil_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[PERFIL] ON 
GO
INSERT [dbo].[PERFIL] ([perfil_id], [codigo], [abreviatura], [descripcion], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (1, N'00001', N'Admin', N'Administrador', 1, N'sys', CAST(N'2024-06-03T15:43:34.653' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PERFIL] ([perfil_id], [codigo], [abreviatura], [descripcion], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (2, N'00002', N'Sectorista', N'Sectorista', 1, N'sys', CAST(N'2024-06-03T15:46:14.130' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PERFIL] ([perfil_id], [codigo], [abreviatura], [descripcion], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (3, N'00003', N'test upd', N'test perfil actualizado', 1, N'jjromero88', CAST(N'2024-06-06T15:01:15.197' AS DateTime), N'jjromero88', CAST(N'2024-06-06T15:02:09.500' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[PERFIL] OFF
GO
SET IDENTITY_INSERT [dbo].[PERFILOPCION] ON 
GO
INSERT [dbo].[PERFILOPCION] ([perfilopcion_id], [perfil_id], [sistemaopcion_id], [habilitado], [estado], [usuario_reg], [fecha_reg], [usuactio_act], [fecha_act]) VALUES (1, 1, 1, 1, 1, N'sys', CAST(N'2024-06-04T21:17:07.690' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PERFILOPCION] ([perfilopcion_id], [perfil_id], [sistemaopcion_id], [habilitado], [estado], [usuario_reg], [fecha_reg], [usuactio_act], [fecha_act]) VALUES (2, 1, 2, 1, 1, N'sys', CAST(N'2024-06-04T21:17:12.257' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PERFILOPCION] ([perfilopcion_id], [perfil_id], [sistemaopcion_id], [habilitado], [estado], [usuario_reg], [fecha_reg], [usuactio_act], [fecha_act]) VALUES (3, 1, 3, 1, 1, N'sys', CAST(N'2024-06-04T21:17:27.677' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PERFILOPCION] ([perfilopcion_id], [perfil_id], [sistemaopcion_id], [habilitado], [estado], [usuario_reg], [fecha_reg], [usuactio_act], [fecha_act]) VALUES (4, 1, 4, 1, 1, N'sys', CAST(N'2024-06-06T17:35:10.583' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PERFILOPCION] ([perfilopcion_id], [perfil_id], [sistemaopcion_id], [habilitado], [estado], [usuario_reg], [fecha_reg], [usuactio_act], [fecha_act]) VALUES (5, 1, 5, 1, 1, N'sys', CAST(N'2024-06-06T17:35:15.320' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PERFILOPCION] ([perfilopcion_id], [perfil_id], [sistemaopcion_id], [habilitado], [estado], [usuario_reg], [fecha_reg], [usuactio_act], [fecha_act]) VALUES (6, 1, 6, 1, 1, N'sys', CAST(N'2024-06-06T17:35:20.537' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[PERFILOPCION] OFF
GO
SET IDENTITY_INSERT [dbo].[SISTEMAOPCION] ON 
GO
INSERT [dbo].[SISTEMAOPCION] ([sistemaopcion_id], [padre_id], [codigo], [abreviatura], [descripcion], [num_orden], [url_opcion], [icono_opcion], [estado], [usuario_reg], [fecha_reg], [usuactio_act], [fecha_act]) VALUES (1, NULL, N'00001', N'Mantenimiento', N'Mantenimiento', 1, N'/mantenimiento/indes', NULL, 1, N'sys', CAST(N'2024-06-04T21:14:47.907' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[SISTEMAOPCION] ([sistemaopcion_id], [padre_id], [codigo], [abreviatura], [descripcion], [num_orden], [url_opcion], [icono_opcion], [estado], [usuario_reg], [fecha_reg], [usuactio_act], [fecha_act]) VALUES (2, 1, N'00002', N'Usuarios', N'Usuarios', 2, N'/usuarios/index', NULL, 1, N'sys', CAST(N'2024-06-04T21:15:33.017' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[SISTEMAOPCION] ([sistemaopcion_id], [padre_id], [codigo], [abreviatura], [descripcion], [num_orden], [url_opcion], [icono_opcion], [estado], [usuario_reg], [fecha_reg], [usuactio_act], [fecha_act]) VALUES (3, 1, N'00003', N'Perfiles', N'Perfiles', 3, N'/perfil/index', NULL, 1, N'sys', CAST(N'2024-06-04T21:16:03.673' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[SISTEMAOPCION] ([sistemaopcion_id], [padre_id], [codigo], [abreviatura], [descripcion], [num_orden], [url_opcion], [icono_opcion], [estado], [usuario_reg], [fecha_reg], [usuactio_act], [fecha_act]) VALUES (4, NULL, N'00004', N'Asistencias', N'Asistencias', 4, N'/asistencias/index', NULL, 1, N'sys', CAST(N'2024-06-06T17:33:07.683' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[SISTEMAOPCION] ([sistemaopcion_id], [padre_id], [codigo], [abreviatura], [descripcion], [num_orden], [url_opcion], [icono_opcion], [estado], [usuario_reg], [fecha_reg], [usuactio_act], [fecha_act]) VALUES (5, 4, N'00005', N'Asignacion de entidades', N'Asignacion de entidades', 5, N'/asignarentidades/index', NULL, 1, N'sys', CAST(N'2024-06-06T17:34:02.707' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[SISTEMAOPCION] ([sistemaopcion_id], [padre_id], [codigo], [abreviatura], [descripcion], [num_orden], [url_opcion], [icono_opcion], [estado], [usuario_reg], [fecha_reg], [usuactio_act], [fecha_act]) VALUES (6, 4, N'00006', N'Asitencias tecnicas', N'Asistencias tecnicas', 6, N'/asistenciastecnicas/index', NULL, 1, N'sys', CAST(N'2024-06-06T17:34:31.287' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[SISTEMAOPCION] OFF
GO
SET IDENTITY_INSERT [dbo].[USUARIO] ON 
GO
INSERT [dbo].[USUARIO] ([usuario_id], [username], [password], [interno], [numdocumento], [apellido_paterno], [apellido_materno], [nombres], [email], [telefono_movil], [estado], [usuario_reg], [fecha_reg], [usuactio_act], [fecha_act]) VALUES (1, N'jjromero88', N'lol/SHDb+oG9d5VqbHBSUw==', 1, N'45338843', N'Romero', N'Lizano', N'Juan Jose', N'juanjor1988@gmail.com', N'961783736', 1, N'sys', CAST(N'2024-06-04T21:18:49.640' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[USUARIO] ([usuario_id], [username], [password], [interno], [numdocumento], [apellido_paterno], [apellido_materno], [nombres], [email], [telefono_movil], [estado], [usuario_reg], [fecha_reg], [usuactio_act], [fecha_act]) VALUES (2, N'jessicaarbi', N'lol/SHDb+oG9d5VqbHBSUw==', 1, N'45878854', N'Alvarez', N'Arbi', N'Jessica', N'jessicaarbi@gmail.com', N'999950863', 1, N'sys', CAST(N'2024-06-04T21:20:23.437' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[USUARIO] OFF
GO
SET IDENTITY_INSERT [dbo].[USUARIOPERFIL] ON 
GO
INSERT [dbo].[USUARIOPERFIL] ([usuarioperfil_id], [usuario_id], [perfil_id], [estado], [usuario_reg], [fecha_reg], [usuactio_act], [fecha_act]) VALUES (1, 1, 1, 1, N'sys', CAST(N'2024-06-04T21:44:11.230' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[USUARIOPERFIL] OFF
GO
ALTER TABLE [dbo].[BLOQUEOUSUARIO] ADD  DEFAULT ((1)) FOR [estado]
GO
ALTER TABLE [dbo].[BLOQUEOUSUARIO] ADD  DEFAULT ('sys') FOR [usuario_reg]
GO
ALTER TABLE [dbo].[BLOQUEOUSUARIO] ADD  DEFAULT (getdate()) FOR [fecha_reg]
GO
ALTER TABLE [dbo].[LOG_ACCESO] ADD  DEFAULT ((1)) FOR [estado]
GO
ALTER TABLE [dbo].[LOG_ACCESO] ADD  DEFAULT ('sys') FOR [usuario_reg]
GO
ALTER TABLE [dbo].[LOG_ACCESO] ADD  DEFAULT (getdate()) FOR [fecha_reg]
GO
ALTER TABLE [dbo].[LOG_BLOQUEO] ADD  DEFAULT ((1)) FOR [estado]
GO
ALTER TABLE [dbo].[LOG_BLOQUEO] ADD  DEFAULT ('sys') FOR [usuario_reg]
GO
ALTER TABLE [dbo].[LOG_BLOQUEO] ADD  DEFAULT (getdate()) FOR [fecha_reg]
GO
ALTER TABLE [dbo].[PERFIL] ADD  DEFAULT ((1)) FOR [estado]
GO
ALTER TABLE [dbo].[PERFIL] ADD  DEFAULT ('sys') FOR [usuario_reg]
GO
ALTER TABLE [dbo].[PERFIL] ADD  DEFAULT (getdate()) FOR [fecha_reg]
GO
ALTER TABLE [dbo].[PERFILOPCION] ADD  DEFAULT ((1)) FOR [habilitado]
GO
ALTER TABLE [dbo].[PERFILOPCION] ADD  DEFAULT ((1)) FOR [estado]
GO
ALTER TABLE [dbo].[PERFILOPCION] ADD  DEFAULT ('sys') FOR [usuario_reg]
GO
ALTER TABLE [dbo].[PERFILOPCION] ADD  DEFAULT (getdate()) FOR [fecha_reg]
GO
ALTER TABLE [dbo].[SISTEMAOPCION] ADD  CONSTRAINT [DF__SISTEMAOP__num_o__38996AB5]  DEFAULT ((0)) FOR [num_orden]
GO
ALTER TABLE [dbo].[SISTEMAOPCION] ADD  CONSTRAINT [DF__SISTEMAOP__estad__398D8EEE]  DEFAULT ((1)) FOR [estado]
GO
ALTER TABLE [dbo].[SISTEMAOPCION] ADD  CONSTRAINT [DF__SISTEMAOP__usuar__3A81B327]  DEFAULT ('sys') FOR [usuario_reg]
GO
ALTER TABLE [dbo].[SISTEMAOPCION] ADD  CONSTRAINT [DF__SISTEMAOP__fecha__3B75D760]  DEFAULT (getdate()) FOR [fecha_reg]
GO
ALTER TABLE [dbo].[USUARIO] ADD  CONSTRAINT [DF__USUARIO__estado__4AB81AF0]  DEFAULT ((1)) FOR [estado]
GO
ALTER TABLE [dbo].[USUARIO] ADD  CONSTRAINT [DF__USUARIO__usuario__4BAC3F29]  DEFAULT ('sys') FOR [usuario_reg]
GO
ALTER TABLE [dbo].[USUARIO] ADD  CONSTRAINT [DF__USUARIO__fecha_r__4CA06362]  DEFAULT (getdate()) FOR [fecha_reg]
GO
ALTER TABLE [dbo].[USUARIOPERFIL] ADD  DEFAULT ((1)) FOR [estado]
GO
ALTER TABLE [dbo].[USUARIOPERFIL] ADD  DEFAULT ('sys') FOR [usuario_reg]
GO
ALTER TABLE [dbo].[USUARIOPERFIL] ADD  DEFAULT (getdate()) FOR [fecha_reg]
GO
ALTER TABLE [dbo].[BLOQUEOUSUARIO]  WITH CHECK ADD  CONSTRAINT [FK__BLOQUEOUS__usuar__5629CD9C] FOREIGN KEY([usuario_id])
REFERENCES [dbo].[USUARIO] ([usuario_id])
GO
ALTER TABLE [dbo].[BLOQUEOUSUARIO] CHECK CONSTRAINT [FK__BLOQUEOUS__usuar__5629CD9C]
GO
ALTER TABLE [dbo].[BLOQUEOUSUARIO]  WITH CHECK ADD  CONSTRAINT [FK__BLOQUEOUS__usuar__7C4F7684] FOREIGN KEY([usuario_id])
REFERENCES [dbo].[USUARIO] ([usuario_id])
GO
ALTER TABLE [dbo].[BLOQUEOUSUARIO] CHECK CONSTRAINT [FK__BLOQUEOUS__usuar__7C4F7684]
GO
ALTER TABLE [dbo].[LOG_ACCESO]  WITH CHECK ADD  CONSTRAINT [FK__LOG_ACCES__usuar__5BE2A6F2] FOREIGN KEY([usuario_id])
REFERENCES [dbo].[USUARIO] ([usuario_id])
GO
ALTER TABLE [dbo].[LOG_ACCESO] CHECK CONSTRAINT [FK__LOG_ACCES__usuar__5BE2A6F2]
GO
ALTER TABLE [dbo].[LOG_ACCESO]  WITH CHECK ADD  CONSTRAINT [FK__LOG_ACCES__usuar__7D439ABD] FOREIGN KEY([usuario_id])
REFERENCES [dbo].[USUARIO] ([usuario_id])
GO
ALTER TABLE [dbo].[LOG_ACCESO] CHECK CONSTRAINT [FK__LOG_ACCES__usuar__7D439ABD]
GO
ALTER TABLE [dbo].[LOG_BLOQUEO]  WITH CHECK ADD  CONSTRAINT [FK__LOG_BLOQU__usuar__619B8048] FOREIGN KEY([usuario_id])
REFERENCES [dbo].[USUARIO] ([usuario_id])
GO
ALTER TABLE [dbo].[LOG_BLOQUEO] CHECK CONSTRAINT [FK__LOG_BLOQU__usuar__619B8048]
GO
ALTER TABLE [dbo].[LOG_BLOQUEO]  WITH CHECK ADD  CONSTRAINT [FK__LOG_BLOQU__usuar__7E37BEF6] FOREIGN KEY([usuario_id])
REFERENCES [dbo].[USUARIO] ([usuario_id])
GO
ALTER TABLE [dbo].[LOG_BLOQUEO] CHECK CONSTRAINT [FK__LOG_BLOQU__usuar__7E37BEF6]
GO
ALTER TABLE [dbo].[PERFILOPCION]  WITH CHECK ADD FOREIGN KEY([perfil_id])
REFERENCES [dbo].[PERFIL] ([perfil_id])
GO
ALTER TABLE [dbo].[PERFILOPCION]  WITH CHECK ADD FOREIGN KEY([perfil_id])
REFERENCES [dbo].[PERFIL] ([perfil_id])
GO
ALTER TABLE [dbo].[PERFILOPCION]  WITH CHECK ADD  CONSTRAINT [FK__PERFILOPC__siste__00200768] FOREIGN KEY([sistemaopcion_id])
REFERENCES [dbo].[SISTEMAOPCION] ([sistemaopcion_id])
GO
ALTER TABLE [dbo].[PERFILOPCION] CHECK CONSTRAINT [FK__PERFILOPC__siste__00200768]
GO
ALTER TABLE [dbo].[PERFILOPCION]  WITH CHECK ADD  CONSTRAINT [FK__PERFILOPC__siste__440B1D61] FOREIGN KEY([sistemaopcion_id])
REFERENCES [dbo].[SISTEMAOPCION] ([sistemaopcion_id])
GO
ALTER TABLE [dbo].[PERFILOPCION] CHECK CONSTRAINT [FK__PERFILOPC__siste__440B1D61]
GO
ALTER TABLE [dbo].[SISTEMAOPCION]  WITH CHECK ADD  CONSTRAINT [FK__SISTEMAOP__padre__01142BA1] FOREIGN KEY([padre_id])
REFERENCES [dbo].[SISTEMAOPCION] ([sistemaopcion_id])
GO
ALTER TABLE [dbo].[SISTEMAOPCION] CHECK CONSTRAINT [FK__SISTEMAOP__padre__01142BA1]
GO
ALTER TABLE [dbo].[SISTEMAOPCION]  WITH CHECK ADD  CONSTRAINT [FK__SISTEMAOP__padre__37A5467C] FOREIGN KEY([padre_id])
REFERENCES [dbo].[SISTEMAOPCION] ([sistemaopcion_id])
GO
ALTER TABLE [dbo].[SISTEMAOPCION] CHECK CONSTRAINT [FK__SISTEMAOP__padre__37A5467C]
GO
ALTER TABLE [dbo].[USUARIOPERFIL]  WITH CHECK ADD FOREIGN KEY([perfil_id])
REFERENCES [dbo].[PERFIL] ([perfil_id])
GO
ALTER TABLE [dbo].[USUARIOPERFIL]  WITH CHECK ADD FOREIGN KEY([perfil_id])
REFERENCES [dbo].[PERFIL] ([perfil_id])
GO
ALTER TABLE [dbo].[USUARIOPERFIL]  WITH CHECK ADD  CONSTRAINT [FK__USUARIOPE__usuar__02FC7413] FOREIGN KEY([usuario_id])
REFERENCES [dbo].[USUARIO] ([usuario_id])
GO
ALTER TABLE [dbo].[USUARIOPERFIL] CHECK CONSTRAINT [FK__USUARIOPE__usuar__02FC7413]
GO
ALTER TABLE [dbo].[USUARIOPERFIL]  WITH CHECK ADD  CONSTRAINT [FK__USUARIOPE__usuar__4F7CD00D] FOREIGN KEY([usuario_id])
REFERENCES [dbo].[USUARIO] ([usuario_id])
GO
ALTER TABLE [dbo].[USUARIOPERFIL] CHECK CONSTRAINT [FK__USUARIOPE__usuar__4F7CD00D]
GO
/****** Object:  StoredProcedure [dbo].[USP_DEL_PERFIL]    Script Date: 7/06/2024 11:16:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[USP_DEL_PERFIL](
	@perfil_id int = NULL,
	@usuario_act varchar(20) = NULL,
	@error BIT = NULL OUTPUT,
	@message NVARCHAR(500) = NULL OUTPUT
)
AS
BEGIN
	SET @error = 0;

	-- validamos si existe el perfil que desea eliminar
	IF EXISTS(SELECT TOP(1) t1.* FROM [dbo].[perfil] AS t1 WITH(NOLOCK) WHERE t1.perfil_id = @perfil_id) 
	BEGIN
		SET @error = 1;
		SET @message = 'El perfil que desea Eliminar no existe';
	END
	
	IF(@error = 0)
	BEGIN

		--Se elimina el perfil actualizando sus datos de auditoria

		UPDATE 
		[dbo].PERFIL
		SET 
		estado = 0,
		usuario_act = @usuario_act
		WHERE
		perfil_id = @perfil_id

		-- setemos el mensaje de salida
		set @message = 'Información eliminada satisfactoriamente';

	END


END

GO
/****** Object:  StoredProcedure [dbo].[USP_GET_PERFIL]    Script Date: 7/06/2024 11:16:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[USP_GET_PERFIL](
	@perfil_id INT,
	@error BIT = NULL OUTPUT,
	@message NVARCHAR(500) = NULL OUTPUT
)
AS
BEGIN

	set @error = 0

	-- validamos si existe el perfil que desea consultar
	IF NOT EXISTS(SELECT TOP(1) t1.* FROM [dbo].[perfil] AS t1 WITH(NOLOCK) WHERE t1.perfil_id = @perfil_id) 
	BEGIN
		SET @error = 1;
		SET @message = 'El perfil que desea consultar no existe';
	END
	
	IF(@error = 0)
	BEGIN
		SELECT
			 T1.perfil_id, 
			 T1.codigo, 
			 T1.abreviatura, 
			 T1.descripcion, 
			 T1.estado, 
			 T1.usuario_reg, 
			 T1.fecha_reg, 
			 T1.usuario_act, 
			 T1.fecha_act 
		FROM 
			[dbo].PERFIL  T1 WITH(NOLOCK)
		WHERE
			T1.perfil_id = @perfil_id;

		set @message = 'Consulta exitosa';
	END


END

GO
/****** Object:  StoredProcedure [dbo].[USP_GET_USUARIO_ACCESOS]    Script Date: 7/06/2024 11:16:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
 * Procedimiento	: dbo.USP_GET_USUARIO_ACCESOS
 * Proposito		: Obtener lista de accesos por perfil de usuario
 * Input/Output		: Ninguna
 * Modificaciones	: Ninguna
 * Creado por		: Juan Jose Romero
 * Fecha			: 06/06/2024
 * */

CREATE       PROCEDURE [dbo].[USP_GET_USUARIO_ACCESOS](
	@usuario_id int,
	@perfil_id int,
	@usuarioAccesos nvarchar(max) = null output,
	@error bit = null output,
	@message nvarchar(500) = null output
)
AS
BEGIN
	
	--el error empieza en false
	set @error = 0

	--declaramos el usuarioperfil
	declare
	@usuarioperfil_id int = null;


	/*	inicio de validaciones	*/

	BEGIN
	

		--verifica que el usuario exista
		IF NOT EXISTS(select top(1) * from USUARIO as t1 with(nolock) where t1.estado = 1 and t1.usuario_id = @usuario_id)
		BEGIN
			set @error = 1;
			set @message = 'El usuario ingresado no existe';
		END

		--verifica que el perfil exista
		IF NOT EXISTS(select top(1) * from PERFIL as t1 with(nolock) where t1.estado = 1 and t1.perfil_id = @perfil_id)
		BEGIN
			set @error = 1;
			set @message = 'El perfil ingresado no existe';
		END

		----verificar que el usuario tenga asociado por lo menos un perfil
		ELSE IF NOT EXISTS (
		SELECT T1.* FROM DBO.USUARIOPERFIL T1 with(nolock)
		INNER JOIN DBO.USUARIO T2 ON T1.usuario_id = T2.usuario_id
		WHERE T1.usuario_id = @usuario_id and T1.estado = 1
		)
		BEGIN 
			set @error = 1;
			set @message = 'El usuario ingresado no tiene asociado un perfil, comuniquese con el administrador del sistema';
		END

		--validar que el perfil tenga por lo menos una opcion del sistema
		IF NOT EXISTS (SELECT T1.* FROM SISTEMAOPCION T1 with(nolock) INNER JOIN PERFILOPCION T2 with(nolock) ON T1.sistemaopcion_id = T2.sistemaopcion_id  WHERE T2.perfil_id = @perfil_id AND T1.estado= 1 and T2.estado = 1 and T2.habilitado = 1)
		BEGIN
			SET @error = 1
			SET @message = 'El perfil no cuenta con opciones del sistema'
		END

		--buscamos el usuarioperfil correspondiente
		select top(1) @usuarioperfil_id =  t1.usuarioperfil_id from USUARIOPERFIL as t1 with(nolock) where t1.estado = 1 and t1.usuario_id = @usuario_id and t1.perfil_id = @perfil_id;

		--validamos que exista el usaurioperfil
		IF(@usuarioperfil_id IS NULL)
		BEGIN
			SET @error = 1
			SET @message = 'El perfil y el usuario ingresados no se encuentran configurados correctamente, comuniquese con el administrador del sistema'
		END
	
	END

	/*	fin de validaciones	 */


	--si no hubo ningun error se procede al login
	IF(@error = 0 and @usuario_id is not null and @perfil_id is not null)
	BEGIN

		declare 
		@jsonAccesos varchar(max) = null;


		-- obtenemos en una tabla temporal los accesos asociados al perfil
		SELECT
			T1.*
		INTO 
			#SISTEMAOPCIONES_TEMP
		FROM 
			SISTEMAOPCION T1 with(nolock)
			INNER JOIN PERFILOPCION T2 with(nolock) ON T1.sistemaopcion_id = T2.sistemaopcion_id AND T2.estado = 1 AND T2.habilitado = 1
			INNER JOIN PERFIL T3 with(nolock) ON T2.perfil_id = T3.perfil_id AND T3.estado = 1
			INNER JOIN USUARIOPERFIL T4 with(nolock) ON T4.perfil_id = T3.perfil_id AND T4.estado = 1
		WHERE 
			T1.estado = 1 AND
			(T4.perfil_id = @perfil_id) AND
			(T4.usuario_id = @usuario_id) AND
			(T4.USUARIOPERFIL_ID = @usuarioperfil_id)
		ORDER BY 
			T1.num_orden;

		--declaramos variables locales
		DECLARE @MAX INT = 4 -- DEFINIMOS EL NIVEL MAXIMO DEL ARBOL
		DECLARE @CONT INT = @MAX
		DECLARE @ALIAS_AC VARCHAR(5)
		DECLARE @ALIAS_AN VARCHAR(5)
		DECLARE @QUERY NVARCHAR(MAX)		
		DECLARE @OPCIONESCOLUMN NVARCHAR(MAX) = '$.[codigo], $.[descripcion], $.[abreviatura], $.[url_opcion], $.[icono_opcion], $.[num_orden]';
		DECLARE @COLUMNS NVARCHAR(MAX) = '';


		--obtencion de numero de niveles de manera dinamica

		WHILE @CONT > 0 AND @CONT <= @MAX
		BEGIN
			SET @ALIAS_AC = CONCAT('SO',@CONT)
			SET @ALIAS_AN = CONCAT('SO',(@CONT - 1))
			
			SET @COLUMNS = (SELECT REPLACE(@OPCIONESCOLUMN,'$',@ALIAS_AC));

			IF @CONT = @MAX
			BEGIN
				SET @QUERY =
				'
				SELECT
					'+@COLUMNS + ' 
				FROM dbo.#SISTEMAOPCIONES_TEMP '+@ALIAS_AC+'
				WHERE '+@ALIAS_AC+'.padre_id = '+@ALIAS_AN+'.sistemaopcion_id
				ORDER BY '+@ALIAS_AC+'.num_orden
				FOR JSON PATH
				'
			END
			ELSE IF @CONT > 1
			BEGIN
				SET @QUERY =
				'
				SELECT 
					'+@COLUMNS + ',
					(
						'+@QUERY+'
					) AS ''ListaAccesos''
				FROM dbo.#SISTEMAOPCIONES_TEMP '+@ALIAS_AC+'
				WHERE '+@ALIAS_AC+'.padre_id = '+@ALIAS_AN+'.sistemaopcion_id
				ORDER BY '+@ALIAS_AC+'.num_orden
				FOR JSON PATH
				'
			END
			ELSE
			BEGIN
				SET @QUERY =
				'
				SELECT 
					'+@COLUMNS + ',
					(
						'+@QUERY+'
					) AS ''ListaAccesos''
				FROM dbo.#SISTEMAOPCIONES_TEMP '+@ALIAS_AC+'
				WHERE '+@ALIAS_AC+'.padre_id IS NULL
				ORDER BY '+@ALIAS_AC+'.num_orden
				FOR JSON PATH
				'
			END

			SET @CONT -= 1
		END
		

		SET @QUERY =
		'
		SELECT
		(
			'+@QUERY+'
		) AS LISTAJSON'



		-- insertamos en una tabla el json que resulto de la consulta
		DECLARE @TABLAACCESOS AS TABLE (LISTAJSON VARCHAR(MAX));
		INSERT INTO @TABLAACCESOS exec sp_executesql @QUERY;

		-- asignamos la columna de la tabla a la variable de salida
		SELECT @usuarioAccesos = LISTAJSON FROM @TABLAACCESOS;

		-- eliminamos la tabla temporal creada
		drop table #SISTEMAOPCIONES_TEMP

		select @usuarioAccesos;

		--actualizamos el mensaje de salida
		set @message = 'Consulta exitosa';

	END
	ELSE BEGIN 
		set @error = ISNULL(@error, 1);
		set @message = ISNULL(@message, 'Ocurrio un error al intentar iniciar sesión, comuniquese con el administrador del sistema.');
	END

END


GO
/****** Object:  StoredProcedure [dbo].[USP_GET_USUARIO_LOGIN]    Script Date: 7/06/2024 11:16:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
 * Procedimiento	: dbo.USP_GET_USUARIO_LOGIN
 * Proposito		: Autenticar usuario interno
 * Input/Output		: Ninguna
 * Modificaciones	: Ninguna
 * Creado por		: Juan Jose Romero
 * Fecha			: 04/06/2024
 * */

CREATE     PROCEDURE [dbo].[USP_GET_USUARIO_LOGIN](
	@username varchar(20),
	@password varchar(150),
	@usuarioLogin nvarchar(max) = null output,
	@error bit = null output,
	@message nvarchar(500) = null output
)
AS
BEGIN
	
	--el error empieza en false
	set @error = 0

	--declaramos las variables a utilizar
	declare
	@MAX_INTENTOS_ACCESO INT;

	--asignamos los valores a las variables declaradas
	set @MAX_INTENTOS_ACCESO = 6;


	/*	inicio de validaciones	*/

	BEGIN

		DECLARE @usuario_id int = null;

		--se obtiene el id usuario mediante las credenciales
		SELECT TOP 1 @usuario_id = T1.usuario_id FROM usuario T1 WITH (NOLOCK)
		WHERE T1.estado = 1 AND
		LOWER(TRIM(T1.username)) = LOWER(TRIM(@username));

		--verifica que el usuario exista
		IF (@usuario_id IS NULL)
		BEGIN
			set @error = 1;
			set @message = 'El usuario ingresado no existe';
		END

		--verifivar que la contraseña de usuario sea la correcta
		ELSE IF NOT EXISTS (SELECT TOP 1 * FROM DBO.USUARIO T1 WITH(NOLOCK) WHERE T1.usuario_id = @usuario_id AND TRIM(T1.password) = TRIM(@password))
		BEGIN
			set @error = 1;
			set @message = 'La contraseña ingresada es incorrecta';
		END
	
		--verificar que el usuario no se encuentre bloqueado
		ELSE IF EXISTS (
		SELECT TOP 1 T1.* FROM BLOQUEOUSUARIO T1
		WHERE T1.usuario_id = @usuario_id
		AND T1.fecha_desbloqueo > GETDATE()
		)
		BEGIN
			set @error = 1;
			set @message = 'El usuario se encuentra bloqueado';
		END
	
		----verificar que el usuario tenga asociado por lo menos un perfil
		ELSE IF NOT EXISTS (
		SELECT T1.* FROM DBO.USUARIOPERFIL T1
		INNER JOIN DBO.USUARIO T2 ON T1.usuario_id = T2.usuario_id
		WHERE T1.usuario_id = @usuario_id and T1.estado = 1
		)
		BEGIN 
			set @error = 1;
			set @message = 'El usuario ingresado no tiene asociado un perfil, comuniquese con el administrador del sistema';
		END

	END

	/*	fin de validaciones	 */


	--si no hubo ningun error se procede al login
	IF(@error = 0 and @usuario_id is not null)
	BEGIN

		declare 
		@jsonUsuario varchar(max) = null,
		@jsonPerfiles varchar(max) = null;


		--obtenemos los datos del usuario
		set @jsonUsuario = (
		SELECT
			  usuario_id
			, username
			, password
			, interno
			, numdocumento
			, apellido_paterno
			, apellido_materno
			, nombres
			, email
			, telefono_movil
			,CONCAT(T1.nombres,' ',T1.apellido_paterno,' ',T1.apellido_materno) AS nombre_completo
		FROM 
			[dbo].[USUARIO] AS T1 WITH(NOLOCK)
		WHERE
			T1.usuario_id = @usuario_id
			and T1.interno = 1
		FOR JSON PATH, WITHOUT_ARRAY_WRAPPER
		);


		--buscamos los perfiles asociados del usuarios

		set @jsonPerfiles = (
			select
				  t1.perfil_id
				, t1.codigo
				, t1.abreviatura
				, t1.descripcion
			from 
				PERFIL as t1
				inner join USUARIOPERFIL as t2 on t1.perfil_id = t2.perfil_id
				inner join USUARIO as t3 on t2.usuario_id = t3.usuario_id
			where
					t1.estado = 1
				and t2.estado = 1
				and t3.usuario_id = @usuario_id
			FOR JSON PATH, INCLUDE_NULL_VALUES
		);

		--agregamos la propiedad de modulos al json de usuario
		SET @jsonUsuario = JSON_MODIFY(@jsonUsuario, '$.lista_perfiles', JSON_QUERY(@jsonPerfiles));

		--seteamos el valor del json de salida
		SET @usuarioLogin = @jsonUsuario;

		--actualizamos el mensaje de salida
		set @message = 'Acceso exitoso';

	END
	ELSE BEGIN 
		set @error = ISNULL(@error, 1);
		set @message = ISNULL(@message, 'Ocurrio un error al intentar iniciar sesión, comuniquese con el administrador del sistema.');
	END

END


GO
/****** Object:  StoredProcedure [dbo].[USP_INS_PERFIL]    Script Date: 7/06/2024 11:16:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE    PROCEDURE [dbo].[USP_INS_PERFIL]
	@codigo varchar(10) = NULL,
	@abreviatura varchar(50) = NULL, 
	@descripcion varchar(150) = NULL,
	@usuario_reg varchar(20) = NULL,
	@error BIT = NULL OUTPUT,
	@message NVARCHAR(500) = NULL OUTPUT
AS
BEGIN
	
	--Inicializa como false
	SET @error = 0;

	-- validamos si existe un perfil con la misma descripcion
	IF EXISTS(SELECT TOP(1) t1.* FROM [dbo].[perfil] AS t1 WITH(NOLOCK) WHERE t1.ESTADO = 1 AND  TRIM(LOWER(@descripcion)) = TRIM(LOWER(t1.descripcion))) 
	BEGIN
		SET @error = 1;
		SET @message = 'Ya existe un perfil registrado con la descripción ' + TRIM(LOWER(@descripcion));
	END

	-- validamos si existe un perfil con la misma abreviatura
	IF EXISTS(SELECT TOP(1) t1.* FROM [dbo].[perfil] AS t1 WITH(NOLOCK) WHERE t1.ESTADO = 1 AND  TRIM(LOWER(@abreviatura)) = TRIM(LOWER(t1.abreviatura))) 
	BEGIN
		SET @error = 1;
		SET @message = 'Ya existe un perfil registrado con la abreviatura ' + TRIM(LOWER(@abreviatura));
	END

	-- validamos la cantidad de digitos del codigo
	IF ((select LEN(TRIM(@codigo))) <> 5)
	BEGIN
		SET @error = 1;
		SET @message = 'El campo codigo debe tener 5 digitos';
	END

	-- validamos si existe el mismo codigo de perfil
	IF EXISTS(SELECT TOP(1) t1.* FROM [dbo].[perfil] AS t1 WITH(NOLOCK) WHERE t1.ESTADO = 1 AND  TRIM(LOWER(@codigo)) = TRIM(LOWER(t1.codigo))) 
	BEGIN
		SET @error = 1;
		SET @message = 'Ya existe un perfil registrado con el codigo ' + TRIM(LOWER(@abreviatura));
	END
 
	IF(@error = 0) 
	BEGIN

		INSERT INTO dbo.[perfil] (
			codigo,
			abreviatura,
			descripcion,
			usuario_reg,
			fecha_reg
		)
		VALUES (
			@codigo,
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
/****** Object:  StoredProcedure [dbo].[USP_SEL_PERFIL]    Script Date: 7/06/2024 11:16:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[USP_SEL_PERFIL](
	@perfil_id INT,
	@filtro varchar(max) = null,
	@error BIT = NULL OUTPUT,
	@message NVARCHAR(500) = NULL OUTPUT
)
AS
BEGIN

	set @error = 0;

	SELECT
		T1.perfil_id, 
		T1.codigo, 
		T1.abreviatura, 
		T1.descripcion, 
		T1.estado, 
		T1.usuario_reg, 
		T1.fecha_reg, 
		T1.usuario_act, 
		T1.fecha_act 
	FROM 
		[dbo].PERFIL  T1 WITH(NOLOCK)
	WHERE
		(@perfil_id IS NULL OR T1.perfil_id = @perfil_id) AND
		(@FILTRO IS NULL OR (RTRIM(LTRIM(ISNULL(T1.codigo, ''))) + ' ' +
			RTRIM(LTRIM(ISNULL(T1.abreviatura, ''))) + ' ' +
			RTRIM(LTRIM(ISNULL(T1.descripcion, '')))) LIKE '%' + @filtro + '%' COLLATE Latin1_General_CI_AI);

		-- seteamos mensaje de salida
		set @message = 'Consulta exitosa';


END

GO
/****** Object:  StoredProcedure [dbo].[USP_UPD_PERFIL]    Script Date: 7/06/2024 11:16:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE    PROCEDURE [dbo].[USP_UPD_PERFIL]
	@perfil_id int = NULL,
	@codigo varchar(10) = NULL,
	@abreviatura varchar(50) = NULL, 
	@descripcion varchar(150) = NULL,
	@usuario_act varchar(20) = NULL,
	@error BIT = NULL OUTPUT,
	@message NVARCHAR(500) = NULL OUTPUT
AS
BEGIN
	
	--Inicializa como false
	SET @error = 0;

	-- validamos si existe un perfil con la misma descripcion
	IF EXISTS(SELECT TOP(1) t1.* FROM [dbo].[perfil] AS t1 WITH(NOLOCK) WHERE t1.ESTADO = 1 AND  TRIM(LOWER(@descripcion)) = TRIM(LOWER(t1.descripcion)) AND @perfil_id <> t1.perfil_id) 
	BEGIN
		SET @error = 1;
		SET @message = 'Ya existe un perfil registrado con la descripción ' + TRIM(LOWER(@descripcion));
	END

	-- validamos si existe un perfil con la misma abreviatura
	IF EXISTS(SELECT TOP(1) t1.* FROM [dbo].[perfil] AS t1 WITH(NOLOCK) WHERE t1.ESTADO = 1 AND  TRIM(LOWER(@abreviatura)) = TRIM(LOWER(t1.abreviatura)) AND @perfil_id <> t1.perfil_id) 
	BEGIN
		SET @error = 1;
		SET @message = 'Ya existe un perfil registrado con la abreviatura ' + TRIM(LOWER(@abreviatura));
	END

	-- validamos la cantidad de digitos del codigo
	IF ((select LEN(TRIM(@codigo))) <> 5)
	BEGIN
		SET @error = 1;
		SET @message = 'El campo codigo debe tener 5 digitos';
	END

	-- validamos si existe el mismo codigo de perfil
	IF EXISTS(SELECT TOP(1) t1.* FROM [dbo].[perfil] AS t1 WITH(NOLOCK) WHERE t1.ESTADO = 1 AND  TRIM(LOWER(@codigo)) = TRIM(LOWER(t1.codigo)) AND @perfil_id <> t1.perfil_id) 
	BEGIN
		SET @error = 1;
		SET @message = 'Ya existe un perfil registrado con el codigo ' + TRIM(LOWER(@abreviatura));
	END
 
	IF(@error = 0) 
	BEGIN

		UPDATE dbo.[perfil]
		set 
			codigo = @codigo,
			abreviatura = @abreviatura,
			descripcion = @descripcion,
			usuario_act = @usuario_act,
			fecha_act = GETDATE()
		where
			perfil_id = @perfil_id;

		-- setemos el mensaje de salida
		set @message = 'Información actualizada satisfactoriamente';

	END
END

GO
