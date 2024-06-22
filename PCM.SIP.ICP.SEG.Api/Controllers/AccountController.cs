using System.Net;
using AutoMapper;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using PCM.SIP.ICP.SEG.Api.Filters;
using PCM.SIP.ICP.SEG.Aplicacion.Dto;
using PCM.SIP.ICP.SEG.Aplicacion.Features;
using PCM.SIP.ICP.SEG.Aplicacion.Interface.Features;
using PCM.SIP.ICP.SEG.Transversal.Common;
using PCM.SIP.ICP.SEG.Transversal.Common.Generics;

namespace PCM.SIP.ICP.SEG.Api.Controllers
{
    [Authorize]
    [Route("api/[controller]")]
    [ApiController]
    public class AccountController : Controller
    {
        private readonly IAuthenticateApplication _authenticateApplication;
        private readonly IMapper _mapper;

        public AccountController(IAuthenticateApplication authenticateApplication, IMapper mapper)
        {
            _authenticateApplication = authenticateApplication;
            _mapper = mapper;
        }

        [AllowAnonymous]
        [HttpPost("Authenticate")]
        [ProducesResponseType((int)HttpStatusCode.OK, Type = typeof(PcmResponse))]
        public async Task<ActionResult<PcmResponse>> Authenticate([FromBody] AuthenticateRequest request)
        {
            if (request == null)
                return BadRequest();

            return await _authenticateApplication.Authenticate(new Request<AuthenticateRequest>() { entidad = request });
        }

        [AllowAnonymous]
        [HttpPost("Authorize")]
        [ProducesResponseType((int)HttpStatusCode.OK, Type = typeof(PcmResponse))]
        public async Task<ActionResult<PcmResponse>> Authorize([FromBody] AuthorizeRequest request)
        {
            if (request == null)
                return BadRequest();

            return await _authenticateApplication.Authorize(new Request<AuthorizeRequest>() { entidad = request });
        }

        [HttpGet("GetAccesos")]
        [ServiceFilter(typeof(AuthorizationRequestAttribute))]
        [ProducesResponseType((int)HttpStatusCode.OK, Type = typeof(PcmResponse))]
        public async Task<ActionResult<PcmResponse>> UsuarioAccesos()
        {
            return await _authenticateApplication.UsuarioAccesos();
        }

        [HttpGet("GetPermisos")]
        [ServiceFilter(typeof(AuthorizationRequestAttribute))]
        [ProducesResponseType((int)HttpStatusCode.OK, Type = typeof(PcmResponse))]
        public async Task<ActionResult<PcmResponse>> GetPermisos([FromHeader(Name = "Authorization")] string token, string url)
        {
            if (string.IsNullOrEmpty(url) || string.IsNullOrEmpty(token))
                return BadRequest();

            return await _authenticateApplication.UsuarioPermisos(new UsuarioPermisosrequest { token = token, url = url });
        }

    }
}
