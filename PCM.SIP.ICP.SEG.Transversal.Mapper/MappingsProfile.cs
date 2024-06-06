using AutoMapper;
using PCM.SIP.ICP.SEG.Aplicacion.Dto;
using PCM.SIP.ICP.SEG.Domain.Entities;

namespace PCM.SIP.ICP.SEG.Transversal.Mapper
{
    public class MappingsProfile : Profile
    {
        public MappingsProfile()
        {
            #region Authorizacion

            CreateMap<Usuario, AuthenticateRequest>().ReverseMap()
               .ForMember(destination => destination.username, source => source.MapFrom(src => src.username))
               .ForMember(destination => destination.password, source => source.MapFrom(src => src.password));

            CreateMap<Perfil, AuthenticatePerfil>().ReverseMap()
                .ForMember(destination => destination.codigo, source => source.MapFrom(src => src.codigo))
                .ForMember(destination => destination.descripcion, source => source.MapFrom(src => src.descripcion));

            CreateMap<Usuario, AuthenticateResponse>().ReverseMap()
                .ForMember(destination => destination.username, source => source.MapFrom(src => src.username))
                .ForMember(destination => destination.nombre_completo, source => source.MapFrom(src => src.nombre_completo))
                .ForMember(destination => destination.lista_perfiles, source => source.MapFrom(src => src.lista_perfiles));

            #endregion

            #region Usuario

            CreateMap<Usuario, UsuarioDto>().ReverseMap()
                .ForMember(destination => destination.SerialKey, source => source.MapFrom(src => src.SerialKey))
                .ForMember(destination => destination.username, source => source.MapFrom(src => src.username))
                .ForMember(destination => destination.password, source => source.MapFrom(src => src.password))
                .ForMember(destination => destination.interno, source => source.MapFrom(src => src.interno))
                .ForMember(destination => destination.numdocumento, source => source.MapFrom(src => src.numdocumento))
                .ForMember(destination => destination.apellido_paterno, source => source.MapFrom(src => src.apellido_paterno))
                .ForMember(destination => destination.apellido_materno, source => source.MapFrom(src => src.apellido_materno))
                .ForMember(destination => destination.nombres, source => source.MapFrom(src => src.nombres))
                .ForMember(destination => destination.email, source => source.MapFrom(src => src.email))
                .ForMember(destination => destination.telefono_movil, source => source.MapFrom(src => src.telefono_movil))
                .ForMember(destination => destination.nombre_completo, source => source.MapFrom(src => src.nombre_completo));

            #endregion
        }
    }
}
