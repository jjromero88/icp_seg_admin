using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PCM.SIP.ICP.SEG.Aplicacion.Dto
{
    public class AuthenticateRequest
    {
        public string? username { get; set; }
        public string? password { get; set; }
    }

    public class AuthenticateResponse
    {
        public string? idsession { get; set; }
        public string? username { get; set; }
        public string? nombre_completo { get; set; }
        public List<AuthenticatePerfil> lista_perfiles { get; set; } = new List<AuthenticatePerfil> { };
    }

    public class AuthenticatePerfil
    {
        public string? codigo { get; set; }
        public string? descripcion { get; set; }
    }

    public class AuthorizeRequest
    {
        public string? idsession { get; set; }
        public string? codigo_perfil { get; set; }
    }

    public class AuthorizeResponse
    {
        public string? token { get; set; }
        public string? username { get; set; }
        public string? perfil { get; set; }
        public string? numdocumento { get; set; }
    }

}
