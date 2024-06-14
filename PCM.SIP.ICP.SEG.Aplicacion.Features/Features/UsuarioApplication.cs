using AutoMapper;
using System.Text.Json;
using PCM.SIP.ICP.SEG.Aplicacion.Dto;
using PCM.SIP.ICP.SEG.Aplicacion.Interface;
using PCM.SIP.ICP.SEG.Aplicacion.Interface.Features;
using PCM.SIP.ICP.SEG.Aplicacion.Validator;
using PCM.SIP.ICP.SEG.Domain.Entities;
using PCM.SIP.ICP.SEG.Transversal.Common;
using PCM.SIP.ICP.SEG.Transversal.Common.Constants;
using PCM.SIP.ICP.SEG.Transversal.Common.Generics;
using PCM.SIP.ICP.Transversal.Util.Encryptions;

namespace PCM.SIP.ICP.SEG.Aplicacion.Features
{
    public class UsuarioApplication : IUsuarioApplication
    {
        private readonly IUnitOfWork _unitOfWork;
        private readonly IMapper _mapper;
        private readonly IAppLogger<UsuarioApplication> _logger;
        private readonly IPcmSessionApplication _pcmSessionApplication;
        private readonly UsuarioValidationManager _usuarioValidationManager;

        public UsuarioApplication(
            IUnitOfWork unitOfWork, 
            IMapper mapper, 
            IAppLogger<UsuarioApplication> logger, 
            IPcmSessionApplication pcmSessionApplication, 
            UsuarioValidationManager usuarioValidationManager)
        {
            _unitOfWork = unitOfWork;
            _mapper = mapper;
            _logger = logger;
            _pcmSessionApplication = pcmSessionApplication;
            _usuarioValidationManager = usuarioValidationManager;
        }

        public PcmResponse Insert(Request<UsuarioDto> request)
        {
            try
            {
                var validation = _usuarioValidationManager.Validate(_mapper.Map<UsuarioInsertRequest>(request.entidad));

                if (!validation.IsValid)
                {
                    _logger.LogError(Validation.InvalidMessage);
                    return ResponseUtil.BadRequest(validation.Errors != null ? validation.Errors : null, Validation.InvalidMessage);
                }

                var entidad = _mapper.Map<Usuario>(request.entidad);

                entidad.persona_id = string.IsNullOrEmpty(request.entidad.personakey) ? 0 : Convert.ToInt32(CShrapEncryption.DecryptString(request.entidad.personakey, _pcmSessionApplication.UsuarioCache.authkey));
                entidad.perfiles_id = string.IsNullOrEmpty(request.entidad.perfileskey) ? null : CShrapEncryption.DecryptArray(request.entidad.perfileskey, _pcmSessionApplication.UsuarioCache.authkey);
                entidad.password = string.IsNullOrEmpty(request.entidad.perfileskey) ? null : EncriptacionHelper.Encrypt(request.entidad.password?.Trim());
                entidad.usuario_reg = _pcmSessionApplication.UsuarioCache.username;

                var result = _unitOfWork.Usuario.Insert(entidad);

                if (result.Error)
                {
                    _logger.LogError(result.Message);
                    return ResponseUtil.InternalError(message: result.Message);
                }

                _logger.LogInformation(result.Message ?? TransactionMessage.SaveSuccess);
                return ResponseUtil.Created(message: TransactionMessage.SaveSuccess);
            }
            catch (Exception ex)
            {
                _logger.LogError(ex.Message);
                return ResponseUtil.InternalError(message: ex.Message);
            }
        }

