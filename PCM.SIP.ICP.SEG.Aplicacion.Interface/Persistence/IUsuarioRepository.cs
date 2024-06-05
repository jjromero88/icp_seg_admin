using PCM.SIP.ICP.SEG.Domain.Entities;
using PCM.SIP.ICP.SEG.Transversal.Common;

namespace PCM.SIP.ICP.SEG.Aplicacion.Interface.Persistence
{
    public interface IUsuarioRepository: IGenericRepository<Usuario>
    {
        Response<dynamic> Authenticate(Usuario entidad, out string jsonUsuarioLogin);
    }
}
