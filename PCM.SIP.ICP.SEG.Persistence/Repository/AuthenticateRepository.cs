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

        public Response<dynamic> UsuarioAccesos(UsuarioPerfil entidad, out string jsonUsuarioAccesos)
        {
            Response<dynamic> retorno = new Response<dynamic>();
            jsonUsuarioAccesos = string.Empty;

            try
            {
                using (var connection = _context.CreateConnection())
                {
                    var query = "dbo.USP_GET_USUARIO_ACCESOS";

                    var parameters = new DynamicParameters();
                    parameters.Add("usuario_id", entidad.usuario_id.Equals(0) ? (int?)null : entidad.usuario_id);
                    parameters.Add("perfil_id", entidad.perfil_id.Equals(0) ? (int?)null : entidad.perfil_id);
                    parameters.Add("error", dbType: DbType.Boolean, direction: ParameterDirection.Output);
                    parameters.Add("message", dbType: DbType.String, direction: ParameterDirection.Output, size: 500);
                    parameters.Add("usuarioAccesos", dbType: DbType.String, direction: ParameterDirection.Output, size: int.MaxValue);

                    var result = connection.QuerySingleOrDefault<dynamic>(query, param: parameters, commandType: CommandType.StoredProcedure);

                    retorno.Data = result ?? new Usuario();
                    retorno.Error = parameters.Get<bool?>("error") ?? false;
                    retorno.Message = parameters.Get<string>("message") ?? string.Empty;
                    jsonUsuarioAccesos = parameters.Get<string>("usuarioAccesos") ?? string.Empty;
                }
            }
            catch (Exception ex)
            {
                retorno.Error = true;
                retorno.Message = ex.Message;
            }

            return retorno;
        }

        public Response<dynamic> UsuarioPermisos(UsuarioPerfil entidad, out string jsonPermisos)
        {
            Response<dynamic> retorno = new Response<dynamic>();
            jsonPermisos = string.Empty;

            try
            {
                using (var connection = _context.CreateConnection())
                {
                    var query = "dbo.USP_SEL_SISTEMAOPCION_PERMISOS";

                    var parameters = new DynamicParameters();
                    parameters.Add("usuario_id", entidad.usuario_id.Equals(0) ? (int?)null : entidad.usuario_id);
                    parameters.Add("perfil_id", entidad.perfil_id.Equals(0) ? (int?)null : entidad.perfil_id);
                    parameters.Add("error", dbType: DbType.Boolean, direction: ParameterDirection.Output);
                    parameters.Add("message", dbType: DbType.String, direction: ParameterDirection.Output, size: 500);
                    parameters.Add("permisosJson", dbType: DbType.String, direction: ParameterDirection.Output, size: int.MaxValue);

                    var result = connection.QuerySingleOrDefault<dynamic>(query, param: parameters, commandType: CommandType.StoredProcedure);

                    retorno.Data = result ?? new Usuario();
                    retorno.Error = parameters.Get<bool?>("error") ?? false;
                    retorno.Message = parameters.Get<string>("message") ?? string.Empty;
                    jsonPermisos = parameters.Get<string>("permisosJson") ?? string.Empty;
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
