using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PCM.SIP.ICP.SEG.Domain.Entities
{
    public class UsuarioCache
    {
        public string? authkey { get; set; }
        public string? usuariokey { get; set; }
        public string? perfilkey { get; set; }
        public string? username { get; set; }
        public string? perfil {  get; set; }
        public string? numdocumento { get; set; }
        public string? nombre_completo { get; set; }
        public List<OpcionPermisos>? usuario_permisos { get; set; }
    }
}
