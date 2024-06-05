USE [pcm_icp_seg]
GO
/****** Object:  StoredProcedure [dbo].[USP_UPD_PERFIL]    Script Date: 4/06/2024 23:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER    PROCEDURE [dbo].[USP_UPD_PERFIL]
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

