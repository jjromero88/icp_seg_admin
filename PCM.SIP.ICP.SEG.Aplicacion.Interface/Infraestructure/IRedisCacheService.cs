
namespace PCM.SIP.ICP.SEG.Aplicacion.Interface.Infraestructure
{
    public interface IRedisCacheService
    {
        Task SetAsync<T>(string key, T value, int absoluteExpiration, int slidingExpiration);
        Task<T> GetAsync<T>(string key);
    }
}
