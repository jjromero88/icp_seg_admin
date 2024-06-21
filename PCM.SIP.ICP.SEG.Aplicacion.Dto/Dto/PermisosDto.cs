﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PCM.SIP.ICP.SEG.Aplicacion.Dto.Dto
{
    public class PermisosDto: EntidadBase
    {
        public string? codigo { get; set; }
        public string? nombre { get; set; }
        public string? descripcion { get; set; }
        public bool? habilitado { get; set; }
    }
}
