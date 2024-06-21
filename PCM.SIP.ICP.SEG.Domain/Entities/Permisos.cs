using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PCM.SIP.ICP.SEG.Domain.Entities
{
    public class Permisos : EntidadBase
    {
        public int permiso_id { get; set; }
        public string? codigo { get; set; }
        public string? nombre { get; set; }
        public string? descripcion { get; set; }
        public bool? habilitado { get; set; }
    }
}
