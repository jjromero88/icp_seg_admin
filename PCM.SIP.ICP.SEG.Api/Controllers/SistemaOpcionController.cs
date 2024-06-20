using AutoMapper;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using PCM.SIP.ICP.SEG.Api.Filters;
using PCM.SIP.ICP.SEG.Aplicacion.Dto;
using PCM.SIP.ICP.SEG.Aplicacion.Interface.Features;
using PCM.SIP.ICP.SEG.Transversal.Common.Generics;
using PCM.SIP.ICP.SEG.Transversal.Common;
using System.Net;

namespace PCM.SIP.ICP.SEG.Api.Controllers
{
    [Authorize]
    [Route("api/[controller]")]
    [ApiController]
    public class SistemaOpcionController : Controller
    {
        private readonly ISistemaOpcionApplication _sistemaOpcionApplication;
        private readonly IMapper _mapper;

        public SistemaOpcionController(ISistemaOpcionApplication sistemaOpcionApplication, IMapper mapper)
        {
            _sistemaOpcionApplication = sistemaOpcionApplication;
            _mapper = mapper;
        }

        [HttpGet("GetListPadres")]
        [ServiceFilter(typeof(AuthorizationRequestAttribute))]
        [ProducesResponseType((int)HttpStatusCode.OK, Type = typeof(PcmResponse))]
        public ActionResult<PcmResponse> GetList([FromQuery] SistemaOpcionPadresRequest request)
        {
            if (request == null)
                return BadRequest();

            return _sistemaOpcionApplication.GetListPadres(new Request<SistemaOpcionDto>() { entidad = _mapper.Map<SistemaOpcionDto>(request) });
        }

        [HttpGet("GetListHijos")]
        [ServiceFilter(typeof(AuthorizationRequestAttribute))]
        [ProducesResponseType((int)HttpStatusCode.OK, Type = typeof(PcmResponse))]
        public ActionResult<PcmResponse> GetListHijos([FromQuery] SistemaOpcionHijosRequest request)
        {
            if (request == null)
                return BadRequest();

            return _sistemaOpcionApplication.GetListHijos(new Request<SistemaOpcionDto>() { entidad = _mapper.Map<SistemaOpcionDto>(request) });
        }

    }
}
