﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PCM.SIP.ICP.SEG.Aplicacion.Dto
{
    public class UsuarioCacheResponse
    {
        public string? authkey { get; set; }
        public string? usuariokey { get; set; }
        public string? perfilkey { get; set; }
        public string? username { get; set; }
        public string? perfil { get; set; }
        public string? numdocumento { get; set; }
        public string? nombre_completo { get; set; }
    }
    public class UsuarioCacheSesion
    {      
        public string? username { get; set; }
        public string? perfil { get; set; }
        public string? numdocumento { get; set; }
        public string? nombre_completo { get; set; }
    }
}
