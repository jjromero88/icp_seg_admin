using Dapper;
using PCM.SIP.ICP.SEG.Aplicacion.Interface.Persistence;
using PCM.SIP.ICP.SEG.Domain.Entities;
using PCM.SIP.ICP.SEG.Persistence.Context;
using PCM.SIP.ICP.SEG.Transversal.Common;
using System.Data;

namespace PCM.SIP.ICP.SEG.Persistence.Repository
{
    public class PermisosRepository : IPermisosRepository
    {
        private readonly DapperContext _context;

        public PermisosRepository(DapperContext context)
        {
            _context = context;
        }

        public Response Insert(Permisos entidad)
        {
            throw new NotImplementedException();
        }

        public Response Update(Permisos entidad)
        {
            throw new NotImplementedException();
        }
        public Response Delete(Permisos entidad)
        {
            throw new NotImplementedException();
        }

        public Response<dynamic> GetById(Permisos entidad)
        {
            throw new NotImplementedException();
        }

        public Response<List<dynamic>> GetList(Permisos entidad)
        {
            Response<List<dynamic>> retorno = new Response<List<dynamic>>();

            try
            {
                using (var connection = _context.CreateConnection())
                {
                    var query = "dbo.USP_SEL_PERMISOS";

                    var parameters = new DynamicParameters();

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
