﻿using AutoMapper;
using PCM.SIP.ICP.SEG.Aplicacion.Dto;
using PCM.SIP.ICP.SEG.Domain.Entities;

namespace PCM.SIP.ICP.SEG.Transversal.Mapper
{
    public class MappingsProfile : Profile
    {
        public MappingsProfile()
        {
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

            CreateMap<UsuarioDto, UsuarioLoginRequest>().ReverseMap()
                .ForMember(destination => destination.username, source => source.MapFrom(src => src.username))
                .ForMember(destination => destination.password, source => source.MapFrom(src => src.password));

            CreateMap<UsuarioDto, UsuarioLoginResponse>().ReverseMap()
                .ForMember(destination => destination.SerialKey, source => source.MapFrom(src => src.SerialKey))
                .ForMember(destination => destination.username, source => source.MapFrom(src => src.username))
                .ForMember(destination => destination.numdocumento, source => source.MapFrom(src => src.numdocumento))
                .ForMember(destination => destination.nombre_completo, source => source.MapFrom(src => src.nombrecompleto))
                .ForMember(destination => destination.email, source => source.MapFrom(src => src.email))
                .ForMember(destination => destination.Token, source => source.MapFrom(src => src.Token));

            #endregion
        }
    }
}
