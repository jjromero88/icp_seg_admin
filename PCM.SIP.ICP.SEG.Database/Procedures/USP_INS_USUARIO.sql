USE [pcm_icp_seg]
GO
/****** Object:  StoredProcedure [dbo].[USP_INS_USUARIO]    Script Date: 12/06/2024 17:13:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE OR ALTER PROCEDURE [dbo].[USP_INS_USUARIO]
	@persona_id int = null,
	@username varchar(20) = null,
	@password varchar(150) = null,
	@numdocumento varchar(20) = null,
	@nombre_completo varchar(100) = null,
	@interno bit = null,
	@perfiles varchar(max) = null,
	@usuario_reg varchar(20) = null,
	@error BIT = null OUTPUT,
	@message NVARCHAR(500) = null OUTPUT
AS
BEGIN
	
	--Inicializa como false
	SET @error = 0;

	-- validamos si el nombre de usuario ya existe
	IF EXISTS(SELECT TOP(1) t1.* FROM [dbo].[USUARIO] AS t1 WITH(NOLOCK) WHERE t1.ESTADO = 1 AND  TRIM(LOWER(@username)) = TRIM(LOWER(t1.username))) 
	BEGIN
		SET @error = 1;
		SET @message = 'Ya existe un usuario con el nombre ' + TRIM(LOWER(@username));
	END

	-- validamos si existe un usuario para el mismo persona_id
	IF EXISTS(SELECT TOP(1) t1.* FROM [dbo].[USUARIO] AS t1 WITH(NOLOCK) WHERE t1.ESTADO = 1 AND  @persona_id = T1.persona_id) 
	BEGIN
		SET @error = 1;
		SET @message = 'La persona que intenta registrar ya tiene un usuario asociado';
	END

	-- validamos si existe un usuario con el mismo numero de documento asociado
	IF EXISTS(SELECT TOP(1) t1.* FROM [dbo].[USUARIO] AS t1 WITH(NOLOCK) WHERE t1.ESTADO = 1 AND  TRIM(LOWER(@numdocumento)) = TRIM(LOWER(t1.numdocumento))) 
	BEGIN
		SET @error = 1;
		SET @message = 'Ya existe un usuario registrado con el número de documento ' + TRIM(LOWER(@numdocumento));
	END

	-- validamos la cantidad de digitos del usuario
	IF ((select LEN(TRIM(@username))) < 5)
	BEGIN
		SET @error = 1;
		SET @message = 'El nombre de usuario debe tener como mínimo 5 digitos';
	END

	-- validamos que tenga por lo menos un perfil
	IF( (select COUNT(*) from string_split(@perfiles, ',')) > 0 )
	BEGIN
		SET @error = 1;
		SET @message = 'Debe seleccionar un perfil como mínimo';
	END
 
	IF(@error = 0) 
	BEGIN

		Declare @usuario_id int = null;

		INSERT INTO dbo.USUARIO(
			persona_id,
			username,
			password,
			numdocumento,
			nombre_completo,
			interno,
			usuario_reg,
			fecha_reg
		)
		VALUES (
			@persona_id,
			TRIM(LOWER(@username)),
			TRIM(@password),
			TRIM(@numdocumento),
			TRIM(@nombre_completo),
			@interno,
			case when @usuario_reg is null then 'sys' else @usuario_reg end,
			GETDATE()
		);

		-- seteamos el id del usuario recien insertado
		set @usuario_id = @@IDENTITY;

		-- insertamos los perfiles del usuario en UsuarioPerfil
		insert into dbo.USUARIOPERFIL
		(usuario_id, perfil_id, estado, usuario_reg, fecha_reg)
		select @usuario_id, value, 1, @usuario_reg, GETDATE() from string_split(@perfiles, ',')

		-- setemos el mensaje de salida
		set @message = 'Información registrada satisfactoriamente';

	END
END

