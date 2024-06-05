using AutoMapper;
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
                var validation = _usuarioValidationManager.Validate(_mapper.Map<UsuarioLoginRequest>(request.entidad));

                if (!validation.IsValid)
                {
                    _logger.LogError(Validation.InvalidMessage);
                    return ResponseUtil.BadRequest(validation.Errors != null ? validation.Errors : null, Validation.InvalidMessage);
                }

                // mapeamos la entidad request
                var entidad = _mapper.Map<Usuario>(request.entidad);

                // consumimos el metodo Authenticate
                var result = _unitOfWork.Usuario.Authenticate(new Usuario { username = request.entidad.username?.Trim(), password = EncriptacionHelper.Encrypt(request.entidad.password?.Trim()) });

                if (result.Error)
                {
                    _logger.LogError(result.Message);
                    return ResponseUtil.InternalError(message: result.Message);
                }

                //se genera el Authkey de la sesion
                var authkey = CShrapEncryption.GenerateKey();

                //verificamos que exista data
                if (result.Data != null)
                {
                    entidad = new Usuario
                    {
                        SerialKey = string.IsNullOrEmpty(result.Data.usuario_id.ToString()) ? null : CShrapEncryption.EncryptString(result.Data.usuario_id.ToString(), authkey),
                        username = result.Data.username,
                        password = result.Data.password,
                        interno = result.Data.interno,
                        numdocumento = result.Data.numdocumento,
                        apellido_paterno = result.Data.apellido_paterno,
                        apellido_materno = result.Data.apellido_materno,
                        nombres = result.Data.nombres,
                        email = result.Data.email,
                        telefono_movil = result.Data.telefono_movil,
                        nombre_completo = result.Data.nombre_completo
                    };
                }

                //instanciamos la clase que almacena los datos de la sesion de usuario
                var usuarioCacheSesion = new UsuarioCacheSesion
                {
                    username = entidad.username,
                    authkey = authkey
                };

                //generamos la key de la cache
                var cacheKey = Guid.NewGuid().ToString();

                //guardamos los datos de la sesion del usuario
                 await _redisCacheService.SetAsync(cacheKey, usuarioCacheSesion, 10, 10);

                //generamos el token 
                string token = await _authentication.BuildToken(entidad.username, cacheKey, 240);

                //formamos el response de login
                var responseLogin = new UsuarioLoginResponse()
                {
                    username = entidad.username,
                    Token = token
                };

                _logger.LogInformation(AuthenticateMessage.AuthenticateSuccess);

                return result.Data != null ? ResponseUtil.Ok(
                    responseLogin, AuthenticateMessage.AuthenticateSuccess
                    ) : ResponseUtil.NoContent();
            }
            catch (Exception ex)
            {
                _logger.LogError(ex.Message);
                return ResponseUtil.InternalError(message: ex.Message);
            }
        }
    }
}
