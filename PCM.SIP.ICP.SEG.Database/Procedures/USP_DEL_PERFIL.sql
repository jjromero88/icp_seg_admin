USE [pcm_icp_seg]
GO
/****** Object:  StoredProcedure [dbo].[USP_DEL_PERFIL]    Script Date: 11/06/2024 19:29:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER   PROCEDURE [dbo].[USP_DEL_PERFIL](
	@perfil_id int = NULL,
	@usuario_act varchar(20) = NULL,
	@error BIT = NULL OUTPUT,
	@message NVARCHAR(500) = NULL OUTPUT
)
AS
BEGIN
	SET @error = 0;

	-- validamos si existe el perfil que desea eliminar
	IF NOT EXISTS(SELECT TOP(1) t1.* FROM [dbo].[perfil] AS t1 WITH(NOLOCK) WHERE t1.perfil_id = @perfil_id) 
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

