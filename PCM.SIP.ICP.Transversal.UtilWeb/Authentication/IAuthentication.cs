
namespace PCM.SIP.ICP.Transversal.UtilWeb.Authentication
{
    public interface IAuthentication
    {
        Task<string> BuildToken(string userName, string idSession, int expireMinutes);
        string GetIdSessionFromToken(string tokenString);
    }
}
