using FluentValidation.Results;
using PCM.SIP.ICP.SEG.Aplicacion.Dto;

namespace PCM.SIP.ICP.SEG.Aplicacion.Validator
{
    public class PerfilOpcionValidationManager
    {
        private readonly PerfilOpcionFilterRequestValidator _perfilOpcionFilterRequestValidator;

        public PerfilOpcionValidationManager()
        {
            _perfilOpcionFilterRequestValidator = new PerfilOpcionFilterRequestValidator();
        }

        public ValidationResult Validate(PerfilOpcionFilterRequest entidad)
        {
            return _perfilOpcionFilterRequestValidator.Validate(entidad);
        }
    }
}
