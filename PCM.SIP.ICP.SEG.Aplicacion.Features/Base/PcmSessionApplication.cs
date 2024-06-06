using PCM.SIP.ICP.SEG.Aplicacion.Interface;
using PCM.SIP.ICP.SEG.Domain.Entities;

namespace PCM.SIP.ICP.SEG.Aplicacion.Features.Base
{
    public class PcmSessionApplication : IPcmSessionApplication
    {
        public UsuarioCache UsuarioCache { get; set; } = new UsuarioCache();

        public void updateUsuarioCache(UsuarioCache entidad)
        {
            UsuarioCache = entidad;
        }
    }
}
