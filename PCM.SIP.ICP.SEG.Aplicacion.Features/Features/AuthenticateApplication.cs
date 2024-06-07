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

namespace PCM.SIP.ICP.SEG.Aplicacion.Features
{
    public class AuthenticateApplication : IAuthenticateApplication
    {
        private readonly IUnitOfWork _unitOfWork;
        private readonly IMapper _mapper;
        private readonly IRedisCacheService _redisCacheService;
        private readonly IAuthentication _authentication;
        private readonly IPcmSessionApplication _pcmSessionApplication;
        private readonly IAppLogger<UsuarioApplication> _logger;
        private readonly AuthenticateValidationManager _authenticateValidationManager;

        public AuthenticateApplication(
            IUnitOfWork unitOfWork, 
            IMapper mapper, 
            IRedisCacheService redisCacheService, 
            IAuthentication authentication,
            IPcmSessionApplication pcmSessionApplication,
            IAppLogger<UsuarioApplication> logger, 
            AuthenticateValidationManager authenticateValidationManager)
        {
            _unitOfWork = unitOfWork;
            _mapper = mapper;
            _redisCacheService = redisCacheService;
            _authentication = authentication;
            _logger = logger;
            _authenticateValidationManager = authenticateValidationManager;
            _pcmSessionApplication = pcmSessionApplication;
        }

