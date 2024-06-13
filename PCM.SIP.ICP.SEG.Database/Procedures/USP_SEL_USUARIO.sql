USE [pcm_icp_seg]
GO
/****** Object:  StoredProcedure [dbo].[USP_SEL_USUARIO]    Script Date: 12/06/2024 19:03:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER     PROCEDURE [dbo].[USP_SEL_USUARIO](
	@usuario_id INT,
	@filtro varchar(max) = null,
	@error BIT = NULL OUTPUT,
	@message NVARCHAR(500) = NULL OUTPUT
)
AS
BEGIN

	set @error = 0;

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
		T1.fecha_act,
		(SELECT 
				P.codigo,
				P.descripcion,
				P.abreviatura
			FROM  [dbo].USUARIOPERFIL UP
			JOIN  [dbo].PERFIL P ON UP.perfil_id = P.perfil_id
			WHERE  UP.usuario_id = T1.usuario_id AND UP.estado = 1
			FOR JSON PATH
		) AS jsonperfiles
	FROM 
		[dbo].USUARIO  T1 WITH(NOLOCK)
	WHERE
		(@usuario_id IS NULL OR T1.usuario_id = @usuario_id) AND
		(@FILTRO IS NULL OR (RTRIM(LTRIM(ISNULL(T1.username, ''))) + ' ' +
			RTRIM(LTRIM(ISNULL(T1.nombre_completo, ''))) + ' ' +
			RTRIM(LTRIM(ISNULL(T1.numdocumento, '')))) LIKE '%' + @filtro + '%' COLLATE Latin1_General_CI_AI);

		-- seteamos mensaje de salida
		set @message = 'Consulta exitosa';


END

