using Microsoft.AspNetCore.Mvc.Filters;
using PCM.SIP.ICP.SEG.Aplicacion.Interface.Features;

namespace PCM.SIP.ICP.SEG.Api.Filters
{
    public class AuthorizationRequestAttribute : ActionFilterAttribute
    {
        private readonly ISecurityApplication _securityApplication;

        public AuthorizationRequestAttribute(ISecurityApplication securityApplication)
        {
            _securityApplication = securityApplication;
        }

        public override async Task OnActionExecutionAsync(ActionExecutingContext context, ActionExecutionDelegate next)
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

                var result = await _securityApplication.GetSessionData(authorization);

            }
            catch (Exception ex)
            {
                throw new Exception($"Error inesperado: {ex.Message}", ex);
            }
        }
    }
}
