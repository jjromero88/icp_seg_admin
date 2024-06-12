USE [pcm_icp_seg]
GO
/****** Object:  StoredProcedure [dbo].[USP_GET_USUARIO]    Script Date: 12/06/2024 18:32:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE OR ALTER   PROCEDURE [dbo].[USP_GET_USUARIO](
	@usuario_id INT,
	@error BIT = NULL OUTPUT,
	@message NVARCHAR(500) = NULL OUTPUT
)
AS
BEGIN

	set @error = 0

	-- validamos si existe el usuario que desea consultar
	IF NOT EXISTS(SELECT TOP(1) t1.* FROM [dbo].USUARIO AS t1 WITH(NOLOCK) WHERE t1.usuario_id = @usuario_id) 
	BEGIN
		SET @error = 1;
		SET @message = 'El usuario que desea consultar no existe';
	END
	
	IF(@error = 0)
	BEGIN
		SELECT
			T1.usuario_id,
			T1.persona_id, 
			T1.username, 
			T1.password, 
			T1.numdocumento, 
			T1.nombre_completo, 
			T1.interno,
			T1.estado, 
			T1.usuario_reg, 
			T1.fecha_reg, 
			T1.usuario_act, 
			T1.fecha_act 
		FROM 
			[dbo].USUARIO  T1 WITH(NOLOCK)
		WHERE
			T1.usuario_id = @usuario_id;

		set @message = 'Consulta exitosa';
	END


END

