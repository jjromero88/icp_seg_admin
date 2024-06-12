USE [pcm_icp_eva]
GO
/****** Object:  StoredProcedure [dbo].[USP_UPD_PERSONA]    Script Date: 12/06/2024 14:00:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE OR ALTER PROCEDURE [dbo].[USP_UPD_PERSONA]
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

