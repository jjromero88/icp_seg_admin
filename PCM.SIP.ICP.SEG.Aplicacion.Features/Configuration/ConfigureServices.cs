using Microsoft.Extensions.DependencyInjection;
using PCM.SIP.ICP.SEG.Aplicacion.Interface.Features;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PCM.SIP.ICP.SEG.Aplicacion.Features
{
    public static class ConfigureServices
    {
        public static IServiceCollection AddApplicationServices(this IServiceCollection services)
        {
            services.AddScoped<IPerfilApplication, PerfilApplication>();

            return services;
        }
    }

}
