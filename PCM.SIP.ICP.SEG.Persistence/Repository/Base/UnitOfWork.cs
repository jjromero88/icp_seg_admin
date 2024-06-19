using PCM.SIP.ICP.SEG.Aplicacion.Interface;
using PCM.SIP.ICP.SEG.Aplicacion.Interface.Persistence;

namespace PCM.SIP.ICP.SEG.Persistence.Repository.Base
{
    public class UnitOfWork : IUnitOfWork
    {
        public IPerfilRepository Perfil { get; }
        public IUsuarioRepository Usuario { get; }
        public IAuthenticateRepository Authenticate { get; }
        public IPerfilOpcionRepository PerfilOpcion { get; }

        public UnitOfWork(
            IPerfilRepository perfil,
            IUsuarioRepository usuario,
            IAuthenticateRepository authenticate,
            IPerfilOpcionRepository perfilOpcion
            )
        {
            Perfil = perfil;
            Usuario = usuario;
            Authenticate = authenticate;
            PerfilOpcion = perfilOpcion;
        }

        public void Dispose()
        {
            GC.SuppressFinalize(this);
        }
    }
}
