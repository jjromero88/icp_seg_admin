using AutoMapper;
using PCM.SIP.ICP.SEG.Aplicacion.Dto;
using PCM.SIP.ICP.SEG.Domain.Entities;
using PCM.SIP.ICP.SEG.Transversal.Common;
using PCM.SIP.ICP.SEG.Aplicacion.Interface.Features;
using PCM.SIP.ICP.SEG.Transversal.Common.Constants;
using PCM.SIP.ICP.SEG.Transversal.Common.Generics;
using PCM.SIP.ICP.Transversal.UtilWeb.Authentication;
using PCM.SIP.ICP.SEG.Aplicacion.Interface.Infraestructure;
using PCM.SIP.ICP.SEG.Aplicacion.Interface;

namespace PCM.SIP.ICP.SEG.Aplicacion.Features
{
    public class SecurityApplication : ISecurityApplication
    {
        private readonly IMapper _mapper;
        private readonly IAppLogger<SecurityApplication> _logger;
        private readonly IRedisCacheService _redisCacheService;
        private readonly IAuthentication _authentication;
        private readonly IPcmSessionApplication _pcmSessionApplication;

        public SecurityApplication(IMapper mapper, 
            IAppLogger<SecurityApplication> logger, 
            IRedisCacheService redisCacheService, 
            IAuthentication authentication,
            IPcmSessionApplication pcmSessionApplication)
        {
            _mapper = mapper;
            _logger = logger;
            _redisCacheService = redisCacheService;
            _authentication = authentication;
            _pcmSessionApplication = pcmSessionApplication;
        }

        public async Task<PcmResponse> GetSessionData(string token)
        {
            try
            {
                //obtiene datos del usuario de sesion
                var user = _pcmSessionApplication.UsuarioCache;

                //verificamos quew el toekn llegue correctamente
                if (string.IsNullOrEmpty(token))
                {
                    _logger.LogError("Parametro token vacio");
                    return ResponseUtil.Unauthorized();
                }

                if (!token.StartsWith("Bearer ", StringComparison.OrdinalIgnoreCase))
                {
                    _logger.LogError("Formato incorrecto del token");
                    return ResponseUtil.BadRequest(message: "El token tiene un formato incorrecto");
                }

                //seteamos el formato del token
                token = token.Substring("Bearer ".Length).Trim();

                // obtenemos el idSession del Token
                string idsession = _authentication.GetIdSessionFromToken(token);

                //verificamos si existe la idSesion en el token
                if (string.IsNullOrEmpty(idsession))
                {
                    _logger.LogError("Id de sesion vacio");
                    return ResponseUtil.BadRequest(message: "No se encontro la id de sesion en su peticion, intentelo nuevamente");
                }

                //buscamos en redis los datos de la sesion en redis
                var usuarioCache = await _redisCacheService.GetAsync<UsuarioCache>(idsession);

                //verificamos si retorna informacion de la caché
                if (usuarioCache == null)
                {
                    _logger.LogError("Sesion expirada");
                    return ResponseUtil.BadRequest(message: "Su sesión ha expirado, vuelva a intentarlo");
                }

                //mapeamos el resultado a la clase response
                var cacheResponse = _mapper.Map<UsuarioCacheResponse>(usuarioCache);

                //retornamos la informacion
                return cacheResponse != null ? ResponseUtil.Ok(
                    cacheResponse, TransactionMessage.QuerySuccess
                    ) : ResponseUtil.Unauthorized();
            }
            catch (Exception ex)
            {
                _logger.LogError(ex.Message);
                return ResponseUtil.InternalError(message: ex.Message);
            }
        }

    }
}
