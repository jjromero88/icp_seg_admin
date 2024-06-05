USE [pcm_icp_seg]
GO
/****** Object:  StoredProcedure [dbo].[USP_GET_USUARIO_LOGIN]    Script Date: 4/06/2024 21:21:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
 * Procedimiento	: dbo.USP_GET_USUARIO_LOGIN
 * Proposito		: Autenticar usuario interno
 * Input/Output		: Ninguna
 * Modificaciones	: Ninguna
 * Creado por		: Juan Jose Romero
 * Fecha			: 04/06/2024
 * */

CREATE OR ALTER   PROCEDURE [dbo].[USP_GET_USUARIO_LOGIN](
	@username varchar(20),
	@password varchar(15),
	@error bit = null output,
	@message nvarchar(500) = null output
)
AS
BEGIN
	
	--el error empieza en false
	set @error = 0

	--declaramos las variables a utilizar
	declare
	@MAX_INTENTOS_ACCESO INT;

	--asignamos los valores a las variables declaradas
	set @MAX_INTENTOS_ACCESO = 6;


	/*	inicio de validaciones	*/

	BEGIN

		DECLARE @usuario_id int = null;

		--se obtiene el id usuario mediante las credenciales
		SELECT TOP 1 @usuario_id = T1.usuario_id FROM usuario T1 WITH (NOLOCK)
		WHERE T1.estado = 1 AND
		LOWER(TRIM(T1.username)) = LOWER(TRIM(@username));

		--verifica que el usuario exista
		IF (@usuario_id IS NULL)
		BEGIN
			set @error = 1;
			set @message = 'El usuario ingresado no existe';
		END

		--verifivar que la contraseña de usuario sea la correcta
		ELSE IF NOT EXISTS (SELECT TOP 1 * FROM DBO.USUARIO T1 WITH(NOLOCK) WHERE T1.usuario_id = @usuario_id AND TRIM(T1.password) = TRIM(@password))
		BEGIN
			set @error = 1;
			set @message = 'La contraseña ingresada es incorrecta';
		END
	
		--verificar que el usuario no se encuentre bloqueado
		ELSE IF EXISTS (
		SELECT TOP 1 T1.* FROM BLOQUEOUSUARIO T1
		WHERE T1.usuario_id = @usuario_id
		AND T1.fecha_desbloqueo > GETDATE()
		)
		BEGIN
			set @error = 1;
			set @message = 'El usuario se encuentra bloqueado';
		END
	
		----verificar que el usuario tenga asociado por lo menos un perfil
		ELSE IF NOT EXISTS (
		SELECT T1.* FROM DBO.USUARIOPERFIL T1
		INNER JOIN DBO.USUARIO T2 ON T1.usuario_id = T2.usuario_id
		WHERE T1.usuario_id = @usuario_id and T1.estado = 1
		)
		BEGIN 
			set @error = 1;
			set @message = 'El usuario ingresado no tiene asociado un perfil, comuniquese con el administrador del sistema';
		END

	END

	/*	fin de validaciones	 */


	--si no hubo ningun error se procede al login
	IF(@error = 0 and @usuario_id is not null)
	BEGIN

		--obtenemos los datos del usuario
		SELECT
			  usuario_id
			, username
			, password
			, interno
			, numdocumento
			, apellido_paterno
			, apellido_materno
			, nombres
			, email
			, telefono_movil
			,CONCAT(T1.nombres,' ',T1.apellido_paterno,' ',T1.apellido_materno) AS nombre_completo
		FROM 
			[dbo].[USUARIO] AS T1 WITH(NOLOCK)
		WHERE
			T1.usuario_id = @usuario_id
			and T1.interno = 1;

		--actualizamos el mensaje de salida
		set @message = 'Acceso exitoso';

	END
	ELSE BEGIN 
		set @error = ISNULL(@error, 1);
		set @message = ISNULL(@message, 'Ocurrio un error al intentar iniciar sesión, comuniquese con el administrador del sistema.');
	END

END


