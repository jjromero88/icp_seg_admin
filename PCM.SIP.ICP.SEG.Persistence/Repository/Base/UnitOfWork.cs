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
        public ISistemaOpcionRepository SistemaOpcion { get; }

        public UnitOfWork(
            IPerfilRepository perfil,
            IUsuarioRepository usuario,
            IAuthenticateRepository authenticate,
            IPerfilOpcionRepository perfilOpcion,
            ISistemaOpcionRepository sistemaOpcion
            )
        {
            Perfil = perfil;
            Usuario = usuario;
            Authenticate = authenticate;
            PerfilOpcion = perfilOpcion;
            SistemaOpcion = sistemaOpcion;
        }

        public void Dispose()
        {
            GC.SuppressFinalize(this);
        }
    }
}