        public async Task<PcmResponse> Authenticate(Request<AuthenticateRequest> request)
        {
            try
            {
                //ejecutamos las validaciones
                var validation = _authenticateValidationManager.Validate(request.entidad);

                //verificamos si ocurrio un error de validacion
                if (!validation.IsValid)
                {
                    _logger.LogError(Validation.InvalidMessage);
                    return ResponseUtil.BadRequest(validation.Errors != null ? validation.Errors : null, Validation.InvalidMessage);
                }

                // mapeamos la entidad request
                var entidad = _mapper.Map<Usuario>(request.entidad);

                // consumimos el metodo Authenticate
                var result = _unitOfWork.Authenticate.Authenticate(new Usuario { username = request.entidad.username?.Trim(), password = EncriptacionHelper.Encrypt(request.entidad.password?.Trim()) }, out string jsonUsuarioLogin);

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


        public async Task<PcmResponse> Authorize(Request<AuthorizeRequest> request)
        {
            try
            {
                //ejecutamos las validaciones
                var validation = _authenticateValidationManager.Validate(request.entidad);

                //verificamos si ocurrio un error de validacion
                if (!validation.IsValid)
                {
                    _logger.LogError(Validation.InvalidMessage);
                    return ResponseUtil.BadRequest(validation.Errors != null ? validation.Errors : null, Validation.InvalidMessage);
                }

                //guardamos la informacion de la entidad de request
                var requestAuthorize = request.entidad;

                //obtenemos la informacion de la cache
                var usuario = await _redisCacheService.GetAsync<Usuario>(requestAuthorize.idsession);

                //verificamos si retorna informacion de la caché
                if (usuario == null || usuario.lista_perfiles == null)
                {
                    _logger.LogError("Sesion expirada");
                    return ResponseUtil.BadRequest(message: "Su sesión ha expirado, vuelva a intentarlo");
                }

                //obtenemos el perfil seleccionado
                var perfil = usuario.lista_perfiles.FirstOrDefault(p => p.codigo == requestAuthorize.codigo_perfil);

                //verificamos que exista el perfil solicitado
                if (perfil == null)
                {
                    _logger.LogError("El perfil seleccionado no ha sido encontrado");
                    return ResponseUtil.BadRequest(message: "El perfil seleccionado no ha sido encontrado, vuelva a intentarlo");
                }

                //generamos la llave de encriptacion para la sesion
                var authkey = CShrapEncryption.GenerateKey();

                //generamos la id para la sesion de usuario
                var idsession = Guid.NewGuid().ToString();

                //formamos la clase con las propiedades de usuario que se guardaran en cache
                var usuarioCache = new UsuarioCache
                {
                    authkey = authkey,
                    usuariokey = CShrapEncryption.EncryptString(usuario.usuario_id.ToString(), authkey),
                    perfilkey = CShrapEncryption.EncryptString(perfil.perfil_id.ToString(), authkey),
                    username = usuario.username,
                    perfil = perfil.descripcion,
                    numdocumento = usuario.numdocumento,
                    nombre_completo = usuario.nombre_completo
                };

                //definimos los tiempos de expiracion de la sesion en minutos
                int totalExpireCache = 480;
                int slidingExpireCache = 60;

                //guardamos en redis cache la informacion del usuario logeado
                await _redisCacheService.SetAsync(idsession, usuarioCache, totalExpireCache, slidingExpireCache);

                //generamos el Token para la sesion de usuario
                string Token = await _authentication.BuildToken(usuarioCache.username, idsession, totalExpireCache);

                //formamos la clase de response
                var authorizeResponse = new AuthorizeResponse
                {
                    token = Token,
                    username = usuario.username,
                    perfil = perfil.descripcion,
                    numdocumento = usuario.numdocumento
                };

                //registramos el log de la transaccion
                _logger.LogInformation(AuthenticateMessage.AuthenticateSuccess);

                //retornamos la informacion
                return authorizeResponse != null ? ResponseUtil.Ok(
                    authorizeResponse, AuthenticateMessage.AuthenticateSuccess
                    ) : ResponseUtil.Unauthorized();
            }
            catch (Exception ex)
            {
                _logger.LogError(ex.Message);
                return ResponseUtil.InternalError(message: ex.Message);
            }
        }

        public async Task<PcmResponse> UsuarioAccesos()
        {
            try
            {
                // obtenemos las variables de sesion
                string usuariokey = _pcmSessionApplication.UsuarioCache.usuariokey ?? string.Empty;
                string perfilkey = _pcmSessionApplication.UsuarioCache.perfilkey ?? string.Empty;

                //verificamos si retorna informacion de la caché
                if (usuariokey == null || perfilkey == null)
                {
                    _logger.LogError("Sesion expirada");
                    return ResponseUtil.BadRequest(message: "Su sesión ha expirado, vuelva a intentarlo");
                }

                // definimos la entidad
                var entidad = new UsuarioPerfil();

                // desencriptamos los id de perfil y usuario
                entidad.usuario_id = string.IsNullOrEmpty(usuariokey) ? 0 : Convert.ToInt32(CShrapEncryption.DecryptString(usuariokey, _pcmSessionApplication.UsuarioCache.authkey));
                entidad.perfil_id = string.IsNullOrEmpty(perfilkey) ? 0 : Convert.ToInt32(CShrapEncryption.DecryptString(perfilkey, _pcmSessionApplication.UsuarioCache.authkey));

                // consultamos en bd por los accesos
                var result = _unitOfWork.Authenticate.UsuarioAccesos(entidad, out string jsonUsuarioAccesos);

                // evaluamos si ocurrio un error de validacion desde base de datos
                if (result.Error)
                {
                    _logger.LogError(result.Message);
                    return ResponseUtil.BadRequest(message: result.Message);
                }

                // deserializamos el json de salida al tipo SistemaOpcion
                var usuarioAccesos = JsonSerializer.Deserialize<List<SistemaOpcion>>(jsonUsuarioAccesos);

                // mapeamos el formato de respuesta
                var accesosResponse = _mapper.Map<List<UsuarioAccesosResponse>>(usuarioAccesos);

                //registramos el log de la transaccion
                _logger.LogInformation(TransactionMessage.QuerySuccess);

                //retornamos la informacion
                return accesosResponse != null ? ResponseUtil.Ok(
                    accesosResponse, AuthenticateMessage.AuthenticateSuccess
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
