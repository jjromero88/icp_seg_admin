﻿using PCM.SIP.ICP.SEG.Aplicacion.Interface.Persistence;

namespace PCM.SIP.ICP.SEG.Aplicacion.Interface
{
    public interface IUnitOfWork : IDisposable
    {
        IAuthenticateRepository Authenticate { get; }
        IPerfilRepository Perfil { get; }
        IUsuarioRepository Usuario { get; }
    }
}
