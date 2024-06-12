USE [pcm_icp_eva]
GO
/****** Object:  StoredProcedure [dbo].[USP_GET_PERSONA]    Script Date: 12/06/2024 14:06:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE OR ALTER     PROCEDURE [dbo].[USP_GET_PERSONA](
	@persona_id INT,
	@error BIT = NULL OUTPUT,
	@message NVARCHAR(500) = NULL OUTPUT
)
AS
BEGIN

	set @error = 0

	-- validamos si existe la persona que desea modificar
	IF NOT EXISTS(SELECT TOP(1) t1.* FROM [dbo].[PERSONA] AS t1 WITH(NOLOCK) WHERE t1.persona_id = @persona_id) 
	BEGIN
		SET @error = 1;
		SET @message = 'La persona que desea consultar no existe';
	END
	
	IF(@error = 0)
	BEGIN
		SELECT
			 T1.persona_id, 
			 T1.nombres, 
			 T1.apellido_paterno, 
			 T1.apellido_materno, 
			 T1.numdocumento, 
			 T1.email, 
			 T1.telefono_movil, 
			 T1.estado, 
			 T1.usuario_reg, 
			 T1.fecha_reg, 
			 T1.usuario_act, 
			 T1.fecha_act
		FROM 
			[dbo].[PERSONA]  T1 WITH(NOLOCK)
		WHERE
			T1.persona_id = @persona_id;

		set @message = 'Consulta exitosa';
	END


END

