using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PCM.SIP.ICP.SEG.Domain.Entities
{
    public class UsuarioPerfil : EntidadBase
    {
        public int usuarioperfil_id { get; set; }
        public int usuario_id { get; set; }
        public int perfil_id { get; set; }
    }
}
