using PCM.SIP.ICP.SEG.Domain.Entities;
using PCM.SIP.ICP.SEG.Transversal.Common;

namespace PCM.SIP.ICP.SEG.Aplicacion.Interface.Persistence
{
    public interface IPerfilOpcionRepository
    {
        Response Insert(PerfilOpcion entidad);
        Response<List<dynamic>> GetList(PerfilOpcion entidad, out string jsonSistemaOpciones);
        Response<List<dynamic>> GetListPermisosPerfilOpcion(PerfilOpcion entidad);

    }
}
