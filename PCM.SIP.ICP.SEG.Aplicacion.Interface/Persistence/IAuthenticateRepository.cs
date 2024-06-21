using PCM.SIP.ICP.SEG.Aplicacion.Dto;
using PCM.SIP.ICP.SEG.Domain.Entities;
using PCM.SIP.ICP.SEG.Transversal.Common;

namespace PCM.SIP.ICP.SEG.Aplicacion.Interface.Persistence
{
    public interface IAuthenticateRepository
    {
        Response<dynamic> Authenticate(Usuario entidad, out string jsonUsuarioLogin);
        Response<dynamic> UsuarioAccesos(UsuarioPerfil entidad, out string jsonUsuarioAccesos);
        Response<dynamic> UsuarioPermisos(UsuarioPerfil entidad, out string jsonPermisos);
    }
}
