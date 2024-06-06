using PCM.SIP.ICP.SEG.Transversal.Common.Generics;

namespace PCM.SIP.ICP.SEG.Aplicacion.Interface.Features
{
    public interface ISecurityApplication
    {
        Task<PcmResponse> GetSessionData(string token);
        Task<PcmResponse> GetCacheData();
    }
}
