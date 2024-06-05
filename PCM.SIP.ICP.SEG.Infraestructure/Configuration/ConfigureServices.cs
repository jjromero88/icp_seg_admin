using Microsoft.Extensions.DependencyInjection;
using PCM.SIP.ICP.SEG.Aplicacion.Interface.Infraestructure;
using PCM.SIP.ICP.SEG.Infraestructure.Services;

namespace PCM.SIP.ICP.SEG.Infraestructure
{
    public static class ConfigureServices
    {
        public static IServiceCollection AddInfraestructureServices(this IServiceCollection services)
        {
            services.AddScoped<IRedisCacheService, RedisCacheService>();

            return services;
        }
    }
}
