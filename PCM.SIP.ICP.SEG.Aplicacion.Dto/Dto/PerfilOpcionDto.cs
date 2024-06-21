using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PCM.SIP.ICP.SEG.Aplicacion.Dto
{
    public class PerfilOpcionDto : EntidadBase
    {
        public string? perfilkey { get; set; }
        public string? sistemaopcionkey { get; set; }
        public bool? habilitado { get; set; }
    }
    public class PerfilOpcionFilterRequest
    {
        public string? perfilkey { get; set; }
    }
    public class PerfilOpcionResponseDto
    {
        public string? sistemaopcionkey { get; set; }
        public string? codigo { get; set; }
        public string? descripcion { get; set; }
        public string? abreviatura { get; set; }
        public string? icono_opcion { get; set; }
        public int? num_orden { get; set; }
        public bool? habilitado { get; set; }
        public List<PerfilOpcionResponseDto>? ListaAccesos { get; set; }
    }
    public class PerfilOpcionInsertRequest
    {
        public string? perfilkey { get; set; }
        public string? sistemaopcionkey { get; set; }
    }
    public class PerfilPermisosRequest
    {
        public string? perfilkey { get; set; }
        public string? sistemaopcionkey { get; set; }
    }
}
