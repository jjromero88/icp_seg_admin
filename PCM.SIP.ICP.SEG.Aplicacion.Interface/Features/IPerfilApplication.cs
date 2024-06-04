using PCM.SIP.ICP.SEG.Aplicacion.Dto;
using PCM.SIP.ICP.SEG.Transversal.Common;
using PCM.SIP.ICP.SEG.Transversal.Common.Generics;

namespace PCM.SIP.ICP.SEG.Aplicacion.Interface.Features
{
    public interface IPerfilApplication
    {
        PcmResponse Insert(Request<PerfilDto> request);
        PcmResponse Update(Request<PerfilDto> request);
        PcmResponse Delete(Request<PerfilDto> request);
        PcmResponse GetById(Request<PerfilDto> request);
        PcmResponse GetList(Request<PerfilDto> request);
    }
}
