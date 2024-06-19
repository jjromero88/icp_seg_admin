using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PCM.SIP.ICP.SEG.Domain.Entities
{
    public class PerfilOpcion: EntidadBase
    {
        public int perfilopcion_id { get; set; }
        public int? perfil_id { get; set; }
        public int? sistemaopcion_id { get; set; }
        public string? sistemaopciones_id { get; set; }
        public string? perfilkey { get; set; }
        public string? sistemaopcionkey { get; set; }
        public bool? habilitado { get; set; }
    }
    public class PerfilOpcionResponse
    {
        public int? sistemaopcion_id { get; set; }
        public string?codigo{ get; set; } 
		public string?descripcion{ get; set; } 
		public string?abreviatura{ get; set; } 
		public string?icono_opcion{ get; set; } 
		public int? num_orden{ get; set; }
        public bool? habilitado { get; set; }
        public List<PerfilOpcionResponse>? ListaAccesos { get; set; }
    }
}
