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
    public class PerfilOpcionInsertRequestValidator : AbstractValidator<PerfilOpcionInsertRequest>
    {
        public PerfilOpcionInsertRequestValidator()
        {
            RuleFor(u => u.perfilkey)
                    .IsNullOrWhiteSpace()
                    .WithMessage($"Debe seleccionar un perfil");

            RuleFor(u => u.sistemaopcionkey)
                .IsNullOrWhiteSpace()
                .WithMessage($"Debe seleccionar una opción del sistema");
        }

    }

}
