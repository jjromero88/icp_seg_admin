using PCM.SIP.ICP.SEG.Aplicacion.Dto;
using PCM.SIP.ICP.SEG.Transversal.Common;
using PCM.SIP.ICP.SEG.Transversal.Common.Generics;

namespace PCM.SIP.ICP.SEG.Aplicacion.Interface.Features
{
    public interface IUsuarioApplication
    {
        PcmResponse Insert(Request<UsuarioDto> request);
        PcmResponse Update(Request<UsuarioDto> request);
        PcmResponse Delete(Request<UsuarioDto> request);
        PcmResponse GetById(Request<UsuarioDto> request);
        PcmResponse GetList(Request<UsuarioDto> request);
    }
}
