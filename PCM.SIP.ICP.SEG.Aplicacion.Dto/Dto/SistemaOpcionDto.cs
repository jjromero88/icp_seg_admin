using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PCM.SIP.ICP.SEG.Aplicacion.Dto
{
    public class SistemaOpcionDto: EntidadBase
    {
        public string? perfilkey { get; set; }
        public string? padrekey { get; set; }
        public string? codigo { get; set; }
        public string? abreviatura { get; set; }
        public string? descripcion { get; set; }
        public int? num_orden { get; set; }
        public string? url_opcion { get; set; }
        public string? icono_opcion { get; set; }
        public List<SistemaOpcionDto>? ListaAccesos { get; set; }
    }

    public class SistemaOpcionPadresRequest
    {
        public string? perfilkey { get; set; }
    }
    public class SistemaOpcionPadresResponse
    {
        public string? SerialKey { get; set; }
        public string? descripcion { get; set; }
    }
    public class SistemaOpcionHijosRequest
    {
        public string? perfilkey { get; set; }
        public string? padrekey { get; set; }
    }
    public class SistemaOpcionHijosResponse
    {
        public string? SerialKey { get; set; }
        public string? descripcion { get; set; }
    }
}
