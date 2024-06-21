using AutoMapper;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using PCM.SIP.ICP.SEG.Api.Filters;
using PCM.SIP.ICP.SEG.Aplicacion.Dto;
using PCM.SIP.ICP.SEG.Aplicacion.Features;
using PCM.SIP.ICP.SEG.Aplicacion.Interface.Features;
using PCM.SIP.ICP.SEG.Transversal.Common.Generics;
using PCM.SIP.ICP.SEG.Transversal.Common;
using System.Net;
using PCM.SIP.ICP.SEG.Domain.Entities;

namespace PCM.SIP.ICP.SEG.Api.Controllers
{
    [Authorize]
    [Route("api/[controller]")]
    [ApiController]
    public class PerfilOpcionController : Controller
    {
        private readonly IPerfilOpcionApplication _perfilOpcionApplication;
        private readonly IMapper _mapper;

        public PerfilOpcionController(IPerfilOpcionApplication perfilOpcionApplication, IMapper mapper)
        {
            _perfilOpcionApplication = perfilOpcionApplication;
            _mapper = mapper;
        }

        [HttpGet("GetListPermisosPerfil")]
        [ServiceFilter(typeof(AuthorizationRequestAttribute))]
        [ProducesResponseType((int)HttpStatusCode.OK, Type = typeof(PcmResponse))]
        public ActionResult<PcmResponse> GetListPermisosPerfil([FromQuery] PerfilPermisosRequest request)
        {
            if (request == null)
                return BadRequest();

            return _perfilOpcionApplication.GetListPermisosPerfilOpcion(new Request<PerfilOpcionDto>() { entidad = _mapper.Map<PerfilOpcionDto>(request) });
        }

        [HttpGet("GetList")]
        [ServiceFilter(typeof(AuthorizationRequestAttribute))]
        [ProducesResponseType((int)HttpStatusCode.OK, Type = typeof(PcmResponse))]
        public ActionResult<PcmResponse> GetList([FromQuery] PerfilOpcionFilterRequest request)
        {
            if (request == null)
                return BadRequest();

            return _perfilOpcionApplication.GetList(new Request<PerfilOpcionDto>() { entidad = _mapper.Map<PerfilOpcionDto>(request) });
        }

        [HttpPost("Insert")]
        [ServiceFilter(typeof(AuthorizationRequestAttribute))]
        [ProducesResponseType((int)HttpStatusCode.OK, Type = typeof(PcmResponse))]
        public ActionResult<PcmResponse> Insert([FromBody] PerfilOpcionInsertRequest request)
        {
            if (request == null)
                return BadRequest();

            return _perfilOpcionApplication.Insert(new Request<PerfilOpcionDto>() { entidad = _mapper.Map<PerfilOpcionDto>(request) });
        }

    }
}
