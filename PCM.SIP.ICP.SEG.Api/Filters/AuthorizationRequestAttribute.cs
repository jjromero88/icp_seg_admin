using Microsoft.AspNetCore.Mvc.Filters;
using PCM.SIP.ICP.SEG.Aplicacion.Interface;
using PCM.SIP.ICP.SEG.Aplicacion.Interface.Features;
using PCM.SIP.ICP.SEG.Aplicacion.Interface.Infraestructure;
using PCM.SIP.ICP.SEG.Domain.Entities;
using PCM.SIP.ICP.Transversal.UtilWeb.Authentication;

namespace PCM.SIP.ICP.SEG.Api.Filters
{
    public class AuthorizationRequestAttribute : ActionFilterAttribute
    {
        private readonly ISecurityApplication _securityApplication;
        private readonly IRedisCacheService _redisCacheService;
        private readonly IAuthentication _authentication;

        public AuthorizationRequestAttribute(ISecurityApplication securityApplication, IRedisCacheService redisCacheService, IAuthentication authentication)
        {
            _securityApplication = securityApplication;
            _redisCacheService = redisCacheService;
            _authentication = authentication;
        }

        public override void OnActionExecuting(ActionExecutingContext context)

        {
            try
            {
                string authorization = context.HttpContext.Request.Headers["Authorization"];

                // If no authorization header found, nothing to process further
                if (string.IsNullOrEmpty(authorization))
                {
                    throw new ArgumentException("El token no puede estar vacío");
                }

                // If no content Bearer in Authorization Header
                if (!authorization.StartsWith("Bearer ", StringComparison.OrdinalIgnoreCase))
                {
                    throw new Exception("El token no tiene el formato correcto");
                } 

                // obtenemos el idSession del Token
                string idsession = _authentication.GetIdSessionFromToken(authorization);

                //buscamos en redis los datos de la sesion en redis
                var usuarioCache = _redisCacheService.Get<UsuarioCache>(idsession);

                // verificamos que el cast haya sido correcto
                if (usuarioCache == null)
                {
                    throw new ArgumentException("Su sesion ha expirado");
                }

                // Obtener el servicio desde el proveedor de servicios
                var serviceProvider = context.HttpContext.RequestServices;

                // obtenemos el servicio que controla las variables de sesion
                var sessionService = serviceProvider.GetRequiredService<IPcmSessionApplication>();

                // actualizamos la data del usuario de la sesión
                sessionService.updateUsuarioCache(usuarioCache);

            }
            catch (Exception ex)
            {
                throw new Exception($"Error inesperado: {ex.Message}", ex);
            }
        }
    }
}
