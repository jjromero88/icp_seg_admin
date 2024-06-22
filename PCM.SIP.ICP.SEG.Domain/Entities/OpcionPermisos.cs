using System.Text.Json.Serialization;

namespace PCM.SIP.ICP.SEG.Domain.Entities
{
    public class OpcionPermisos
    {
        [JsonPropertyName("opcion_descripcion")]
        public string? descripcion { get; set; }

        [JsonPropertyName("url_opcion")]
        public string? url { get; set; }

        [JsonPropertyName("opcion_codigo")]
        public string? codigo { get; set; }

        [JsonPropertyName("opcion_permisos")]
        public List<Permiso>? permisos { get; set; }
    }
    public class Permiso
    {
        [JsonPropertyName("permiso_codigo")]
        public string? codigo { get; set; }
    }

}
