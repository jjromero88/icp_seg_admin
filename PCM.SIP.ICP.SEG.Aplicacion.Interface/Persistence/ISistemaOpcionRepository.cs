using PCM.SIP.ICP.SEG.Domain.Entities;
using PCM.SIP.ICP.SEG.Transversal.Common;

namespace PCM.SIP.ICP.SEG.Aplicacion.Interface.Persistence
{
    public interface ISistemaOpcionRepository
    {
        Response<List<dynamic>> GetListPadres(SistemaOpcion entidad);
        Response<List<dynamic>> GetListHijos(SistemaOpcion entidad);
    }
}
