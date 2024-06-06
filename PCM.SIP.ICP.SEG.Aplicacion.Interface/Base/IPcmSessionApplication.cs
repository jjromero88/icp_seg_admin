using PCM.SIP.ICP.SEG.Domain.Entities;

namespace PCM.SIP.ICP.SEG.Aplicacion.Interface
{
    public interface IPcmSessionApplication
    {
        public UsuarioCache UsuarioCache { get; set; }
        public void updateUsuarioCache(UsuarioCache entidad);
    }
}
