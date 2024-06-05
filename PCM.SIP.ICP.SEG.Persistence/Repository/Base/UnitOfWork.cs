using PCM.SIP.ICP.SEG.Aplicacion.Interface;
using PCM.SIP.ICP.SEG.Aplicacion.Interface.Persistence;

namespace PCM.SIP.ICP.SEG.Persistence.Repository.Base
{
    public class UnitOfWork : IUnitOfWork
    {
        public IPerfilRepository Perfil { get; }
        public IUsuarioRepository Usuario { get; }

        public UnitOfWork(
            IPerfilRepository perfil,
            IUsuarioRepository usuario
            )
        {
            Perfil = perfil;
            Usuario = usuario;
        }

        public void Dispose()
        {
            GC.SuppressFinalize(this);
        }
    }
}
