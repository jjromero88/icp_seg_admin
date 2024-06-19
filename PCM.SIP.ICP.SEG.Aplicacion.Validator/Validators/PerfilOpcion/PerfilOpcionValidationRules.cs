using FluentValidation;
using PCM.SIP.ICP.SEG.Aplicacion.Dto;

namespace PCM.SIP.ICP.SEG.Aplicacion.Validator
{
    public class PerfilOpcionFilterRequestValidator : AbstractValidator<PerfilOpcionFilterRequest>
    {
        public PerfilOpcionFilterRequestValidator()
        {
            RuleFor(u => u.perfilkey)
            .IsNullOrWhiteSpace()
            .WithMessage("Debe ingresar el Id del Perfil");
        }
    }

}
