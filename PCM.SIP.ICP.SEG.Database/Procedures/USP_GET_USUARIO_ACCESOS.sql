USE [pcm_icp_seg]
GO
/****** Object:  StoredProcedure [dbo].[USP_GET_USUARIO_ACCESOS]    Script Date: 6/06/2024 15:06:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
 * Procedimiento	: dbo.USP_GET_USUARIO_ACCESOS
 * Proposito		: Obtener lista de accesos por perfil de usuario
 * Input/Output		: Ninguna
 * Modificaciones	: Ninguna
 * Creado por		: Juan Jose Romero
 * Fecha			: 06/06/2024
 * */

CREATE OR ALTER     PROCEDURE [dbo].[USP_GET_USUARIO_ACCESOS](
	@usuario_id int,
	@perfil_id int,
	@usuarioAccesos nvarchar(max) = null output,
	@error bit = null output,
	@message nvarchar(500) = null output
)
AS
BEGIN
	
	--el error empieza en false
	set @error = 0

	--declaramos el usuarioperfil
	declare
	@usuarioperfil_id int = null;


	/*	inicio de validaciones	*/

	BEGIN
	

		--verifica que el usuario exista
		IF NOT EXISTS(select top(1) * from USUARIO as t1 with(nolock) where t1.estado = 1 and t1.usuario_id = @usuario_id)
		BEGIN
			set @error = 1;
			set @message = 'El usuario ingresado no existe';
		END

		--verifica que el perfil exista
		IF NOT EXISTS(select top(1) * from PERFIL as t1 with(nolock) where t1.estado = 1 and t1.perfil_id = @perfil_id)
		BEGIN
			set @error = 1;
			set @message = 'El perfil ingresado no existe';
		END

		----verificar que el usuario tenga asociado por lo menos un perfil
		ELSE IF NOT EXISTS (
		SELECT T1.* FROM DBO.USUARIOPERFIL T1 with(nolock)
		INNER JOIN DBO.USUARIO T2 ON T1.usuario_id = T2.usuario_id
		WHERE T1.usuario_id = @usuario_id and T1.estado = 1
		)
		BEGIN 
			set @error = 1;
			set @message = 'El usuario ingresado no tiene asociado un perfil, comuniquese con el administrador del sistema';
		END

		--validar que el perfil tenga por lo menos una opcion del sistema
		IF NOT EXISTS (SELECT T1.* FROM SISTEMAOPCION T1 with(nolock) INNER JOIN PERFILOPCION T2 with(nolock) ON T1.sistemaopcion_id = T2.sistemaopcion_id  WHERE T2.perfil_id = @perfil_id AND T1.estado= 1 and T2.estado = 1 and T2.habilitado = 1)
		BEGIN
			SET @error = 1
			SET @message = 'El perfil no cuenta con opciones del sistema'
		END

		--buscamos el usuarioperfil correspondiente
		select top(1) @usuarioperfil_id =  t1.usuarioperfil_id from USUARIOPERFIL as t1 with(nolock) where t1.estado = 1 and t1.usuario_id = @usuario_id and t1.perfil_id = @perfil_id;

		--validamos que exista el usaurioperfil
		IF(@usuarioperfil_id IS NULL)
		BEGIN
			SET @error = 1
			SET @message = 'El perfil y el usuario ingresados no se encuentran configurados correctamente, comuniquese con el administrador del sistema'
		END
	
	END

	/*	fin de validaciones	 */


	--si no hubo ningun error se procede al login
	IF(@error = 0 and @usuario_id is not null and @perfil_id is not null)
	BEGIN

		declare 
		@jsonAccesos varchar(max) = null;


		-- obtenemos en una tabla temporal los accesos asociados al perfil
		SELECT
			T1.*
		INTO 
			#SISTEMAOPCIONES_TEMP
		FROM 
			SISTEMAOPCION T1 with(nolock)
			INNER JOIN PERFILOPCION T2 with(nolock) ON T1.sistemaopcion_id = T2.sistemaopcion_id AND T2.estado = 1 AND T2.habilitado = 1
			INNER JOIN PERFIL T3 with(nolock) ON T2.perfil_id = T3.perfil_id AND T3.estado = 1
			INNER JOIN USUARIOPERFIL T4 with(nolock) ON T4.perfil_id = T3.perfil_id AND T4.estado = 1
		WHERE 
			T1.estado = 1 AND
			(T4.perfil_id = @perfil_id) AND
			(T4.usuario_id = @usuario_id) AND
			(T4.USUARIOPERFIL_ID = @usuarioperfil_id)
		ORDER BY 
			T1.num_orden;

		--declaramos variables locales
		DECLARE @MAX INT = 4 -- DEFINIMOS EL NIVEL MAXIMO DEL ARBOL
		DECLARE @CONT INT = @MAX
		DECLARE @ALIAS_AC VARCHAR(5)
		DECLARE @ALIAS_AN VARCHAR(5)
		DECLARE @QUERY NVARCHAR(MAX)		
		DECLARE @OPCIONESCOLUMN NVARCHAR(MAX) = '$.[codigo], $.[descripcion], $.[abreviatura], $.[url_opcion], $.[icono_opcion], $.[num_orden]';
		DECLARE @COLUMNS NVARCHAR(MAX) = '';


		--obtencion de numero de niveles de manera dinamica

		WHILE @CONT > 0 AND @CONT <= @MAX
		BEGIN
			SET @ALIAS_AC = CONCAT('SO',@CONT)
			SET @ALIAS_AN = CONCAT('SO',(@CONT - 1))
			
			SET @COLUMNS = (SELECT REPLACE(@OPCIONESCOLUMN,'$',@ALIAS_AC));

			IF @CONT = @MAX
			BEGIN
				SET @QUERY =
				'
				SELECT
					'+@COLUMNS + ' 
				FROM dbo.#SISTEMAOPCIONES_TEMP '+@ALIAS_AC+'
				WHERE '+@ALIAS_AC+'.padre_id = '+@ALIAS_AN+'.sistemaopcion_id
				ORDER BY '+@ALIAS_AC+'.num_orden
				FOR JSON PATH
				'
			END
			ELSE IF @CONT > 1
			BEGIN
				SET @QUERY =
				'
				SELECT 
					'+@COLUMNS + ',
					(
						'+@QUERY+'
					) AS ''ListaAccesos''
				FROM dbo.#SISTEMAOPCIONES_TEMP '+@ALIAS_AC+'
				WHERE '+@ALIAS_AC+'.padre_id = '+@ALIAS_AN+'.sistemaopcion_id
				ORDER BY '+@ALIAS_AC+'.num_orden
				FOR JSON PATH
				'
			END
			ELSE
			BEGIN
				SET @QUERY =
				'
				SELECT 
					'+@COLUMNS + ',
					(
						'+@QUERY+'
					) AS ''ListaAccesos''
				FROM dbo.#SISTEMAOPCIONES_TEMP '+@ALIAS_AC+'
				WHERE '+@ALIAS_AC+'.padre_id IS NULL
				ORDER BY '+@ALIAS_AC+'.num_orden
				FOR JSON PATH
				'
			END

			SET @CONT -= 1
		END
		

		SET @QUERY =
		'
		SELECT
		(
			'+@QUERY+'
		) AS LISTAJSON'



		-- insertamos en una tabla el json que resulto de la consulta
		DECLARE @TABLAACCESOS AS TABLE (LISTAJSON VARCHAR(MAX));
		INSERT INTO @TABLAACCESOS exec sp_executesql @QUERY;

		-- asignamos la columna de la tabla a la variable de salida
		SELECT @usuarioAccesos = LISTAJSON FROM @TABLAACCESOS;

		-- eliminamos la tabla temporal creada
		drop table #SISTEMAOPCIONES_TEMP

		select @usuarioAccesos;

		--actualizamos el mensaje de salida
		set @message = 'Consulta exitosa';

	END
	ELSE BEGIN 
		set @error = ISNULL(@error, 1);
		set @message = ISNULL(@message, 'Ocurrio un error al intentar iniciar sesión, comuniquese con el administrador del sistema.');
	END

END


