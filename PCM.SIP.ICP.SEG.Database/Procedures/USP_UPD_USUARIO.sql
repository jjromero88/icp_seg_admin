USE [pcm_icp_seg]
GO
/****** Object:  StoredProcedure [dbo].[USP_UPD_USUARIO]    Script Date: 12/06/2024 17:32:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE OR ALTER    PROCEDURE [dbo].[USP_UPD_USUARIO]
	@usuario_id int = null,
	@persona_id int = null,
	@username varchar(20) = null,
	@password varchar(150) = null,
	@numdocumento varchar(20) = null,
	@nombre_completo varchar(100) = null,
	@interno bit = null,
	@perfiles varchar(max) = null,
	@usuario_act varchar(20) = NULL,
	@error BIT = NULL OUTPUT,
	@message NVARCHAR(500) = NULL OUTPUT
AS
BEGIN
	
	--Inicializa como false
	SET @error = 0;

	-- validamos si existe el usuario que desea actualizar
	IF EXISTS(SELECT TOP(1) t1.* FROM [dbo].USUARIO AS t1 WITH(NOLOCK) WHERE t1.ESTADO = 1 AND  @usuario_id = t1.usuario_id) 
	BEGIN
		SET @error = 1;
		SET @message = 'El usuario que intenta actualizar no existe';
	END

	-- validamos si el nombre de usuario ya existe
	IF EXISTS(SELECT TOP(1) t1.* FROM [dbo].[USUARIO] AS t1 WITH(NOLOCK) WHERE t1.ESTADO = 1 AND  TRIM(LOWER(@username)) = TRIM(LOWER(t1.username)) and t1.usuario_id <> @usuario_id) 
	BEGIN
		SET @error = 1;
		SET @message = 'Ya existe un usuario con el nombre ' + TRIM(LOWER(@username));
	END

	-- validamos si existe un usuario para el mismo persona_id
	IF EXISTS(SELECT TOP(1) t1.* FROM [dbo].[USUARIO] AS t1 WITH(NOLOCK) WHERE t1.ESTADO = 1 AND  @persona_id = T1.persona_id and t1.usuario_id <> @usuario_id) 
	BEGIN
		SET @error = 1;
		SET @message = 'La persona que intenta registrar ya tiene un usuario asociado';
	END

	-- validamos si existe un usuario con el mismo numero de documento asociado
	IF EXISTS(SELECT TOP(1) t1.* FROM [dbo].[USUARIO] AS t1 WITH(NOLOCK) WHERE t1.ESTADO = 1 AND  TRIM(LOWER(@numdocumento)) = TRIM(LOWER(t1.numdocumento)) and t1.usuario_id <> @usuario_id)
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
		
		-- 1. actualizamos la informacion del usuario
		
		UPDATE dbo.USUARIO
		set 
			persona_id = @persona_id,
			username = TRIM(LOWER(@username)),
			password = TRIM(LOWER(@password)),
			numdocumento = TRIM(@numdocumento),
			nombre_completo = TRIM(@nombre_completo),
			interno = @interno,
			usuario_act = @usuario_act,
			fecha_act = GETDATE()
		where
			usuario_id = @usuario_id;


		-- 2. actualizamos los perfiles del usuario

		--Desactivamos los perfiles actuales del usuario
		update USUARIOPERFIL SET estado = 0, FECHA_ACT = GETDATE(), usuario_act = @usuario_act WHERE usuario_id = @usuario_id;

		--Declaramos una tabla temporal
		DECLARE @UsuarioPerfil TABLE
		(usuario_id int, perfil_id int)

		--insertamos los perfiles en la tabla temporal
		insert into @UsuarioPerfil (usuario_id, perfil_id)
		select @usuario_id, value from string_split(@perfiles, ',');

		--2.1 Insertamos los perfiles nuevos
		insert into dbo.USUARIOPERFIL
		(usuario_id, perfil_id, estado, usuario_act, fecha_act)
		select 
		@usuario_id, T2.usuario_id, 1, @usuario_act, GETDATE()
		FROM
		dbo.USUARIOPERFIL AS T1 WITH(NOLOCK)
		RIGHT JOIN @UsuarioPerfil T2 ON T1.usuario_id = T2.usuario_id  AND T1.perfil_id = T2.perfil_id
		WHERE	T1.usuario_id IS NULL AND T1.perfil_id IS NULL

		-- 2.2 Actualizamos los perfiles de usuario que ya existian
		UPDATE T1
		SET 				  
		  T1.usuario_id = T2.usuario_id
		, T1.perfil_id = T2.perfil_id
		, T1.usuario_act = @usuario_act
		, T1.ESTADO = 1
		, T1.FECHA_ACT = GETDATE()
		FROM dbo.USUARIOPERFIL AS T1 WITH(NOLOCK)
		INNER JOIN @UsuarioPerfil AS T2 ON T1.usuario_id = T2.usuario_id  AND T1.perfil_id = T2.perfil_id

		-- setemos el mensaje de salida
		set @message = 'Información actualizada satisfactoriamente';

	END
END

