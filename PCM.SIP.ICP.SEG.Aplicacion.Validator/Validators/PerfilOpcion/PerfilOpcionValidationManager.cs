using FluentValidation.Results;
using PCM.SIP.ICP.SEG.Aplicacion.Dto;

namespace PCM.SIP.ICP.SEG.Aplicacion.Validator
{
    public class PerfilOpcionValidationManager
    {
        private readonly PerfilOpcionFilterRequestValidator _perfilOpcionFilterRequestValidator;
        private readonly PerfilOpcionInsertRequestValidator _perfilOpcionInsertRequestValidator;

        public PerfilOpcionValidationManager()
        {
            _perfilOpcionFilterRequestValidator = new PerfilOpcionFilterRequestValidator();
            _perfilOpcionInsertRequestValidator = new PerfilOpcionInsertRequestValidator();
        }

        public ValidationResult Validate(PerfilOpcionFilterRequest entidad)
        {
            return _perfilOpcionFilterRequestValidator.Validate(entidad);
        }
        public ValidationResult Validate(PerfilOpcionInsertRequest entidad)
        {
            return _perfilOpcionInsertRequestValidator.Validate(entidad);
        }
    }
}
