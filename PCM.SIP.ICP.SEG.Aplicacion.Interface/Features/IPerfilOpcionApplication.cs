using PCM.SIP.ICP.SEG.Transversal.Common.Generics;
using PCM.SIP.ICP.SEG.Transversal.Common;
using PCM.SIP.ICP.SEG.Aplicacion.Dto;

namespace PCM.SIP.ICP.SEG.Aplicacion.Interface.Features
{
    public interface IPerfilOpcionApplication
    {
        PcmResponse Insert(Request<PerfilOpcionDto> request);
        PcmResponse GetList(Request<PerfilOpcionDto> request);
    }
}
