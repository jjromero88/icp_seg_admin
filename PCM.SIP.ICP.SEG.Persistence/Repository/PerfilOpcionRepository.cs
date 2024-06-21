using Dapper;
using PCM.SIP.ICP.SEG.Aplicacion.Interface.Persistence;
using PCM.SIP.ICP.SEG.Domain.Entities;
using PCM.SIP.ICP.SEG.Persistence.Context;
using PCM.SIP.ICP.SEG.Transversal.Common;
using System.Data;

namespace PCM.SIP.ICP.SEG.Persistence.Repository
{
    public class PerfilOpcionRepository : IPerfilOpcionRepository
    {
        private readonly DapperContext _context;

        public PerfilOpcionRepository(DapperContext context)
        {
            _context = context;
        }

        public Response Insert(PerfilOpcion entidad)
        {
            Response retorno = new Response();

            try
            {
                using (var connection = _context.CreateConnection())
                {
                    var query = "dbo.USP_INS_PERFILOPCION";

                    var parameters = new DynamicParameters();

                    parameters.Add("perfil_id", entidad.perfil_id);
                    parameters.Add("sistemaopciones_id", entidad.sistemaopciones_id);
                    parameters.Add("usuario_reg", entidad.usuario_reg);
                    parameters.Add("error", dbType: DbType.Boolean, direction: ParameterDirection.Output);
                    parameters.Add("message", dbType: DbType.String, direction: ParameterDirection.Output, size: 500);

                    var result = connection.Execute(query, param: parameters, commandType: CommandType.StoredProcedure);

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

        public Response<List<dynamic>> GetList(PerfilOpcion entidad, out string jsonSistemaOpciones)
        {
            Response<List<dynamic>> retorno = new Response<List<dynamic>>();
            jsonSistemaOpciones = string.Empty;
            try
            {
                using (var connection = _context.CreateConnection())
                {
                    var query = "dbo.USP_SEL_PERFILOPCION";

                    var parameters = new DynamicParameters();

                    parameters.Add("perfil_id", entidad.perfil_id.Equals(0) ? (int?)null : entidad.perfil_id);
                    parameters.Add("error", dbType: DbType.Boolean, direction: ParameterDirection.Output);
                    parameters.Add("message", dbType: DbType.String, direction: ParameterDirection.Output, size: 500);
                    parameters.Add("jsonSistemaOpciones", dbType: DbType.String, direction: ParameterDirection.Output, size: int.MaxValue);

                    IEnumerable<dynamic> result = connection.Query<dynamic>(query, param: parameters, commandType: CommandType.StoredProcedure);

                    jsonSistemaOpciones = parameters.Get<string>("jsonSistemaOpciones") ?? string.Empty;
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

        public Response<List<dynamic>> GetListPermisosPerfilOpcion(PerfilOpcion entidad)
        {
            Response<List<dynamic>> retorno = new Response<List<dynamic>>();
            try
            {
                using (var connection = _context.CreateConnection())
                {
                    var query = "dbo.USP_SEL_PERMISOS_OPCIONPERMISOS";

                    var parameters = new DynamicParameters();

                    parameters.Add("perfil_id", entidad.perfil_id);
                    parameters.Add("sistemaopcion_id", entidad.sistemaopcion_id);
                    parameters.Add("error", dbType: DbType.Boolean, direction: ParameterDirection.Output);
                    parameters.Add("message", dbType: DbType.String, direction: ParameterDirection.Output, size: 500);

                    IEnumerable<dynamic> result = connection.Query<dynamic>(query, param: parameters, commandType: CommandType.StoredProcedure);
                    List<dynamic> lista = result.ToList();

                    retorno.Data = lista;
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
    }
}
