using FluentValidation.Results;
using PCM.SIP.ICP.SEG.Aplicacion.Dto;

namespace PCM.SIP.ICP.SEG.Aplicacion.Validator
{
    public class AuthenticateValidationManager
    {
        private readonly AuthorizeRequestValidator _authorizerequestValidator;

        public AuthenticateValidationManager()
        {
            _authorizerequestValidator = new AuthorizeRequestValidator();
        }

        public ValidationResult Validate(AuthorizeRequest entidad)
        {
            return _authorizerequestValidator.Validate(entidad);
        }

    }
}
