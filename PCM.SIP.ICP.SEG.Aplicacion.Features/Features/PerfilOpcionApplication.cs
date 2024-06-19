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
using System.Text.Json;

namespace PCM.SIP.ICP.SEG.Aplicacion.Features
{
    public class PerfilOpcionApplication : IPerfilOpcionApplication
    {
        private readonly IUnitOfWork _unitOfWork;
        private readonly IMapper _mapper;
        private readonly IAppLogger<PerfilOpcionApplication> _logger;
        private readonly IPcmSessionApplication _pcmSessionApplication;
        private readonly PerfilOpcionValidationManager _perfilOpcionValidationManager;

        public PerfilOpcionApplication(
            IUnitOfWork unitOfWork,
            IMapper mapper,
            IAppLogger<PerfilOpcionApplication> logger,
            IPcmSessionApplication pcmSessionApplication,
            PerfilOpcionValidationManager perfilOpcionValidationManager)
        {
            _unitOfWork = unitOfWork;
            _mapper = mapper;
            _logger = logger;
            _pcmSessionApplication = pcmSessionApplication;
            _perfilOpcionValidationManager = perfilOpcionValidationManager;
        }

        public PcmResponse GetList(Request<PerfilOpcionDto> request)
        {
            try
            {
                // mapeamos el request
                var validation = _perfilOpcionValidationManager.Validate(_mapper.Map<PerfilOpcionFilterRequest>(request.entidad));

                // verificamos si hay errores de validacion
                if (!validation.IsValid)
                {
                    _logger.LogError(Validation.InvalidMessage);
                    return ResponseUtil.BadRequest(validation.Errors != null ? validation.Errors : null, Validation.InvalidMessage);
                }

                // mapeamos el request
                var entidad = _mapper.Map<PerfilOpcion>(request.entidad);

                // desencriptamos la informacion
                entidad.perfil_id = string.IsNullOrEmpty(request.entidad.perfilkey) ? null : Convert.ToInt32(CShrapEncryption.DecryptString(request.entidad.perfilkey, _pcmSessionApplication.UsuarioCache.authkey));

                // hacemos la consulta a Bd
                var result = _unitOfWork.PerfilOpcion.GetList(entidad, out string jsonSistemaOpciones);

                // verifiamos que no nos retorne un error
                if (result.Error)
                {
                    _logger.LogError(result.Message);
                    return ResponseUtil.BadRequest(message: result.Message);
                }

                //deserializamos el json de respuesta
                var listPerfilOpcionResponse = string.IsNullOrEmpty(jsonSistemaOpciones) ? new List<PerfilOpcionResponse>() : JsonSerializer.Deserialize<List<PerfilOpcionResponse>>(jsonSistemaOpciones);

                // inicializamos la lista de salida
                List<PerfilOpcionResponseDto> lista = new List<PerfilOpcionResponseDto>();

                // verificamos que tenga resultados
                if (listPerfilOpcionResponse?.Count > 0)
                {
                    foreach (PerfilOpcionResponse item in listPerfilOpcionResponse)
                        lista.Add(ConvertSistemaOpciones(item));
                }

                // retornamos la informacion
                _logger.LogInformation(TransactionMessage.QuerySuccess);
                return result != null ? ResponseUtil.Ok(lista, result.Message ?? TransactionMessage.QuerySuccess
                    ) : ResponseUtil.NoContent();
            }
            catch (Exception ex)
            {
                _logger.LogError(ex.Message);
                return ResponseUtil.InternalError(message: ex.Message);
            }
        }

        private PerfilOpcionResponseDto ConvertSistemaOpciones(PerfilOpcionResponse item)
        {
            return new PerfilOpcionResponseDto
            {
                sistemaopcionkey = string.IsNullOrEmpty(item.sistemaopcion_id?.ToString()) ? null : CShrapEncryption.EncryptString(item.sistemaopcion_id.ToString(), _pcmSessionApplication.UsuarioCache.authkey),
                codigo = item.codigo,
                descripcion = item.descripcion,
                abreviatura = item.abreviatura,
                icono_opcion = item.icono_opcion,
                num_orden = item.num_orden,
                habilitado = item.habilitado ?? false,
                ListaAccesos = item.ListaAccesos?.Select(subItem => ConvertSistemaOpciones(subItem)).ToList()
            };
        }

    }
}
