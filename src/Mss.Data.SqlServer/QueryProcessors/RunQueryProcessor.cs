using NHibernate;
using Mss.Data.Entities;
using Mss.Data.QueryProcessors;
using System.Collections.Generic;
using Mss.Common.Security;
using System.Linq;
using Mss.Common;

namespace Mss.Data.SqlServer.QueryProcessors
{
    public class RunQueryProcessor : IRunQueryProcessor
    {
        private readonly ISession _session;

        public RunQueryProcessor(ISession session)
        {
            _session = session;
        }

        public List<Run> Get()
        {
            return _session.QueryOver<Run>().List().ToList();
        }

        public Run Get(long runId)
        {
            return _session.Get<Run>(runId);
        }

        public List<Run> Get(string tskflw, long tskflwId)
        {
            List<Run> run = new List<Run>();

            switch(tskflw.ToLower()) {
                case "task":
                    run = _session.QueryOver<Run>().Where(x => x.Tsk.Id == tskflwId).List().ToList();
                    break;
                case "flow":
                    run = _session.QueryOver<Run>().Where(x => x.Flw.Id == tskflwId).List().ToList();
                    break;
            }
            return run;
        }
    }
}