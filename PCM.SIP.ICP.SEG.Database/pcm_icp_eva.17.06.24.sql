USE [pcm_icp_eva]
GO
/****** Object:  Table [dbo].[ENTIDADGRUPO]    Script Date: 17/06/2024 10:19:52 ******/
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
/****** Object:  Table [dbo].[PERSONA]    Script Date: 17/06/2024 10:19:52 ******/
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
SET IDENTITY_INSERT [dbo].[ENTIDADGRUPO] ON 
GO
INSERT [dbo].[ENTIDADGRUPO] ([entidadgrupo_id], [codigo], [abreviatura], [descripcion], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (1, N'00001', N'Poder Ejecutivo', N'PE', 1, N'sys', CAST(N'2024-06-11T20:44:25.650' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ENTIDADGRUPO] ([entidadgrupo_id], [codigo], [abreviatura], [descripcion], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (2, N'00002', N'Poder Judicial', N'PJ', 1, N'sys', CAST(N'2024-06-11T20:44:37.367' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ENTIDADGRUPO] ([entidadgrupo_id], [codigo], [abreviatura], [descripcion], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (3, N'00003', N'Poder Legislativo', N'PL', 1, N'sys', CAST(N'2024-06-11T20:44:49.307' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ENTIDADGRUPO] ([entidadgrupo_id], [codigo], [abreviatura], [descripcion], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (4, N'00004', N'OCA', N'Organismos Constitucionales Autonomos', 1, N'sys', CAST(N'2024-06-11T20:45:08.993' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ENTIDADGRUPO] ([entidadgrupo_id], [codigo], [abreviatura], [descripcion], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (5, N'00005', N'GR', N'Gobierno Regional', 1, N'sys', CAST(N'2024-06-11T20:45:24.660' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[ENTIDADGRUPO] OFF
GO
SET IDENTITY_INSERT [dbo].[PERSONA] ON 
GO
INSERT [dbo].[PERSONA] ([persona_id], [nombres], [apellido_paterno], [apellido_materno], [numdocumento], [email], [telefono_movil], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (12, N'Juan Jose', N'Romero', N'Lizano', N'45338843', N'juanjor1988@pcm.gob.pe', N'963258777', 1, N'jjromero88', CAST(N'2024-06-13T20:30:27.170' AS DateTime), N'jjromero88', CAST(N'2024-06-14T17:22:06.257' AS DateTime))
GO
INSERT [dbo].[PERSONA] ([persona_id], [nombres], [apellido_paterno], [apellido_materno], [numdocumento], [email], [telefono_movil], [estado], [usuario_reg], [fecha_reg], [usuario_act], [fecha_act]) VALUES (13, N'Jessica', N'Alvarez', N'Arbi', N'09012254', N'jessica01@pcm.gob.pe', N'965877025', 1, N'jjromero88', CAST(N'2024-06-14T15:54:55.887' AS DateTime), NULL, CAST(N'2024-06-14T17:38:51.740' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[PERSONA] OFF
GO
ALTER TABLE [dbo].[ENTIDADGRUPO] ADD  DEFAULT ((1)) FOR [estado]
GO
ALTER TABLE [dbo].[ENTIDADGRUPO] ADD  DEFAULT ('sys') FOR [usuario_reg]
GO
ALTER TABLE [dbo].[ENTIDADGRUPO] ADD  DEFAULT (getdate()) FOR [fecha_reg]
GO
ALTER TABLE [dbo].[PERSONA] ADD  DEFAULT ((1)) FOR [estado]
GO
ALTER TABLE [dbo].[PERSONA] ADD  DEFAULT ('sys') FOR [usuario_reg]
GO
ALTER TABLE [dbo].[PERSONA] ADD  DEFAULT (getdate()) FOR [fecha_reg]
GO
/****** Object:  StoredProcedure [dbo].[USP_DEL_ENTIDADGRUPO]    Script Date: 17/06/2024 10:19:52 ******/
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
/****** Object:  StoredProcedure [dbo].[USP_DEL_PERSONA]    Script Date: 17/06/2024 10:19:52 ******/
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
/****** Object:  StoredProcedure [dbo].[USP_GET_ENTIDADGRUPO]    Script Date: 17/06/2024 10:19:52 ******/
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
/****** Object:  StoredProcedure [dbo].[USP_GET_PERSONA]    Script Date: 17/06/2024 10:19:52 ******/
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
/****** Object:  StoredProcedure [dbo].[USP_INS_ENTIDADGRUPO]    Script Date: 17/06/2024 10:19:52 ******/
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
/****** Object:  StoredProcedure [dbo].[USP_INS_PERSONA]    Script Date: 17/06/2024 10:19:52 ******/
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
/****** Object:  StoredProcedure [dbo].[USP_SEL_ENTIDADGRUPO]    Script Date: 17/06/2024 10:19:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create       PROCEDURE [dbo].[USP_SEL_ENTIDADGRUPO](
	@entidadgrupo_id int = null,
	@filtro varchar(max) = null,
	@error BIT = NULL OUTPUT,
	@message NVARCHAR(500) = NULL OUTPUT
)
AS
BEGIN

	set @error = 0;

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
		[dbo].ENTIDADGRUPO  T1 WITH(NOLOCK)
	WHERE
		T1.estado = 1 AND
		(@entidadgrupo_id IS NULL OR T1.entidadgrupo_id = @entidadgrupo_id) AND
		(@FILTRO IS NULL OR (RTRIM(LTRIM(ISNULL(T1.codigo, ''))) + ' ' +
			RTRIM(LTRIM(ISNULL(T1.abreviatura, ''))) + ' ' +
			RTRIM(LTRIM(ISNULL(T1.descripcion, '')))) LIKE '%' + @filtro + '%' COLLATE Latin1_General_CI_AI);

		-- seteamos mensaje de salida
		set @message = 'Consulta exitosa';


END

GO
/****** Object:  StoredProcedure [dbo].[USP_SEL_PERSONA]    Script Date: 17/06/2024 10:19:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[USP_SEL_PERSONA](
	@PERSONA_id int = null,
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
		(@PERSONA_id IS NULL OR T1.PERSONA_id = @PERSONA_id) AND
		(@FILTRO IS NULL OR (RTRIM(LTRIM(ISNULL(T1.nombres, ''))) + ' ' +
			RTRIM(LTRIM(ISNULL(T1.apellido_paterno, ''))) + ' ' +
			RTRIM(LTRIM(ISNULL(T1.apellido_materno, ''))) + ' ' +
			RTRIM(LTRIM(ISNULL(T1.numdocumento, '')))) LIKE '%' + @filtro + '%' COLLATE Latin1_General_CI_AI);

		-- seteamos mensaje de salida
		set @message = 'Consulta exitosa';


END

GO
/****** Object:  StoredProcedure [dbo].[USP_UPD_ENTIDADGRUPO]    Script Date: 17/06/2024 10:19:52 ******/
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
/****** Object:  StoredProcedure [dbo].[USP_UPD_PERSONA]    Script Date: 17/06/2024 10:19:52 ******/
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
			fecha_act = GETDATE()
		where
			persona_id = @persona_id;

		-- setemos el mensaje de salida
		set @message = 'Información actualizada satisfactoriamente';

	END
END

GO
