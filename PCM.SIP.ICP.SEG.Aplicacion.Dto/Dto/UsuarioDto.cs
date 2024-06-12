﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PCM.SIP.ICP.SEG.Aplicacion.Dto
{
 
    public class UsuarioDto : EntidadBase
    {
        public string? personakey { get; set; }
        public string? username { get; set; }
        public string? password { get; set; }
        public bool? interno { get; set; }
        public string? numdocumento { get; set; }
        public string? nombre_completo { get; set; }
    }

}
