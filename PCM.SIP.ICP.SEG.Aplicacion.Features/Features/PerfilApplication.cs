using AutoMapper;
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
    public class PerfilApplication : IPerfilApplication
    {
        private readonly IUnitOfWork _unitOfWork;
        private readonly IMapper _mapper;
        private readonly IAppLogger<PerfilApplication> _logger;
        private readonly PerfilValidationManager _perfilValidationManager;

        public PerfilApplication(
            IUnitOfWork unitOfWork,
            IMapper mapper,
            IAppLogger<PerfilApplication> logger,
            PerfilValidationManager perfilValidationManager)
        {
            _unitOfWork = unitOfWork;
            _mapper = mapper;
            _logger = logger;
            _perfilValidationManager = perfilValidationManager;
        }

        public PcmResponse Insert(Request<PerfilDto> request)
        {
            try
            {
                var validation = _perfilValidationManager.Validate(_mapper.Map<PerfilInsertRequest>(request.entidad));

                if (!validation.IsValid)
                {
                    _logger.LogError(Validation.InvalidMessage);
                    return ResponseUtil.BadRequest(validation.Errors != null ? validation.Errors : null, Validation.InvalidMessage);
                }

                var entidad = _mapper.Map<Perfil>(request.entidad);
                //entidad.usuario_reg = _pipolfySession.username;

                var result = _unitOfWork.Perfil.Insert(entidad);

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

        public PcmResponse Update(Request<PerfilDto> request)
        {
            var validation = _perfilValidationManager.Validate(_mapper.Map<PerfilUpdateRequest>(request.entidad));

            if (!validation.IsValid)
            {
                _logger.LogError(Validation.InvalidMessage);
                return ResponseUtil.BadRequest(validation.Errors != null ? validation.Errors : null, Validation.InvalidMessage);
            }

            try
            {
                var entidad = _mapper.Map<Perfil>(request.entidad);

                //entidad.perfil_id = string.IsNullOrEmpty(request.entidad.SerialKey) ? 0 : Convert.ToInt32(CShrapEncryption.DecryptString(request.entidad.SerialKey, _pipolfySession.authkey));
                //entidad.usuario_act = _pipolfySession.username;

                var result = _unitOfWork.Perfil.Update(entidad);

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

        public PcmResponse Delete(Request<PerfilDto> request)
        {
            var validation = _perfilValidationManager.Validate(_mapper.Map<PerfilIdRequest>(request.entidad));

            if (!validation.IsValid)
            {
                _logger.LogError(Validation.InvalidMessage);
                return ResponseUtil.BadRequest(validation.Errors != null ? validation.Errors : null, Validation.InvalidMessage);
            }

            try
            {
                var entidad = _mapper.Map<Perfil>(request.entidad);

                //entidad.perfil_id = string.IsNullOrEmpty(request.entidad.SerialKey) ? 0 : Convert.ToInt32(CShrapEncryption.DecryptString(request.entidad.SerialKey, _pipolfySession.authkey));
                //entidad.usuario_act = _pipolfySession.username;

                var result = _unitOfWork.Perfil.Delete(entidad);

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

        public PcmResponse GetById(Request<PerfilDto> request)
        {
            try
            {
                var validation = _perfilValidationManager.Validate(_mapper.Map<PerfilIdRequest>(request.entidad));

                if (!validation.IsValid)
                {
                    _logger.LogError(Validation.InvalidMessage);
                    return ResponseUtil.BadRequest(validation.Errors != null ? validation.Errors : null, Validation.InvalidMessage);
                }

                var entidad = _mapper.Map<Perfil>(request.entidad);
                //entidad.perfil_id = string.IsNullOrEmpty(request.entidad.SerialKey) ? 0 : Convert.ToInt32(CShrapEncryption.DecryptString(request.entidad.SerialKey, _pipolfySession.authkey));

                var result = _unitOfWork.Perfil.GetById(entidad);

                if (result.Error)
                {
                    _logger.LogError(result.Message);
                    return ResponseUtil.InternalError(message: result.Message);
                }

                if (result.Data != null)
                {
                    entidad = new Perfil
                    {
                        //SerialKey = string.IsNullOrEmpty(result.Data.perfil_id.ToString()) ? null : CShrapEncryption.EncryptString(result.Data.perfil_id.ToString(), _pipolfySession.authkey),
                        codigo = result.Data.codigo,
                        abreviatura = result.Data.abreviatura,
                        descripcion = result.Data.descripcion,
                        estado = result.Data.estado,
                        usuario_reg = result.Data.usuario_reg,
                        fecha_reg = result.Data.fecha_reg,
                        usuario_act = result.Data.usuario_act,
                        fecha_act = result.Data.fecha_act
                    };
                }

                _logger.LogInformation(TransactionMessage.QuerySuccess);
                return result.Data != null ? ResponseUtil.Ok(
                    _mapper.Map<PerfilResponse>(_mapper.Map<PerfilDto>(entidad)), result.Message ?? TransactionMessage.QuerySuccess
                    ) : ResponseUtil.NoContent();
            }
            catch (Exception ex)
            {
                _logger.LogError(ex.Message);
                return ResponseUtil.InternalError(message: ex.Message);
            }
        }

        public PcmResponse GetList(Request<PerfilDto> request)
        {
            try
            {
                var entidad = _mapper.Map<Perfil>(request.entidad);

                //entidad.perfil_id = string.IsNullOrEmpty(request.entidad.SerialKey) ? 0 : Convert.ToInt32(CShrapEncryption.DecryptString(request.entidad.SerialKey, _pipolfySession.authkey));

                var result = _unitOfWork.Perfil.GetList(entidad);

                if (result.Error)
                {
                    _logger.LogError(result.Message);
                    return ResponseUtil.InternalError(message: result.Message);
                }

                List<Perfil> Lista = new List<Perfil>();

                if (result.Data != null)
                {

                    foreach (var item in result.Data)
                    {
                        Lista.Add(new Perfil()
                        {
                            //SerialKey = string.IsNullOrEmpty(item.perfil_id.ToString()) ? null : CShrapEncryption.EncryptString(item.perfil_id.ToString(), _pipolfySession.authkey),
                            codigo = item.codigo,
                            abreviatura = item.abreviatura,
                            descripcion = item.descripcion,
                            usuario_reg = item.usuario_reg,
                            fecha_reg = item.fecha_reg
                        });
                    }
                }

                _logger.LogInformation(TransactionMessage.QuerySuccess);
                return result != null ? ResponseUtil.Ok(
                    _mapper.Map<List<PerfilResponse>>(_mapper.Map<List<PerfilDto>>(Lista)),
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
