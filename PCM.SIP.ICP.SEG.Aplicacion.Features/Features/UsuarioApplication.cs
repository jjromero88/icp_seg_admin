using AutoMapper;
using System.Text.Json;
using PCM.SIP.ICP.SEG.Aplicacion.Dto;
using PCM.SIP.ICP.SEG.Aplicacion.Interface;
using PCM.SIP.ICP.SEG.Aplicacion.Interface.Features;
using PCM.SIP.ICP.SEG.Aplicacion.Interface.Infraestructure;
using PCM.SIP.ICP.SEG.Aplicacion.Validator;
using PCM.SIP.ICP.SEG.Domain.Entities;
using PCM.SIP.ICP.SEG.Transversal.Common;
using PCM.SIP.ICP.SEG.Transversal.Common.Constants;
using PCM.SIP.ICP.SEG.Transversal.Common.Generics;
using PCM.SIP.ICP.Transversal.Util.Encryptions;
using PCM.SIP.ICP.Transversal.UtilWeb.Authentication;
using PCM.SIP.ICP.SEG.Aplicacion.Dto.Dto;

namespace PCM.SIP.ICP.SEG.Aplicacion.Features
{
    public class UsuarioApplication : IUsuarioApplication
    {
        private readonly IUnitOfWork _unitOfWork;
        private readonly IMapper _mapper;
        private readonly IRedisCacheService _redisCacheService;
        private readonly IAuthentication _authentication;
        private readonly IAppLogger<UsuarioApplication> _logger;
        private readonly UsuarioValidationManager _usuarioValidationManager;

        public UsuarioApplication(
            IUnitOfWork unitOfWork,
            IMapper mapper,
            IRedisCacheService redisCacheService,
            IAuthentication authentication,
            IAppLogger<UsuarioApplication> logger,
            UsuarioValidationManager usuarioValidationManager)
        {
            _unitOfWork = unitOfWork;
            _mapper = mapper;
            _logger = logger;
            _usuarioValidationManager = usuarioValidationManager;
            _redisCacheService = redisCacheService;
            _authentication = authentication;
        }

        public async Task<PcmResponse> Authenticate(Request<UsuarioDto> request)
        {
            try
            {
                //ejecutamos las validaciones
                var validation = _usuarioValidationManager.Validate(_mapper.Map<UsuarioLoginRequest>(request.entidad));

                //verificamos si ocurrio un error de validacion
                if (!validation.IsValid)
                {
                    _logger.LogError(Validation.InvalidMessage);
                    return ResponseUtil.BadRequest(validation.Errors != null ? validation.Errors : null, Validation.InvalidMessage);
                }

                // mapeamos la entidad request
                var entidad = _mapper.Map<Usuario>(request.entidad);

                // consumimos el metodo Authenticate
                var result = _unitOfWork.Usuario.Authenticate(new Usuario { username = request.entidad.username?.Trim(), password = EncriptacionHelper.Encrypt(request.entidad.password?.Trim()) }, out string jsonUsuarioLogin);

                //evaluamos si ocurrio un error de validacion desde base de datos
                if (result.Error)
                {
                    _logger.LogError(result.Message);
                    return ResponseUtil.BadRequest(message: result.Message);
                }

                //verificamos que la variable de salida con informacion del usuario no este vacia
                if (string.IsNullOrEmpty(jsonUsuarioLogin))
                {
                    _logger.LogError($"No se encontraron resultados en el Login con el usuario: {entidad.username}");
                    return ResponseUtil.BadRequest(message: $"No se encontraron resultados en el Login con el usuario: {entidad.username}");
                }

                //deserializamos la informacion del usuario
                var usuarioLogin = JsonSerializer.Deserialize<Usuario>(jsonUsuarioLogin);

                //generamos un id para la sesion 
                var idsession = Guid.NewGuid().ToString();

                //guardamos los datos obtenidos del usuario en redis cache
                await _redisCacheService.SetAsync(idsession, usuarioLogin, 10, 5);

                //mapeamos la informacion del usuario para el response
                var authenticateResponse = _mapper.Map<AuthenticateResponse>(usuarioLogin);

                //seteamos el id de la sesion el cual representa la cachekey de la info del loginusuario en redis
                authenticateResponse.idsession = idsession;

                //registramos el log de la transaccion
                _logger.LogInformation(AuthenticateMessage.AuthenticateSuccess);

                //retornamos la informacion
                return authenticateResponse != null ? ResponseUtil.Ok(
                    authenticateResponse, AuthenticateMessage.AuthenticateSuccess
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
