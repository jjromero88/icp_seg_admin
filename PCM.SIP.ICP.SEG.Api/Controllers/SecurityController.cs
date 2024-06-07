using AutoMapper;
using System.Net;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using PCM.SIP.ICP.SEG.Aplicacion.Interface.Features;
using PCM.SIP.ICP.SEG.Transversal.Common.Generics;
using PCM.SIP.ICP.SEG.Api.Filters;

namespace PCM.SIP.ICP.SEG.Api.Controllers
{
    [Authorize]
    [Route("api/[controller]")]
    [ApiController]
    public class SecurityController : Controller
    {
        private readonly ISecurityApplication _securityApplication;
        private readonly IMapper _mapper;

        public SecurityController(ISecurityApplication securityApplication, IMapper mapper)
        {
            _securityApplication = securityApplication;
            _mapper = mapper;
        }

        [HttpGet("GetSessionData")]
        [ProducesResponseType((int)HttpStatusCode.OK, Type = typeof(PcmResponse))]
        public async Task<ActionResult<PcmResponse>> GetSessionData([FromHeader(Name = "Authorization")] string token)
        {
            if (token == null)
                return Unauthorized();

            return await _securityApplication.GetSessionData(token);
        }

        [HttpGet("ValidateToken")]
        [ValidateTokenRequest]
        public IActionResult Token()
        {
            return Ok();
        }

    }
}
