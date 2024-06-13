using AutoMapper;
using System.Net;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using PCM.SIP.ICP.SEG.Api.Filters;
using PCM.SIP.ICP.SEG.Aplicacion.Dto;
using PCM.SIP.ICP.SEG.Aplicacion.Interface.Features;
using PCM.SIP.ICP.SEG.Transversal.Common.Generics;
using PCM.SIP.ICP.SEG.Transversal.Common;

namespace PCM.SIP.ICP.SEG.Api.Controllers
{
    [Authorize]
    [Route("api/[controller]")]
    [ApiController]
    public class UsuarioController : Controller
    {
        private readonly IUsuarioApplication _usuarioApplication;
        private readonly IMapper _mapper;

        public UsuarioController(IUsuarioApplication usuarioApplication, IMapper mapper)
        {
            _usuarioApplication = usuarioApplication;
            _mapper = mapper;
        }

        [HttpGet("GetById")]
        [ServiceFilter(typeof(AuthorizationRequestAttribute))]
        [ProducesResponseType((int)HttpStatusCode.OK, Type = typeof(PcmResponse))]
        public ActionResult<PcmResponse> GetById([FromQuery] UsuarioIdRequest request)
        {
            if (request == null)
                return BadRequest();

            return _usuarioApplication.GetById(new Request<UsuarioDto>() { entidad = _mapper.Map<UsuarioDto>(request) });
        }

        [HttpGet("GetList")]
        [ServiceFilter(typeof(AuthorizationRequestAttribute))]
        [ProducesResponseType((int)HttpStatusCode.OK, Type = typeof(PcmResponse))]
        public ActionResult<PcmResponse> GetList([FromQuery] UsuarioFilterRequest request)
        {
            if (request == null)
                return BadRequest();

            return _usuarioApplication.GetList(new Request<UsuarioDto>() { entidad = _mapper.Map<UsuarioDto>(request) });
        }

        [HttpPost("Insert")]
        [ServiceFilter(typeof(AuthorizationRequestAttribute))]
        [ProducesResponseType((int)HttpStatusCode.OK, Type = typeof(PcmResponse))]
        public ActionResult<PcmResponse> Insert([FromBody] UsuarioInsertRequest request)
        {
            if (request == null)
                return BadRequest();

            return _usuarioApplication.Insert(new Request<UsuarioDto>() { entidad = _mapper.Map<UsuarioDto>(request) });
        }

        [HttpPut("Update")]
        [ServiceFilter(typeof(AuthorizationRequestAttribute))]
        [ProducesResponseType((int)HttpStatusCode.OK, Type = typeof(PcmResponse))]
        public ActionResult<PcmResponse> Update([FromBody] UsuarioUpdateRequest request)
        {
            if (request == null)
                return BadRequest();

            return _usuarioApplication.Update(new Request<UsuarioDto>() { entidad = _mapper.Map<UsuarioDto>(request) });
        }

        [HttpDelete("Delete")]
        [ServiceFilter(typeof(AuthorizationRequestAttribute))]
        [ProducesResponseType((int)HttpStatusCode.OK, Type = typeof(PcmResponse))]
        public ActionResult<PcmResponse> DeleteObject([FromBody] UsuarioIdRequest request)
        {
            if (request == null)
                return BadRequest();

            return _usuarioApplication.Delete(new Request<UsuarioDto>() { entidad = _mapper.Map<UsuarioDto>(request) });
        }
    }
}
