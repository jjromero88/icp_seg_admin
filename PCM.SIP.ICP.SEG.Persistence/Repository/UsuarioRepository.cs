﻿using Dapper;
using System.Data;
using PCM.SIP.ICP.SEG.Aplicacion.Interface.Persistence;
using PCM.SIP.ICP.SEG.Domain.Entities;
using PCM.SIP.ICP.SEG.Persistence.Context;
using PCM.SIP.ICP.SEG.Transversal.Common;

namespace PCM.SIP.ICP.SEG.Persistence.Repository
{
    public class UsuarioRepository : IUsuarioRepository
    {
        private readonly DapperContext _context;

        public UsuarioRepository(DapperContext context)
        {
            _context = context;
        }

        public Response<dynamic> Authenticate(Usuario entidad)
        {
            Response<dynamic> retorno = new Response<dynamic>();

            try
            {
                using (var connection = _context.CreateConnection())
                {
                    var query = "dbo.USP_GET_USUARIO_LOGIN";

                    var parameters = new DynamicParameters();

                    parameters.Add("username", entidad.username);
                    parameters.Add("password", entidad.password);
                    parameters.Add("error", dbType: DbType.Boolean, direction: ParameterDirection.Output);
                    parameters.Add("message", dbType: DbType.String, direction: ParameterDirection.Output, size: 500);

                    var result = connection.QuerySingleOrDefault<dynamic>(query, param: parameters, commandType: CommandType.StoredProcedure);

                    retorno.Data = result ?? new Perfil();
                    retorno.Error = parameters.Get<bool?>("error") ?? false;
                    retorno.Message = parameters.Get<string>("message") ?? string.Empty;
                }
            }
            catch (Exception ex)
            {
                retorno.Error = true;
                retorno.Message = ex.Message;
            }

            return retorno;
        }

        public Response Insert(Usuario entidad)
        {
            throw new NotImplementedException();
        }

        public Response Update(Usuario entidad)
        {
            throw new NotImplementedException();
        }

        public Response Delete(Usuario entidad)
        {
            throw new NotImplementedException();
        }

        public Response<dynamic> GetById(Usuario entidad)
        {
            throw new NotImplementedException();
        }

        public Response<List<dynamic>> GetList(Usuario entidad)
        {
            throw new NotImplementedException();
        }
    }
}
