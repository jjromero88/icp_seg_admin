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

            CreateMap<UsuarioCache, UsuarioCacheResponse>().ReverseMap()
                .ForMember(destination => destination.authkey, source => source.MapFrom(src => src.authkey))
                .ForMember(destination => destination.usuariokey, source => source.MapFrom(src => src.usuariokey))
                .ForMember(destination => destination.perfilkey, source => source.MapFrom(src => src.perfilkey))
                .ForMember(destination => destination.username, source => source.MapFrom(src => src.username))
                .ForMember(destination => destination.perfil, source => source.MapFrom(src => src.perfil))
                .ForMember(destination => destination.numdocumento, source => source.MapFrom(src => src.numdocumento))
                .ForMember(destination => destination.nombre_completo, source => source.MapFrom(src => src.nombre_completo));

            CreateMap<UsuarioCacheResponse, UsuarioCacheSesion>().ReverseMap()
                .ForMember(destination => destination.username, source => source.MapFrom(src => src.username))
                .ForMember(destination => destination.perfil, source => source.MapFrom(src => src.perfil))
                .ForMember(destination => destination.numdocumento, source => source.MapFrom(src => src.numdocumento))
                .ForMember(destination => destination.nombre_completo, source => source.MapFrom(src => src.nombre_completo));


            #endregion

            #region SistemaOpcion

            CreateMap<SistemaOpcion, SistemaOpcionDto>().ReverseMap()
            .ForMember(destination => destination.padrekey, source => source.MapFrom(src => src.padrekey))
            .ForMember(destination => destination.perfilkey, source => source.MapFrom(src => src.perfilkey))
            .ForMember(destination => destination.codigo, source => source.MapFrom(src => src.codigo))
            .ForMember(destination => destination.descripcion, source => source.MapFrom(src => src.descripcion))
            .ForMember(destination => destination.abreviatura, source => source.MapFrom(src => src.abreviatura))
            .ForMember(destination => destination.url_opcion, source => source.MapFrom(src => src.url_opcion))
            .ForMember(destination => destination.icono_opcion, source => source.MapFrom(src => src.icono_opcion))
            .ForMember(destination => destination.num_orden, source => source.MapFrom(src => src.num_orden))
            .ForMember(destination => destination.ListaAccesos, source => source.MapFrom(src => src.ListaAccesos));

            CreateMap<SistemaOpcion, UsuarioAccesosResponse>().ReverseMap()
            .ForMember(destination => destination.codigo, source => source.MapFrom(src => src.codigo))
            .ForMember(destination => destination.descripcion, source => source.MapFrom(src => src.descripcion))
            .ForMember(destination => destination.abreviatura, source => source.MapFrom(src => src.abreviatura))
            .ForMember(destination => destination.url_opcion, source => source.MapFrom(src => src.url_opcion))
            .ForMember(destination => destination.icono_opcion, source => source.MapFrom(src => src.icono_opcion))
            .ForMember(destination => destination.num_orden, source => source.MapFrom(src => src.num_orden))
            .ForMember(destination => destination.ListaAccesos, source => source.MapFrom(src => src.ListaAccesos));

            CreateMap<SistemaOpcionDto, SistemaOpcionPadresRequest>().ReverseMap()
            .ForMember(destination => destination.perfilkey, source => source.MapFrom(src => src.perfilkey));

            CreateMap<SistemaOpcionDto, SistemaOpcionHijosRequest>().ReverseMap()
            .ForMember(destination => destination.perfilkey, source => source.MapFrom(src => src.perfilkey))
            .ForMember(destination => destination.padrekey, source => source.MapFrom(src => src.padrekey));

            CreateMap<SistemaOpcionDto, SistemaOpcionPadresResponse>().ReverseMap()
           .ForMember(destination => destination.SerialKey, source => source.MapFrom(src => src.SerialKey))
           .ForMember(destination => destination.descripcion, source => source.MapFrom(src => src.descripcion));

            CreateMap<SistemaOpcionDto, SistemaOpcionHijosResponse>().ReverseMap()
           .ForMember(destination => destination.SerialKey, source => source.MapFrom(src => src.SerialKey))
           .ForMember(destination => destination.descripcion, source => source.MapFrom(src => src.descripcion));

            #endregion

            #region PerfilOpcion

            CreateMap<PerfilOpcion, PerfilOpcionDto>().ReverseMap()
            .ForMember(destination => destination.SerialKey, source => source.MapFrom(src => src.SerialKey))
            .ForMember(destination => destination.perfilkey, source => source.MapFrom(src => src.perfilkey))
            .ForMember(destination => destination.sistemaopcionkey, source => source.MapFrom(src => src.sistemaopcionkey))
            .ForMember(destination => destination.habilitado, source => source.MapFrom(src => src.habilitado));

            CreateMap<PerfilOpcionDto, PerfilOpcionFilterRequest>().ReverseMap()
            .ForMember(destination => destination.perfilkey, source => source.MapFrom(src => src.perfilkey));

            CreateMap<PerfilOpcionDto, PerfilOpcionInsertRequest>().ReverseMap()
            .ForMember(destination => destination.perfilkey, source => source.MapFrom(src => src.perfilkey))
            .ForMember(destination => destination.sistemaopcionkey, source => source.MapFrom(src => src.sistemaopcionkey));

            CreateMap<PerfilOpcionDto, PerfilPermisosRequest>().ReverseMap()
           .ForMember(destination => destination.perfilkey, source => source.MapFrom(src => src.perfilkey))
           .ForMember(destination => destination.sistemaopcionkey, source => source.MapFrom(src => src.sistemaopcionkey));


            #endregion

            #region Perfil

            CreateMap<Perfil, PerfilDto>().ReverseMap()
                .ForMember(destination => destination.SerialKey, source => source.MapFrom(src => src.SerialKey))
                .ForMember(destination => destination.codigo, source => source.MapFrom(src => src.codigo))
                .ForMember(destination => destination.abreviatura, source => source.MapFrom(src => src.abreviatura))
                .ForMember(destination => destination.descripcion, source => source.MapFrom(src => src.descripcion))
                .ForMember(destination => destination.interno, source => source.MapFrom(src => src.interno));

            CreateMap<Perfil, PerfilUsuarioResponse>().ReverseMap()
                .ForMember(destination => destination.SerialKey, source => source.MapFrom(src => src.SerialKey))
                .ForMember(destination => destination.codigo, source => source.MapFrom(src => src.codigo))
                .ForMember(destination => destination.abreviatura, source => source.MapFrom(src => src.abreviatura))
                .ForMember(destination => destination.descripcion, source => source.MapFrom(src => src.descripcion));

            CreateMap<PerfilDto, PerfilIdRequest>().ReverseMap()
                .ForMember(destination => destination.SerialKey, source => source.MapFrom(src => src.SerialKey));

            CreateMap<PerfilDto, PerfilInsertRequest>().ReverseMap()
                .ForMember(destination => destination.codigo, source => source.MapFrom(src => src.codigo))
                .ForMember(destination => destination.abreviatura, source => source.MapFrom(src => src.abreviatura))
                .ForMember(destination => destination.descripcion, source => source.MapFrom(src => src.descripcion))
                .ForMember(destination => destination.interno, source => source.MapFrom(src => src.interno));

            CreateMap<PerfilDto, PerfilUpdateRequest>().ReverseMap()
                .ForMember(destination => destination.SerialKey, source => source.MapFrom(src => src.SerialKey))
                .ForMember(destination => destination.codigo, source => source.MapFrom(src => src.codigo))
                .ForMember(destination => destination.abreviatura, source => source.MapFrom(src => src.abreviatura))
                .ForMember(destination => destination.descripcion, source => source.MapFrom(src => src.descripcion))
                .ForMember(destination => destination.interno, source => source.MapFrom(src => src.interno));

            CreateMap<PerfilDto, PerfilFilterRequest>().ReverseMap()
                .ForMember(destination => destination.SerialKey, source => source.MapFrom(src => src.SerialKey))
                .ForMember(destination => destination.filtro, source => source.MapFrom(src => src.filtro));

            CreateMap<PerfilDto, PerfilResponse>().ReverseMap()
                .ForMember(destination => destination.SerialKey, source => source.MapFrom(src => src.SerialKey))
                .ForMember(destination => destination.codigo, source => source.MapFrom(src => src.codigo))
                .ForMember(destination => destination.abreviatura, source => source.MapFrom(src => src.abreviatura))
                .ForMember(destination => destination.descripcion, source => source.MapFrom(src => src.descripcion))
                .ForMember(destination => destination.interno, source => source.MapFrom(src => src.interno));

            #endregion

            #region Usuario

            CreateMap<Usuario, UsuarioDto>().ReverseMap()
                .ForMember(destination => destination.SerialKey, source => source.MapFrom(src => src.SerialKey))
                .ForMember(destination => destination.personakey, source => source.MapFrom(src => src.personakey))
                .ForMember(destination => destination.perfileskey, source => source.MapFrom(src => src.perfileskey))
                .ForMember(destination => destination.username, source => source.MapFrom(src => src.username))
                .ForMember(destination => destination.password, source => source.MapFrom(src => src.password))
                .ForMember(destination => destination.interno, source => source.MapFrom(src => src.interno))
                .ForMember(destination => destination.numdocumento, source => source.MapFrom(src => src.numdocumento))
                .ForMember(destination => destination.nombre_completo, source => source.MapFrom(src => src.nombre_completo))
                .ForMember(destination => destination.habilitado, source => source.MapFrom(src => src.habilitado));

            CreateMap<UsuarioDto, UsuarioIdRequest>().ReverseMap()
                .ForMember(destination => destination.SerialKey, source => source.MapFrom(src => src.SerialKey));

            CreateMap<UsuarioDto, UsuarioInsertRequest>().ReverseMap()
                .ForMember(destination => destination.personakey, source => source.MapFrom(src => src.personakey))
                .ForMember(destination => destination.perfileskey, source => source.MapFrom(src => src.perfileskey))
                .ForMember(destination => destination.username, source => source.MapFrom(src => src.username))
                .ForMember(destination => destination.password, source => source.MapFrom(src => src.password))
                .ForMember(destination => destination.interno, source => source.MapFrom(src => src.interno))
                .ForMember(destination => destination.numdocumento, source => source.MapFrom(src => src.numdocumento))
                .ForMember(destination => destination.nombre_completo, source => source.MapFrom(src => src.nombre_completo))
                .ForMember(destination => destination.habilitado, source => source.MapFrom(src => src.habilitado));

            CreateMap<UsuarioDto, UsuarioUpdateRequest>().ReverseMap()
                .ForMember(destination => destination.SerialKey, source => source.MapFrom(src => src.SerialKey))
                .ForMember(destination => destination.personakey, source => source.MapFrom(src => src.personakey))
                .ForMember(destination => destination.perfileskey, source => source.MapFrom(src => src.perfileskey))
                .ForMember(destination => destination.username, source => source.MapFrom(src => src.username))
                .ForMember(destination => destination.password, source => source.MapFrom(src => src.password))
                .ForMember(destination => destination.interno, source => source.MapFrom(src => src.interno))
                .ForMember(destination => destination.numdocumento, source => source.MapFrom(src => src.numdocumento))
                .ForMember(destination => destination.nombre_completo, source => source.MapFrom(src => src.nombre_completo))
                .ForMember(destination => destination.habilitado, source => source.MapFrom(src => src.habilitado));

            CreateMap<UsuarioDto, UsuarioFilterRequest>().ReverseMap()
                .ForMember(destination => destination.SerialKey, source => source.MapFrom(src => src.SerialKey))
                .ForMember(destination => destination.personakey, source => source.MapFrom(src => src.personakey))
                .ForMember(destination => destination.numdocumento, source => source.MapFrom(src => src.numdocumento))
                .ForMember(destination => destination.interno, source => source.MapFrom(src => src.interno))
                .ForMember(destination => destination.habilitado, source => source.MapFrom(src => src.habilitado))
                .ForMember(destination => destination.filtro, source => source.MapFrom(src => src.filtro));

            CreateMap<UsuarioDto, UsuarioResponse>().ReverseMap()
                .ForMember(destination => destination.SerialKey, source => source.MapFrom(src => src.SerialKey))
                .ForMember(destination => destination.personakey, source => source.MapFrom(src => src.personakey))
                .ForMember(destination => destination.username, source => source.MapFrom(src => src.username))
                .ForMember(destination => destination.interno, source => source.MapFrom(src => src.interno))
                .ForMember(destination => destination.numdocumento, source => source.MapFrom(src => src.numdocumento))
                .ForMember(destination => destination.nombre_completo, source => source.MapFrom(src => src.nombre_completo))
                .ForMember(destination => destination.password, source => source.MapFrom(src => src.password))
                .ForMember(destination => destination.habilitado, source => source.MapFrom(src => src.habilitado))
                .ForMember(destination => destination.lista_perfiles, source => source.MapFrom(src => src.lista_perfiles));

            #endregion

            #region Permisos

            CreateMap<Permisos, PermisosDto>().ReverseMap()
               .ForMember(destination => destination.SerialKey, source => source.MapFrom(src => src.SerialKey))
               .ForMember(destination => destination.codigo, source => source.MapFrom(src => src.codigo))
               .ForMember(destination => destination.nombre, source => source.MapFrom(src => src.nombre))
               .ForMember(destination => destination.descripcion, source => source.MapFrom(src => src.descripcion))
               .ForMember(destination => destination.habilitado, source => source.MapFrom(src => src.habilitado));

            CreateMap<PermisosDto, PermisosResponse>().ReverseMap()
              .ForMember(destination => destination.SerialKey, source => source.MapFrom(src => src.SerialKey))
              .ForMember(destination => destination.codigo, source => source.MapFrom(src => src.codigo))
              .ForMember(destination => destination.nombre, source => source.MapFrom(src => src.nombre))
              .ForMember(destination => destination.descripcion, source => source.MapFrom(src => src.descripcion))
              .ForMember(destination => destination.habilitado, source => source.MapFrom(src => src.habilitado));


            #endregion
        }
    }
}
