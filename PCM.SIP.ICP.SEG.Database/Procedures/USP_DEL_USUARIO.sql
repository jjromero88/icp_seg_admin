USE [pcm_icp_seg]
GO
/****** Object:  StoredProcedure [dbo].[USP_DEL_USUARIO]    Script Date: 12/06/2024 18:07:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE OR ALTER   PROCEDURE [dbo].[USP_DEL_USUARIO](
	@usuario_id int = NULL,
	@usuario_act varchar(20) = NULL,
	@error BIT = NULL OUTPUT,
	@message NVARCHAR(500) = NULL OUTPUT
)
AS
BEGIN
	SET @error = 0;

	-- validamos si existe el usuario que desea eliminar
	IF EXISTS(SELECT TOP(1) t1.* FROM [dbo].USUARIO AS t1 WITH(NOLOCK) WHERE t1.usuario_id = @usuario_id) 
	BEGIN
		SET @error = 1;
		SET @message = 'El usuario que desea Eliminar no existe';
	END
	
	IF(@error = 0)
	BEGIN

		--Se elimina el perfil actualizando sus datos de auditoria
		UPDATE 
		[dbo].USUARIO
		SET 
		estado = 0,
		usuario_act = @usuario_act
		WHERE
		usuario_id = @usuario_id;

		-- desactivamos los perfiles asociados al usuario
		UPDATE USUARIOPERFIL SET estado = 0, usuario_act = @usuario_act, fecha_act = GETDATE() where usuario_id = @usuario_id and estado = 1;

		-- setemos el mensaje de salida
		set @message = 'Información eliminada satisfactoriamente';

	END


END

