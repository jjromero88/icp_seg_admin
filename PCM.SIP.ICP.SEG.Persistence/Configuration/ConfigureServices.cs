using Microsoft.Extensions.DependencyInjection;
using PCM.SIP.ICP.SEG.Aplicacion.Interface;
using PCM.SIP.ICP.SEG.Aplicacion.Interface.Persistence;
using PCM.SIP.ICP.SEG.Persistence.Context;
using PCM.SIP.ICP.SEG.Persistence.Repository;
using PCM.SIP.ICP.SEG.Persistence.Repository.Base;

namespace PCM.SIP.ICP.SEG.Persistence
{
    public static class ConfigureServices
    {
        public static IServiceCollection AddPersistenceServices(this IServiceCollection services)
        {
            services.AddSingleton<DapperContext>();
            services.AddScoped<IAuthenticateRepository, AuthenticateRepository>();
            services.AddScoped<IPerfilRepository, PerfilRepository>();
            services.AddScoped<IUsuarioRepository, UsuarioRepository>();
            services.AddScoped<IPerfilOpcionRepository, PerfilOpcionRepository>();

            services.AddScoped<IUnitOfWork, UnitOfWork>();
            return services;
        }
    }
}
