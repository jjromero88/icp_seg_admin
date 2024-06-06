﻿using FluentValidation;
using PCM.SIP.ICP.SEG.Aplicacion.Dto;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PCM.SIP.ICP.SEG.Aplicacion.Validator
{
    public class AuthenticateRequestValidator : AbstractValidator<AuthenticateRequest>
    {
        public AuthenticateRequestValidator()
        {
            RuleFor(u => u.username)
               .IsNullOrWhiteSpace()
               .WithMessage($"Debe ingresar el nombre de usuario")
               .NotContainSqlInjection();

            RuleFor(u => u.password)
                .IsNullOrWhiteSpace()
                .WithMessage($"Debe ingresar una contraseña")
                .NotContainSqlInjection();

            RuleFor(x => x.username)
                    .MaximumLength(20)
                    .WithMessage($"El nombre de usuario debe tener máximo 20 caracteres");

            RuleFor(x => x.password)
                    .MaximumLength(15)
                    .WithMessage($"La contraseña debe tener máximo 15 caracteres");
        }
    }

    public class AuthorizeRequestValidator : AbstractValidator<AuthorizeRequest>
    {
        public AuthorizeRequestValidator()
        {
            RuleFor(u => u.idsession)
                .IsNullOrWhiteSpace()
                .WithMessage("Debe ingresar el id de sesion");

            RuleFor(u => u.codigo_perfil)
                .IsNullOrWhiteSpace()
                .WithMessage("Debe seleccionar un perfil");

            RuleFor(x => x.idsession)
                .MaximumLength(100)
                .WithMessage("El codigo debe tener máximo 100 caracteres");

            RuleFor(x => x.codigo_perfil)
               .MaximumLength(10)
               .WithMessage("La abreviatura debe tener máximo 10 caracteres");
        }
    }
}
