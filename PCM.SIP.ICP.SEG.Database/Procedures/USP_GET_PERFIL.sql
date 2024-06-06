USE [pcm_icp_seg]
GO
/****** Object:  StoredProcedure [dbo].[USP_GET_PERFIL]    Script Date: 6/06/2024 14:50:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER   PROCEDURE [dbo].[USP_GET_PERFIL](
	@perfil_id INT,
	@error BIT = NULL OUTPUT,
	@message NVARCHAR(500) = NULL OUTPUT
)
AS
BEGIN

	set @error = 0

	-- validamos si existe el perfil que desea consultar
	IF NOT EXISTS(SELECT TOP(1) t1.* FROM [dbo].[perfil] AS t1 WITH(NOLOCK) WHERE t1.perfil_id = @perfil_id) 
	BEGIN
		SET @error = 1;
		SET @message = 'El perfil que desea consultar no existe';
	END
	
	IF(@error = 0)
	BEGIN
		SELECT
			 T1.perfil_id, 
			 T1.codigo, 
			 T1.abreviatura, 
			 T1.descripcion, 
			 T1.estado, 
			 T1.usuario_reg, 
			 T1.fecha_reg, 
			 T1.usuario_act, 
			 T1.fecha_act 
		FROM 
			[dbo].PERFIL  T1 WITH(NOLOCK)
		WHERE
			T1.perfil_id = @perfil_id;

		set @message = 'Consulta exitosa';
	END


END

