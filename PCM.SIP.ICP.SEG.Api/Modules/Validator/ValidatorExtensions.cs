using FluentValidation;
using PCM.SIP.ICP.SEG.Aplicacion.Dto;
using PCM.SIP.ICP.SEG.Aplicacion.Validator;

namespace PCM.SIP.ICP.SEG.Api.Modules.Validator
{
    public static class ValidatorExtensions
    {
        public static IServiceCollection AddValidator(this IServiceCollection services)
        {
            services.AddTransient<IValidator<AuthenticateRequest>, AuthenticateRequestValidator>();
            services.AddTransient<IValidator<AuthorizeRequest>, AuthorizeRequestValidator>();
            services.AddTransient<AuthenticateValidationManager>();

            services.AddTransient<IValidator<UsuarioIdRequest>, UsuarioIdRequestValidator>();
            services.AddTransient<IValidator<UsuarioInsertRequest>, UsuarioInsertRequestValidator>();
            services.AddTransient<IValidator<UsuarioUpdateRequest>, UsuarioUpdateRequestValidator>();
            services.AddTransient<UsuarioValidationManager>();

            services.AddTransient<IValidator<PerfilIdRequest>, PerfilIdRequestValidator>();
            services.AddTransient<IValidator<PerfilInsertRequest>, PerfilInsertRequestValidator>();
            services.AddTransient<IValidator<PerfilUpdateRequest>, PerfilUpdateRequestValidator>();
            services.AddTransient<PerfilValidationManager>();

            services.AddTransient<IValidator<PerfilOpcionFilterRequest>, PerfilOpcionFilterRequestValidator>();
            services.AddTransient<PerfilOpcionValidationManager>();

            return services;
        }
    }

}
