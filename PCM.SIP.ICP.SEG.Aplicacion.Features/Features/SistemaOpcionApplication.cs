using AutoMapper;
using PCM.SIP.ICP.SEG.Aplicacion.Dto;
using PCM.SIP.ICP.SEG.Aplicacion.Interface;
using PCM.SIP.ICP.SEG.Aplicacion.Interface.Features;
using PCM.SIP.ICP.SEG.Domain.Entities;
using PCM.SIP.ICP.SEG.Transversal.Common;
using PCM.SIP.ICP.SEG.Transversal.Common.Constants;
using PCM.SIP.ICP.SEG.Transversal.Common.Generics;
using PCM.SIP.ICP.Transversal.Util.Encryptions;

namespace PCM.SIP.ICP.SEG.Aplicacion.Features
{
    public class SistemaOpcionApplication : ISistemaOpcionApplication
    {
        private readonly IUnitOfWork _unitOfWork;
        private readonly IMapper _mapper;
        private readonly IAppLogger<SistemaOpcionApplication> _logger;
        private readonly IPcmSessionApplication _pcmSessionApplication;

        public SistemaOpcionApplication(
            IUnitOfWork unitOfWork, 
            IMapper mapper, 
            IAppLogger<SistemaOpcionApplication> logger, 
            IPcmSessionApplication pcmSessionApplication)
        {
            _unitOfWork = unitOfWork;
            _mapper = mapper;
            _logger = logger;
            _pcmSessionApplication = pcmSessionApplication;
        }

        public PcmResponse GetListPadres(Request<SistemaOpcionDto> request)
        {
            try
            {
                var entidad = _mapper.Map<SistemaOpcion>(request.entidad);

                entidad.perfil_id = string.IsNullOrEmpty(request.entidad.perfilkey) ? null : Convert.ToInt32(CShrapEncryption.DecryptString(request.entidad.perfilkey, _pcmSessionApplication.UsuarioCache.authkey));

                var result = _unitOfWork.SistemaOpcion.GetListPadres(entidad);

                if (result.Error)
                {
                    _logger.LogError(result.Message);
                    return ResponseUtil.BadRequest(message: result.Message);
                }

                List<SistemaOpcion> Lista = new List<SistemaOpcion>();

                if (result.Data != null)
                {

                    foreach (var item in result.Data)
                    {
                        Lista.Add(new SistemaOpcion()
                        {
                            SerialKey = string.IsNullOrEmpty(item.sistemaopcion_id.ToString()) ? null : CShrapEncryption.EncryptString(item.sistemaopcion_id.ToString(), _pcmSessionApplication.UsuarioCache.authkey),
                            descripcion = item.descripcion
                        });
                    }
                }

                _logger.LogInformation(TransactionMessage.QuerySuccess);
                return result != null ? ResponseUtil.Ok(
                    _mapper.Map<List<SistemaOpcionPadresResponse>>(_mapper.Map<List<SistemaOpcionDto>>(Lista)),
                    result.Message ?? TransactionMessage.QuerySuccess
                    ) : ResponseUtil.NoContent();
            }
            catch (Exception ex)
            {
                _logger.LogError(ex.Message);
                return ResponseUtil.InternalError(message: ex.Message);
            }
        }

        public PcmResponse GetListHijos(Request<SistemaOpcionDto> request)
        {
            try
            {
                var entidad = _mapper.Map<SistemaOpcion>(request.entidad);

                entidad.perfil_id = string.IsNullOrEmpty(request.entidad.perfilkey) ? null : Convert.ToInt32(CShrapEncryption.DecryptString(request.entidad.perfilkey, _pcmSessionApplication.UsuarioCache.authkey));
                entidad.padre_id = string.IsNullOrEmpty(request.entidad.padrekey) ? null : Convert.ToInt32(CShrapEncryption.DecryptString(request.entidad.padrekey, _pcmSessionApplication.UsuarioCache.authkey));

                var result = _unitOfWork.SistemaOpcion.GetListHijos(entidad);

                if (result.Error)
                {
                    _logger.LogError(result.Message);
                    return ResponseUtil.BadRequest(message: result.Message);
                }

                List<SistemaOpcion> Lista = new List<SistemaOpcion>();

                if (result.Data != null)
                {
                    foreach (var item in result.Data)
                    {
                        Lista.Add(new SistemaOpcion()
                        {
                            SerialKey = string.IsNullOrEmpty(item.sistemaopcion_id.ToString()) ? null : CShrapEncryption.EncryptString(item.sistemaopcion_id.ToString(), _pcmSessionApplication.UsuarioCache.authkey),
                            descripcion = item.descripcion
                        });
                    }
                }

                _logger.LogInformation(TransactionMessage.QuerySuccess);
                return result != null ? ResponseUtil.Ok(
                    _mapper.Map<List<SistemaOpcionHijosResponse>>(_mapper.Map<List<SistemaOpcionDto>>(Lista)),
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
