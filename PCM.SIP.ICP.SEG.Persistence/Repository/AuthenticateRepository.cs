using Dapper;
using System.Data;
using PCM.SIP.ICP.SEG.Aplicacion.Interface.Persistence;
using PCM.SIP.ICP.SEG.Domain.Entities;
using PCM.SIP.ICP.SEG.Persistence.Context;
using PCM.SIP.ICP.SEG.Transversal.Common;

namespace PCM.SIP.ICP.SEG.Persistence.Repository
{
    public class AuthenticateRepository : IAuthenticateRepository
    {
        private readonly DapperContext _context;

        public AuthenticateRepository(DapperContext context)
        {
            _context = context;
        }

        public Response<dynamic> Authenticate(Usuario entidad, out string jsonUsuarioLogin)
        {
            Response<dynamic> retorno = new Response<dynamic>();
            jsonUsuarioLogin = string.Empty;

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
                    parameters.Add("usuarioLogin", dbType: DbType.String, direction: ParameterDirection.Output, size: int.MaxValue);

                    var result = connection.QuerySingleOrDefault<dynamic>(query, param: parameters, commandType: CommandType.StoredProcedure);

                    retorno.Data = result ?? new Usuario();
                    retorno.Error = parameters.Get<bool?>("error") ?? false;
                    retorno.Message = parameters.Get<string>("message") ?? string.Empty;
                    jsonUsuarioLogin = parameters.Get<string>("usuarioLogin") ?? string.Empty;
                }
            }
            catch (Exception ex)
            {
                retorno.Error = true;
                retorno.Message = ex.Message;
            }

            return retorno;
        }

    }
}
