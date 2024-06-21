using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PCM.SIP.ICP.SEG.Aplicacion.Dto
{
    public class PerfilDto : EntidadBase
    {
        public string? codigo { get; set; }
        public string? abreviatura { get; set; }
        public string? descripcion { get; set; }
        public bool? interno { get; set; }
    }
    public class PerfilIdRequest
    {
        public string? SerialKey { get; set; }
    }
    public class PerfilInsertRequest
    {
        public string? codigo { get; set; }
        public string? abreviatura { get; set; }
        public string? descripcion { get; set; }
        public bool? interno { get; set; }
    }
    public class PerfilUpdateRequest
    {
        public string? SerialKey { get; set; }
        public string? codigo { get; set; }
        public string? abreviatura { get; set; }
        public string? descripcion { get; set; }
        public bool? interno { get; set; }
    }
    public class PerfilFilterRequest
    {
        public string? SerialKey { get; set; }
        public string? filtro { get; set; }
    }
    public class PerfilResponse
    {
        public string? SerialKey { get; set; }
        public string? codigo { get; set; }
        public string? abreviatura { get; set; }
        public string? descripcion { get; set; }
        public bool? interno { get; set; }
    }
    public class PerfilUsuarioResponse
    {
        public string? SerialKey { get; set; }
        public string? codigo { get; set; }
        public string? abreviatura { get; set; }
        public string? descripcion { get; set; }
    }
    public class PerfilListResponse
    {
        public List<PerfilResponse>? Lista { get; set; }
    }
}
