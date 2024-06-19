using PCM.SIP.ICP.SEG.Transversal.Common.Generics;
using PCM.SIP.ICP.SEG.Transversal.Common;
using PCM.SIP.ICP.SEG.Aplicacion.Dto;

namespace PCM.SIP.ICP.SEG.Aplicacion.Interface.Features
{
    public interface IPerfilOpcionApplication
    {
        PcmResponse GetList(Request<PerfilOpcionDto> request);
    }
}
