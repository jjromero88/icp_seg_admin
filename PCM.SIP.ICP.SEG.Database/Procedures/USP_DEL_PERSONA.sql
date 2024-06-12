USE [pcm_icp_eva]
GO
/****** Object:  StoredProcedure [dbo].[USP_DEL_PERSONA]    Script Date: 12/06/2024 14:11:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE OR ALTER PROCEDURE [dbo].[USP_DEL_PERSONA](
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

