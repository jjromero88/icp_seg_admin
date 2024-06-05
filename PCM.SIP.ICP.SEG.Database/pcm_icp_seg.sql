USE [pcm_icp_seg]
GO
/****** Object:  Table [dbo].[BLOQUEOUSUARIO]    Script Date: 3/06/2024 21:31:45 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOG_ACCESO]    Script Date: 3/06/2024 21:31:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOG_ACCESO](
	[logacceso_id] [int] IDENTITY(1,1) NOT NULL,
	[usuario_id] [int] NULL,
	[username] [varchar](20) NULL,
	[password] [varchar](150) NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOG_BLOQUEO]    Script Date: 3/06/2024 21:31:45 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PERFIL]    Script Date: 3/06/2024 21:31:45 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PERFILOPCION]    Script Date: 3/06/2024 21:31:45 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SISTEMAOPCION]    Script Date: 3/06/2024 21:31:45 ******/
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
	[estado] [bit] NULL,
	[usuario_reg] [varchar](20) NULL,
	[fecha_reg] [datetime] NULL,
	[usuactio_act] [varchar](20) NULL,
	[fecha_act] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[sistemaopcion_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USUARIO]    Script Date: 3/06/2024 21:31:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USUARIO](
	[usuario_id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](20) NULL,
	[password] [varchar](15) NULL,
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
PRIMARY KEY CLUSTERED 
(
	[usuario_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USUARIOPERFIL]    Script Date: 3/06/2024 21:31:45 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
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
ALTER TABLE [dbo].[SISTEMAOPCION] ADD  DEFAULT ((0)) FOR [num_orden]
GO
ALTER TABLE [dbo].[SISTEMAOPCION] ADD  DEFAULT ((1)) FOR [estado]
GO
ALTER TABLE [dbo].[SISTEMAOPCION] ADD  DEFAULT ('sys') FOR [usuario_reg]
GO
ALTER TABLE [dbo].[SISTEMAOPCION] ADD  DEFAULT (getdate()) FOR [fecha_reg]
GO
ALTER TABLE [dbo].[USUARIO] ADD  DEFAULT ((1)) FOR [estado]
GO
ALTER TABLE [dbo].[USUARIO] ADD  DEFAULT ('sys') FOR [usuario_reg]
GO
ALTER TABLE [dbo].[USUARIO] ADD  DEFAULT (getdate()) FOR [fecha_reg]
GO
ALTER TABLE [dbo].[USUARIOPERFIL] ADD  DEFAULT ((1)) FOR [estado]
GO
ALTER TABLE [dbo].[USUARIOPERFIL] ADD  DEFAULT ('sys') FOR [usuario_reg]
GO
ALTER TABLE [dbo].[USUARIOPERFIL] ADD  DEFAULT (getdate()) FOR [fecha_reg]
GO
ALTER TABLE [dbo].[BLOQUEOUSUARIO]  WITH CHECK ADD FOREIGN KEY([usuario_id])
REFERENCES [dbo].[USUARIO] ([usuario_id])
GO
ALTER TABLE [dbo].[LOG_ACCESO]  WITH CHECK ADD FOREIGN KEY([usuario_id])
REFERENCES [dbo].[USUARIO] ([usuario_id])
GO
ALTER TABLE [dbo].[LOG_BLOQUEO]  WITH CHECK ADD FOREIGN KEY([usuario_id])
REFERENCES [dbo].[USUARIO] ([usuario_id])
GO
ALTER TABLE [dbo].[PERFILOPCION]  WITH CHECK ADD FOREIGN KEY([perfil_id])
REFERENCES [dbo].[PERFIL] ([perfil_id])
GO
ALTER TABLE [dbo].[PERFILOPCION]  WITH CHECK ADD FOREIGN KEY([sistemaopcion_id])
REFERENCES [dbo].[SISTEMAOPCION] ([sistemaopcion_id])
GO
ALTER TABLE [dbo].[SISTEMAOPCION]  WITH CHECK ADD FOREIGN KEY([padre_id])
REFERENCES [dbo].[SISTEMAOPCION] ([sistemaopcion_id])
GO
ALTER TABLE [dbo].[USUARIOPERFIL]  WITH CHECK ADD FOREIGN KEY([perfil_id])
REFERENCES [dbo].[PERFIL] ([perfil_id])
GO
ALTER TABLE [dbo].[USUARIOPERFIL]  WITH CHECK ADD FOREIGN KEY([usuario_id])
REFERENCES [dbo].[USUARIO] ([usuario_id])
GO
/****** Object:  StoredProcedure [dbo].[USP_DEL_PERFIL]    Script Date: 3/06/2024 21:31:45 ******/
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
/****** Object:  StoredProcedure [dbo].[USP_GET_PERFIL]    Script Date: 3/06/2024 21:31:45 ******/
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
	IF EXISTS(SELECT TOP(1) t1.* FROM [dbo].[perfil] AS t1 WITH(NOLOCK) WHERE t1.perfil_id = @perfil_id) 
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
/****** Object:  StoredProcedure [dbo].[USP_INS_PERFIL]    Script Date: 3/06/2024 21:31:45 ******/
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
/****** Object:  StoredProcedure [dbo].[USP_SEL_PERFIL]    Script Date: 3/06/2024 21:31:45 ******/
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
/****** Object:  StoredProcedure [dbo].[USP_UPD_PERFIL]    Script Date: 3/06/2024 21:31:45 ******/
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
