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
    public class PermisosApplication : IPermisosApplication
    {
        private readonly IUnitOfWork _unitOfWork;
        private readonly IMapper _mapper;
        private readonly IAppLogger<PermisosApplication> _logger;
        private readonly IPcmSessionApplication _pcmSessionApplication;

        public PermisosApplication(
            IUnitOfWork unitOfWork, 
            IMapper mapper, 
            IAppLogger<PermisosApplication> logger, 
            IPcmSessionApplication pcmSessionApplication)
        {
            _unitOfWork = unitOfWork;
            _mapper = mapper;
            _logger = logger;
            _pcmSessionApplication = pcmSessionApplication;
        }

        public PcmResponse GetList(Request<PermisosDto> request)
        {
            try
            {
                var entidad = _mapper.Map<Permisos>(request.entidad);

                var result = _unitOfWork.Permisos.GetList(entidad);

                if (result.Error)
                {
                    _logger.LogError(result.Message);
                    return ResponseUtil.BadRequest(message: result.Message);
                }

                List<Permisos> Lista = new List<Permisos>();

                if (result.Data != null)
                {
                    foreach (var item in result.Data)
                    {
                        Lista.Add(new Permisos()
                        {
                            SerialKey = string.IsNullOrEmpty(item.permiso_id.ToString()) ? null : CShrapEncryption.EncryptString(item.permiso_id.ToString(), _pcmSessionApplication.UsuarioCache.authkey),
                            codigo = item.codigo,
                            nombre = item.nombre,
                            descripcion = item.descripcion,
                            //habilitado = false,
                            usuario_reg = item.usuario_reg,
                            fecha_reg = item.fecha_reg
                        });
                    }
                }

                _logger.LogInformation(TransactionMessage.QuerySuccess);
                return result != null ? ResponseUtil.Ok(
                    _mapper.Map<List<PermisosResponse>>(_mapper.Map<List<PermisosDto>>(Lista)),
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
