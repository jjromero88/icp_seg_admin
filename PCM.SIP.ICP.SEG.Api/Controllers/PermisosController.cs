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

namespace PCM.SIP.ICP.SEG.Api.Controllers
{
    [Authorize]
    [Route("api/[controller]")]
    [ApiController]
    public class PermisosController : Controller
    {
        private readonly IPermisosApplication _permisosApplication;
        private readonly IMapper _mapper;

        public PermisosController(IPermisosApplication permisosApplication, IMapper mapper)
        {
            _permisosApplication = permisosApplication;
            _mapper = mapper;
        }

        [HttpGet("GetList")]
        [ServiceFilter(typeof(AuthorizationRequestAttribute))]
        [ProducesResponseType((int)HttpStatusCode.OK, Type = typeof(PcmResponse))]
        public ActionResult<PcmResponse> GetList()
        {
            return _permisosApplication.GetList(new Request<PermisosDto>() { entidad = new PermisosDto()});
        }

    }
}