        public PcmResponse Update(Request<UsuarioDto> request)
        {
            var validation = _usuarioValidationManager.Validate(_mapper.Map<UsuarioUpdateRequest>(request.entidad));

            if (!validation.IsValid)
            {
                _logger.LogError(Validation.InvalidMessage);
                return ResponseUtil.BadRequest(validation.Errors != null ? validation.Errors : null, Validation.InvalidMessage);
            }

            try
            {
                var entidad = _mapper.Map<Usuario>(request.entidad);

                entidad.usuario_id = string.IsNullOrEmpty(request.entidad.SerialKey) ? 0 : Convert.ToInt32(CShrapEncryption.DecryptString(request.entidad.SerialKey, _pcmSessionApplication.UsuarioCache.authkey));
                entidad.persona_id = string.IsNullOrEmpty(request.entidad.personakey) ? 0 : Convert.ToInt32(CShrapEncryption.DecryptString(request.entidad.personakey, _pcmSessionApplication.UsuarioCache.authkey));
                entidad.perfiles_id = string.IsNullOrEmpty(request.entidad.perfileskey) ? null : CShrapEncryption.DecryptArray(request.entidad.perfileskey, _pcmSessionApplication.UsuarioCache.authkey);
                entidad.password = string.IsNullOrEmpty(request.entidad.perfileskey) ? null : EncriptacionHelper.Encrypt(request.entidad.password?.Trim());
                entidad.usuario_act = _pcmSessionApplication.UsuarioCache.username;

                var result = _unitOfWork.Usuario.Update(entidad);

                if (result.Error)
                {
                    _logger.LogError(result.Message);
                    return ResponseUtil.InternalError(message: result.Message);
                }

                _logger.LogInformation(result.Message ?? TransactionMessage.UpdateSuccess);
                return ResponseUtil.Created(message: TransactionMessage.UpdateSuccess);
            }
            catch (Exception ex)
            {
                _logger.LogError(ex.Message);
                return ResponseUtil.InternalError(message: ex.Message);
            }
        }

        public PcmResponse Delete(Request<UsuarioDto> request)
        {
            var validation = _usuarioValidationManager.Validate(_mapper.Map<UsuarioIdRequest>(request.entidad));

            if (!validation.IsValid)
            {
                _logger.LogError(Validation.InvalidMessage);
                return ResponseUtil.BadRequest(validation.Errors != null ? validation.Errors : null, Validation.InvalidMessage);
            }

            try
            {
                var entidad = _mapper.Map<Usuario>(request.entidad);

                entidad.usuario_id = string.IsNullOrEmpty(request.entidad.SerialKey) ? 0 : Convert.ToInt32(CShrapEncryption.DecryptString(request.entidad.SerialKey, _pcmSessionApplication.UsuarioCache.authkey));
                entidad.usuario_act = _pcmSessionApplication.UsuarioCache.username;

                var result = _unitOfWork.Usuario.Delete(entidad);

                if (result.Error)
                {
                    _logger.LogError(result.Message);
                    return ResponseUtil.InternalError(message: result.Message);
                }

                _logger.LogInformation(TransactionMessage.DeleteSuccess);
                return ResponseUtil.Created(message: result.Message ?? TransactionMessage.DeleteSuccess);
            }
            catch (Exception ex)
            {
                _logger.LogError(ex.Message);
                return ResponseUtil.InternalError(message: ex.Message);
            }
        }

