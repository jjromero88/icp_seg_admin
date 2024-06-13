using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PCM.SIP.ICP.SEG.Aplicacion.Dto
{
 
    public class UsuarioDto : EntidadBase
    {
        public string? personakey { get; set; }
        public string? perfileskey { get; set; }
        public string? username { get; set; }
        public string? password { get; set; }
        public bool? interno { get; set; }
        public string? numdocumento { get; set; }
        public string? nombre_completo { get; set; }
        public List<PerfilDto> lista_perfiles { get; set; } = new List<PerfilDto> { };
    }
    public class UsuarioIdRequest
    {
        public string? SerialKey { get; set; }
    }
    public class UsuarioInsertRequest
    {
        public string? personakey { get; set; }
        public string? perfileskey { get; set; }
        public string? username { get; set; }
        public string? password { get; set; }
        public bool? interno { get; set; }
        public string? numdocumento { get; set; }
        public string? nombre_completo { get; set; }
    }
    public class UsuarioUpdateRequest
    {
        public string? SerialKey { get; set; }
        public string? personakey { get; set; }
        public string? perfileskey { get; set; }
        public string? username { get; set; }
        public string? password { get; set; }
        public bool? interno { get; set; }
        public string? numdocumento { get; set; }
        public string? nombre_completo { get; set; }
    }
    public class UsuarioFilterRequest
    {
        public string? SerialKey { get; set; }
        public string? filtro { get; set; }
    }
    public class UsuarioResponse
    {
        public string? SerialKey { get; set; }
        public string? personakey { get; set; }
        public string? perfileskey { get; set; }
        public string? username { get; set; }
        public string? password { get; set; }
        public bool? interno { get; set; }
        public string? numdocumento { get; set; }
        public string? nombre_completo { get; set; }
    }
    public class UsuarioListResponse
    {
        public List<UsuarioResponse>? Lista { get; set; }
    }
}
