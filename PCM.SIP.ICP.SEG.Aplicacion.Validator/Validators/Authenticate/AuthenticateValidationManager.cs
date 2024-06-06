using FluentValidation.Results;
using PCM.SIP.ICP.SEG.Aplicacion.Dto;

namespace PCM.SIP.ICP.SEG.Aplicacion.Validator
{
    public class AuthenticateValidationManager
    {
        private readonly AuthenticateRequestValidator _authenticateRequestValidator;
        private readonly AuthorizeRequestValidator _authorizerequestValidator;

        public AuthenticateValidationManager()
        {
            _authenticateRequestValidator = new AuthenticateRequestValidator();
            _authorizerequestValidator = new AuthorizeRequestValidator();
        }

        public ValidationResult Validate(AuthenticateRequest entidad)
        {
            return _authenticateRequestValidator.Validate(entidad);
        }

        public ValidationResult Validate(AuthorizeRequest entidad)
        {
            return _authorizerequestValidator.Validate(entidad);
        }

    }
}
