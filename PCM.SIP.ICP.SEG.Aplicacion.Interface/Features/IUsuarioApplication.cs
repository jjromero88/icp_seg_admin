using PCM.SIP.ICP.SEG.Aplicacion.Dto;
using PCM.SIP.ICP.SEG.Transversal.Common;
using PCM.SIP.ICP.SEG.Transversal.Common.Generics;

namespace PCM.SIP.ICP.SEG.Aplicacion.Interface.Features
{
    public interface IUsuarioApplication
    {
        Task<PcmResponse> Authenticate(Request<UsuarioDto> request);
        Task<PcmResponse> Authorize(Request<AuthorizeRequest> request);
    }
}
