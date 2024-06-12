USE [pcm_icp_eva]
GO
/****** Object:  StoredProcedure [dbo].[USP_SEL_PERSONA]    Script Date: 12/06/2024 14:13:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE OR ALTER PROCEDURE [dbo].[USP_SEL_PERSONA](
	@PERSONA_id int = null,
	@filtro varchar(max) = null,
	@error BIT = NULL OUTPUT,
	@message NVARCHAR(500) = NULL OUTPUT
)
AS
BEGIN

	set @error = 0;

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
		[dbo].PERSONA  T1 WITH(NOLOCK)
	WHERE
		T1.estado = 1 AND
		(@PERSONA_id IS NULL OR T1.PERSONA_id = @PERSONA_id) AND
		(@FILTRO IS NULL OR (RTRIM(LTRIM(ISNULL(T1.nombres, ''))) + ' ' +
			RTRIM(LTRIM(ISNULL(T1.apellido_paterno, ''))) + ' ' +
			RTRIM(LTRIM(ISNULL(T1.apellido_materno, ''))) + ' ' +
			RTRIM(LTRIM(ISNULL(T1.numdocumento, '')))) LIKE '%' + @filtro + '%' COLLATE Latin1_General_CI_AI);

		-- seteamos mensaje de salida
		set @message = 'Consulta exitosa';


END

