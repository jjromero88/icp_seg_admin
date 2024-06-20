using Dapper;
using PCM.SIP.ICP.SEG.Aplicacion.Interface.Persistence;
using PCM.SIP.ICP.SEG.Domain.Entities;
using PCM.SIP.ICP.SEG.Persistence.Context;
using PCM.SIP.ICP.SEG.Transversal.Common;
using System.Data;

namespace PCM.SIP.ICP.SEG.Persistence.Repository
{
    public class SistemaOpcionRepository : ISistemaOpcionRepository
    {
        private readonly DapperContext _context;

        public SistemaOpcionRepository(DapperContext context)
        {
            _context = context;
        }

        public Response<List<dynamic>> GetListPadres(SistemaOpcion entidad)
        {
            Response<List<dynamic>> retorno = new Response<List<dynamic>>();

            try
            {
                using (var connection = _context.CreateConnection())
                {
                    var query = "dbo.USP_SEL_PERFILOPCION_PADRE";

                    var parameters = new DynamicParameters();

                    parameters.Add("perfil_id", entidad.perfil_id);
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

        public Response<List<dynamic>> GetListHijos(SistemaOpcion entidad)
        {
            Response<List<dynamic>> retorno = new Response<List<dynamic>>();

            try
            {
                using (var connection = _context.CreateConnection())
                {
                    var query = "dbo.USP_SEL_PERFILOPCION_HIJO";

                    var parameters = new DynamicParameters();

                    parameters.Add("perfil_id", entidad.perfil_id);
                    parameters.Add("padre_id", entidad.padre_id);
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
