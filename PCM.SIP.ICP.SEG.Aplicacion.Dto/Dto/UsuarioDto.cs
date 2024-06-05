using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PCM.SIP.ICP.SEG.Aplicacion.Dto
{
 
    public class UsuarioDto : EntidadBase
    {
        public string? username { get; set; }
        public string? password { get; set; }
        public bool? interno { get; set; }
        public string? numdocumento { get; set; }
        public string? apellido_paterno { get; set; }
        public string? apellido_materno { get; set; }
        public string? nombres { get; set; }
        public string? email { get; set; }
        public string? telefono_movil { get; set; }
        public string? nombre_completo { get; set; }
        public string? Token { get; set; }
    }

    public class UsuarioLoginRequest
    {
        public string? username { get; set; }
        public string? password { get; set; }
    }

    public class UsuarioLoginResponse
    {
        public string? SerialKey { get; set; }
        public string? username { get; set; }
        public string? numdocumento { get; set; }
        public string? nombrecompleto { get; set; }
        public string? email { get; set; }
        public string? Token { get; set; }
    }

}
