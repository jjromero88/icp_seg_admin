using PCM.SIP.ICP.SEG.Aplicacion.Dto;
using PCM.SIP.ICP.SEG.Transversal.Common.Generics;
using PCM.SIP.ICP.SEG.Transversal.Common;

namespace PCM.SIP.ICP.SEG.Aplicacion.Interface.Features
{
    public interface ISistemaOpcionApplication
    {
        PcmResponse GetListPadres(Request<SistemaOpcionDto> request);
        PcmResponse GetListHijos(Request<SistemaOpcionDto> request);
    }
}
