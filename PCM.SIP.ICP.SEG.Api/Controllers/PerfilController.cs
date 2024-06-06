using AutoMapper;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using PCM.SIP.ICP.SEG.Api.Filters;
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
    public class PerfilController : Controller
    {
        private readonly IPerfilApplication _perfilApplication;
        private readonly IMapper _mapper;

        public PerfilController(IPerfilApplication perfilApplication, IMapper mapper)
        {
            _perfilApplication = perfilApplication;
            _mapper = mapper;
        }

        [HttpGet("GetById")]
        [ServiceFilter(typeof(AuthorizationRequestAttribute))]
        [ProducesResponseType((int)HttpStatusCode.OK, Type = typeof(PcmResponse))]
        public ActionResult<PcmResponse> GetById([FromQuery] PerfilIdRequest request)
        {
            if (request == null)
                return BadRequest();

            return _perfilApplication.GetById(new Request<PerfilDto>() { entidad = _mapper.Map<PerfilDto>(request) });
        }

        [HttpGet("GetList")]
        [ServiceFilter(typeof(AuthorizationRequestAttribute))]
        [ProducesResponseType((int)HttpStatusCode.OK, Type = typeof(PcmResponse))]
        public ActionResult<PcmResponse> GetList([FromQuery] PerfilFilterRequest request)
        {
            if (request == null)
                return BadRequest();

            return _perfilApplication.GetList(new Request<PerfilDto>() { entidad = _mapper.Map<PerfilDto>(request) });
        }

        [HttpPost("Insert")]
        [ServiceFilter(typeof(AuthorizationRequestAttribute))]
        [ProducesResponseType((int)HttpStatusCode.OK, Type = typeof(PcmResponse))]
        public ActionResult<PcmResponse> Insert([FromBody] PerfilInsertRequest request)
        {
            if (request == null)
                return BadRequest();

            return _perfilApplication.Insert(new Request<PerfilDto>() { entidad = _mapper.Map<PerfilDto>(request) });
        }

        [HttpPut("Update")]
        [ServiceFilter(typeof(AuthorizationRequestAttribute))]
        [ProducesResponseType((int)HttpStatusCode.OK, Type = typeof(PcmResponse))]
        public ActionResult<PcmResponse> Update([FromBody] PerfilUpdateRequest request)
        {
            if (request == null)
                return BadRequest();

            return _perfilApplication.Update(new Request<PerfilDto>() { entidad = _mapper.Map<PerfilDto>(request) });
        }

    }
}
