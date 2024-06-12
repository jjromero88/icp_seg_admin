USE [pcm_icp_eva]
GO
/****** Object:  StoredProcedure [dbo].[USP_INS_PERSONA]    Script Date: 12/06/2024 13:51:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE OR ALTER PROCEDURE [dbo].[USP_INS_PERSONA]
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

