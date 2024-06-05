USE [pcm_icp_seg]
GO
/****** Object:  StoredProcedure [dbo].[USP_INS_PERFIL]    Script Date: 4/06/2024 23:46:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER    PROCEDURE [dbo].[USP_INS_PERFIL]
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

