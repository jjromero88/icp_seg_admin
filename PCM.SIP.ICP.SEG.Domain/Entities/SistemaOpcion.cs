using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PCM.SIP.ICP.SEG.Domain.Entities
{
    public class SistemaOpcion: EntidadBase
    {
        public int sistemaopcion_id { get; set; }
        public int? padre_id { get; set; }
        public string? codigo { get; set; }
        public string? abreviatura { get; set; }
        public string? descripcion { get; set; }
        public int? num_orden { get; set; }
        public string? url_opcion { get; set; }
        public string? icono_opcion { get; set; }
        public List<SistemaOpcion>? ListaAccesos { get; set; }
    }
}
