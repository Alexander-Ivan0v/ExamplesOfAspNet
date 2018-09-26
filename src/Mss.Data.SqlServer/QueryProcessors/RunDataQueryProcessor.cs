using NHibernate;
using Mss.Data.Entities;
using Mss.Data.QueryProcessors;
using System.Collections.Generic;
using Mss.Common.Security;
using System.Linq;
using Mss.Common;

namespace Mss.Data.SqlServer.QueryProcessors
{
    public class RunDataQueryProcessor : IRunDataQueryProcessor
    {
        private readonly ISession _session;

        public RunDataQueryProcessor(ISession session)
        {
            _session = session;
        }

        public List<RunData> Get()
        {
            return _session.QueryOver<RunData>().List().ToList();
        }

        public RunData Get(long runDataId)
        {
            return _session.Get<RunData>(runDataId);
        }

        public List<RunData> GetByRun(long runId)
        {
            return _session.QueryOver<RunData>().Where(x => x.Run.Id == runId).List().ToList();
        }

        public List<RunData> GetByPar(long parId)
        {
            return _session.QueryOver<RunData>().Where(x => x.Par.Id == parId).List().ToList();
        }

        public RunData Get(long runId, long parId)
        {
            return _session.QueryOver<RunData>().Where(x => x.Run.Id == runId && x.Par.Id == parId).SingleOrDefault();
        }


    }
}