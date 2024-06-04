﻿using PCM.SIP.ICP.SEG.Transversal.Common;

namespace PCM.SIP.ICP.SEG.Aplicacion.Interface
{
    public interface IGenericRepository<T> where T : class
    {
        Response Insert(T entidad);
        Response Update(T entidad);
        Response Delete(T entidad);
        Response<dynamic> GetById(T entidad);
        Response<List<dynamic>> GetList(T entidad);
    }
}
