using Microsoft.Extensions.DependencyInjection;
using PCM.SIP.ICP.SEG.Aplicacion.Interface.Features;
using PCM.SIP.ICP.Transversal.UtilWeb.Authentication;

namespace PCM.SIP.ICP.SEG.Aplicacion.Features
{
    public static class ConfigureServices
    {
        public static IServiceCollection AddApplicationServices(this IServiceCollection services)
        {
            services.AddScoped<IAuthentication, Authentication>();
            services.AddScoped<IPerfilApplication, PerfilApplication>();
            services.AddScoped<IUsuarioApplication, UsuarioApplication>();

            return services;
        }
    }

}
