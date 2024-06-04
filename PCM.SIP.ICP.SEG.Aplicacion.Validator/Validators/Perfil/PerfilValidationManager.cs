using FluentValidation.Results;
using PCM.SIP.ICP.SEG.Aplicacion.Dto;

namespace PCM.SIP.ICP.SEG.Aplicacion.Validator
{
    public class PerfilValidationManager
    {
        private readonly PerfilIdRequestValidator _perfilIdRequestValidator;
        private readonly PerfilInsertRequestValidator _perfilInsertRequestValidator;
        private readonly PerfilUpdateRequestValidator _perfilUpdateRequestValidator;

        public PerfilValidationManager()
        {
            _perfilIdRequestValidator = new PerfilIdRequestValidator();
            _perfilInsertRequestValidator = new PerfilInsertRequestValidator();
            _perfilUpdateRequestValidator = new PerfilUpdateRequestValidator();
        }

        public ValidationResult Validate(PerfilIdRequest entidad)
        {
            return _perfilIdRequestValidator.Validate(entidad);
        }
        public ValidationResult Validate(PerfilInsertRequest entidad)
        {
            return _perfilInsertRequestValidator.Validate(entidad);
        }
        public ValidationResult Validate(PerfilUpdateRequest entidad)
        {
            return _perfilUpdateRequestValidator.Validate(entidad);
        }
    }
}
