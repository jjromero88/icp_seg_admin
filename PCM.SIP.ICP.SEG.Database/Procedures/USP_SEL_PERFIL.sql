USE [pcm_icp_seg]
GO
/****** Object:  StoredProcedure [dbo].[USP_SEL_PERFIL]    Script Date: 4/06/2024 23:46:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER   PROCEDURE [dbo].[USP_SEL_PERFIL](
	@perfil_id INT,
	@filtro varchar(max) = null,
	@error BIT = NULL OUTPUT,
	@message NVARCHAR(500) = NULL OUTPUT
)
AS
BEGIN

	set @error = 0;

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
		(@perfil_id IS NULL OR T1.perfil_id = @perfil_id) AND
		(@FILTRO IS NULL OR (RTRIM(LTRIM(ISNULL(T1.codigo, ''))) + ' ' +
			RTRIM(LTRIM(ISNULL(T1.abreviatura, ''))) + ' ' +
			RTRIM(LTRIM(ISNULL(T1.descripcion, '')))) LIKE '%' + @filtro + '%' COLLATE Latin1_General_CI_AI);

		-- seteamos mensaje de salida
		set @message = 'Consulta exitosa';


END

