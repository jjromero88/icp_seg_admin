﻿using FluentValidation;
using PCM.SIP.ICP.SEG.Aplicacion.Dto;

namespace PCM.SIP.ICP.SEG.Aplicacion.Validator
{
    public class UsuarioIdRequestValidator : AbstractValidator<UsuarioIdRequest>
    {
        public UsuarioIdRequestValidator()
        {
            RuleFor(u => u.SerialKey)
                .IsNullOrWhiteSpace()
                  .WithMessage("Debe ingresar el Id del Usuario");
        }
    }
    public class UsuarioInsertRequestValidator : AbstractValidator<UsuarioInsertRequest>
    {
        public UsuarioInsertRequestValidator()
        {
            RuleFor(u => u.personakey)
                .IsNullOrWhiteSpace()
                .WithMessage("Debe ingresar el id de la Persona");

            RuleFor(u => u.perfileskey)
                .IsNullOrWhiteSpace()
                .WithMessage("Debe seleccionar por lo menos un Perfil");

            RuleFor(u => u.username)
                .IsNullOrWhiteSpace()
                .WithMessage("Debe ingresar el nombre de usuario");

            RuleFor(u => u.password)
                .IsNullOrWhiteSpace()
                .WithMessage("Debe ingresar una contraseña");

            RuleFor(u => u.interno)
                .NotNull()
                .WithMessage("Debe indicar si es un usuario interno o externo");

            RuleFor(u => u.numdocumento)
                .IsNullOrWhiteSpace()
                .WithMessage("Debe ingresar el numero de documento");

            RuleFor(u => u.nombre_completo)
               .IsNullOrWhiteSpace()
               .WithMessage("Debe ingresar el nombre completo");

            RuleFor(x => x.username)
                .MaximumLength(20)
                .WithMessage("El nombre de usuario debe tener máximo 20 caracteres");

            RuleFor(x => x.password)
               .MaximumLength(15)
               .WithMessage("La contraseña debe tener máximo 15 caracteres");

            RuleFor(x => x.username)
                .MinimumLength(6)
                .WithMessage("El nombre de usuario debe tener mínimo 6 caracteres");

            RuleFor(x => x.password)
               .MinimumLength(6)
               .WithMessage("La contraseña debe tener mínimo 6 caracteres");

            RuleFor(x => x.numdocumento)
                .MaximumLength(20)
                .WithMessage("El número de documento debe tener máximo 20 caracteres");
        }
    }
    public class UsuarioUpdateRequestValidator : AbstractValidator<UsuarioUpdateRequest>
    {
        public UsuarioUpdateRequestValidator()
        {
            RuleFor(u => u.SerialKey)
                .IsNullOrWhiteSpace()
                  .WithMessage("Debe ingresar el Id del Usuario");

            RuleFor(u => u.personakey)
                .IsNullOrWhiteSpace()
                .WithMessage("Debe ingresar el id de la Persona");

            RuleFor(u => u.perfileskey)
                .IsNullOrWhiteSpace()
                .WithMessage("Debe seleccionar por lo menos un Perfil");

            RuleFor(u => u.username)
                .IsNullOrWhiteSpace()
                .WithMessage("Debe ingresar el nombre de usuario");

            RuleFor(u => u.password)
                .IsNullOrWhiteSpace()
                .WithMessage("Debe ingresar una contraseña");

            RuleFor(u => u.interno)
                .NotNull()
                .WithMessage("Debe indicar si es un usuario interno o externo");

            RuleFor(u => u.numdocumento)
                .IsNullOrWhiteSpace()
                .WithMessage("Debe ingresar el numero de documento");

            RuleFor(u => u.nombre_completo)
               .IsNullOrWhiteSpace()
               .WithMessage("Debe ingresar el nombre completo");

            RuleFor(x => x.username)
                .MaximumLength(20)
                .WithMessage("El nombre de usuario debe tener máximo 20 caracteres");

            RuleFor(x => x.password)
               .MaximumLength(15)
               .WithMessage("La contraseña debe tener máximo 15 caracteres");

            RuleFor(x => x.username)
                .MinimumLength(6)
                .WithMessage("El nombre de usuario debe tener mínimo 6 caracteres");

            RuleFor(x => x.password)
               .MinimumLength(6)
               .WithMessage("La contraseña debe tener mínimo 6 caracteres");

            RuleFor(x => x.numdocumento)
                .MaximumLength(20)
                .WithMessage("El número de documento debe tener máximo 20 caracteres");
        }
    }

}
