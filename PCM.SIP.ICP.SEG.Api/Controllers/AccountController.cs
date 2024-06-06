using AutoMapper;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using PCM.SIP.ICP.SEG.Aplicacion.Dto;
using PCM.SIP.ICP.SEG.Aplicacion.Interface.Features;
using PCM.SIP.ICP.SEG.Transversal.Common;
using PCM.SIP.ICP.SEG.Transversal.Common.Generics;
using System.Net;

namespace PCM.SIP.ICP.SEG.Api.Controllers
{
    [Authorize]
    [Route("api/[controller]")]
    [ApiController]
    public class AccountController : Controller
    {
        private readonly IUsuarioApplication _usuarioApplication;
        private readonly IMapper _mapper;

        public AccountController(IUsuarioApplication usuarioApplication, IMapper mapper)
        {
            _usuarioApplication = usuarioApplication;
            _mapper = mapper;
        }

        [AllowAnonymous]
        [HttpPost("Authenticate")]
        [ProducesResponseType((int)HttpStatusCode.OK, Type = typeof(PcmResponse))]
        public async Task<ActionResult<PcmResponse>> Authenticate([FromBody] UsuarioLoginRequest request)
        {
            if (request == null)
                return BadRequest();

            return await _usuarioApplication.Authenticate(new Request<UsuarioDto>() { entidad = _mapper.Map<UsuarioDto>(request) });
        }

        [AllowAnonymous]
        [HttpPost("Authorize")]
        [ProducesResponseType((int)HttpStatusCode.OK, Type = typeof(PcmResponse))]
        public async Task<ActionResult<PcmResponse>> Authorize([FromBody] AuthorizeRequest request)
        {
            if (request == null)
                return BadRequest();

            return await _usuarioApplication.Authorize(new Request<AuthorizeRequest>() { entidad = request });
        }

    }
}
