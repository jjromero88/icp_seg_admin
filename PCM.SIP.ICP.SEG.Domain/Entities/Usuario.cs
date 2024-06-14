using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PCM.SIP.ICP.SEG.Domain.Entities
{
    public class Usuario: EntidadBase
    {
        public int usuario_id { get; set; }
        public int? persona_id { get; set; }
        public string? perfiles_id { get; set; }
        public string? personakey { get; set; }
        public string? perfileskey { get; set; }
        public string? username { get; set; }
        public string? password { get; set; }
        public string? numdocumento { get; set; }
        public string? nombre_completo { get; set; }
        public bool? interno { get; set; }
        public bool? habilitado { get; set; }
        public List<Perfil> lista_perfiles { get; set; } = new List<Perfil> { };
    }
}
