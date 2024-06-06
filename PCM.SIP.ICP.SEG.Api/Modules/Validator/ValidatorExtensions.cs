using FluentValidation;
using PCM.SIP.ICP.SEG.Aplicacion.Dto;
using PCM.SIP.ICP.SEG.Aplicacion.Validator;

namespace PCM.SIP.ICP.SEG.Api.Modules.Validator
{
    public static class ValidatorExtensions
    {
        public static IServiceCollection AddValidator(this IServiceCollection services)
        {
            services.AddTransient<IValidator<AuthorizeRequest>, AuthorizeRequestValidator>();
            services.AddTransient<AuthenticateValidationManager>();

            services.AddTransient<IValidator<PerfilIdRequest>, PerfilIdRequestValidator>();
            services.AddTransient<IValidator<PerfilInsertRequest>, PerfilInsertRequestValidator>();
            services.AddTransient<IValidator<PerfilUpdateRequest>, PerfilUpdateRequestValidator>();
            services.AddTransient<PerfilValidationManager>();

            services.AddTransient<IValidator<UsuarioLoginRequest>, UsuarioLoginRequestValidator>();
            services.AddTransient<UsuarioValidationManager>();

            return services;
        }
    }

}
