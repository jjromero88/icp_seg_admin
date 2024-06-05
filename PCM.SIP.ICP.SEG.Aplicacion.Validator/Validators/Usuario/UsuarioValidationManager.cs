using PCM.SIP.ICP.SEG.Aplicacion.Dto;
using FluentValidation.Results;

namespace PCM.SIP.ICP.SEG.Aplicacion.Validator
{
    public class UsuarioValidationManager
    {
        private readonly UsuarioLoginRequestValidator _usuarioLoginRequestValidator;

        public UsuarioValidationManager()
        {
            _usuarioLoginRequestValidator = new UsuarioLoginRequestValidator();
        }

        public ValidationResult Validate(UsuarioLoginRequest entidad)
        {
            return _usuarioLoginRequestValidator.Validate(entidad);
        }
    }
}