        public PcmResponse GetById(Request<UsuarioDto> request)
        {
            try
            {
                var validation = _usuarioValidationManager.Validate(_mapper.Map<UsuarioIdRequest>(request.entidad));

                if (!validation.IsValid)
                {
                    _logger.LogError(Validation.InvalidMessage);
                    return ResponseUtil.BadRequest(validation.Errors != null ? validation.Errors : null, Validation.InvalidMessage);
                }

                var entidad = _mapper.Map<Usuario>(request.entidad);
                entidad.usuario_id = string.IsNullOrEmpty(request.entidad.SerialKey) ? 0 : Convert.ToInt32(CShrapEncryption.DecryptString(request.entidad.SerialKey, _pcmSessionApplication.UsuarioCache.authkey));

                var result = _unitOfWork.Usuario.GetById(entidad);

                if (result.Error)
                {
                    _logger.LogError(result.Message);
                    return ResponseUtil.InternalError(message: result.Message);
                }

                if (result.Data != null)
                {
                    entidad = new Usuario
                    {
                        SerialKey = string.IsNullOrEmpty(result.Data.usuario_id == null ? null : result.Data.usuario_id.ToString()) ? null : CShrapEncryption.EncryptString(result.Data.usuario_id.ToString(), _pcmSessionApplication.UsuarioCache.authkey),
                        personakey = string.IsNullOrEmpty(result.Data.persona_id == null ? null : result.Data.persona_id.ToString()) ? null : CShrapEncryption.EncryptString(result.Data.persona_id.ToString(), _pcmSessionApplication.UsuarioCache.authkey),
                        username = result.Data.username,                       
                        numdocumento = result.Data.numdocumento,
                        nombre_completo = result.Data.nombre_completo,
                        interno = result.Data.interno,
                        estado = result.Data.estado,
                        usuario_reg = result.Data.usuario_reg,
                        fecha_reg = result.Data.fecha_reg,
                        usuario_act = result.Data.usuario_act,
                        fecha_act = result.Data.fecha_act
                    };
                }

                _logger.LogInformation(TransactionMessage.QuerySuccess);
                return result.Data != null ? ResponseUtil.Ok(
                    _mapper.Map<UsuarioResponse>(_mapper.Map<UsuarioDto>(entidad)), result.Message ?? TransactionMessage.QuerySuccess
                    ) : ResponseUtil.NoContent();
            }
            catch (Exception ex)
            {
                _logger.LogError(ex.Message);
                return ResponseUtil.InternalError(message: ex.Message);
            }
        }

        public PcmResponse GetList(Request<UsuarioDto> request)
        {
            try
            {
                var entidad = _mapper.Map<Usuario>(request.entidad);

                entidad.usuario_id = string.IsNullOrEmpty(request.entidad.SerialKey) ? 0 : Convert.ToInt32(CShrapEncryption.DecryptString(request.entidad.SerialKey, _pcmSessionApplication.UsuarioCache.authkey));
                entidad.persona_id = string.IsNullOrEmpty(request.entidad.personakey) ? null : Convert.ToInt32(CShrapEncryption.DecryptString(request.entidad.personakey, _pcmSessionApplication.UsuarioCache.authkey));

                var result = _unitOfWork.Usuario.GetList(entidad);

                if (result.Error)
                {
                    _logger.LogError(result.Message);
                    return ResponseUtil.InternalError(message: result.Message);
                }

                List<Usuario> Lista = new List<Usuario>();

                if (result.Data != null)
                {
                    foreach (var item in result.Data)
                    {
                        Lista.Add(new Usuario()
                        {
                            SerialKey = string.IsNullOrEmpty(item.usuario_id == null ? null : item.usuario_id.ToString()) ? null : CShrapEncryption.EncryptString(item.usuario_id.ToString(), _pcmSessionApplication.UsuarioCache.authkey),
                            personakey = string.IsNullOrEmpty(item.persona_id == null ? null : item.persona_id.ToString()) ? null : CShrapEncryption.EncryptString(item.persona_id.ToString(), _pcmSessionApplication.UsuarioCache.authkey),
                            username = item.username,
                            numdocumento = item.numdocumento,
                            nombre_completo = item.nombre_completo,
                            interno = item.interno,
                            lista_perfiles = string.IsNullOrEmpty(item.json_perfiles) ? new List<Perfil>() : JsonSerializer.Deserialize<List<Perfil>>(item.json_perfiles),
                            usuario_reg = item.usuario_reg,
                            fecha_reg = item.fecha_reg
                        });
                    }
                }

                _logger.LogInformation(TransactionMessage.QuerySuccess);
                return result != null ? ResponseUtil.Ok(
                    _mapper.Map<List<UsuarioResponse>>(_mapper.Map<List<UsuarioDto>>(Lista)),
                    result.Message ?? TransactionMessage.QuerySuccess
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
