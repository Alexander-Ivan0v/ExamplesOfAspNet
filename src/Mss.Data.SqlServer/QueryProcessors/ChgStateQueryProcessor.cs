using NHibernate;
using Mss.Data.Entities;
using Mss.Data.QueryProcessors;
using System.Collections.Generic;
using Mss.Common.Security;
using System.Linq;
using Mss.Common;

namespace Mss.Data.SqlServer.QueryProcessors
{
    public class ChgStateQueryProcessor : IChgStateQueryProcessor
    {
        private readonly ISession _session;

        public ChgStateQueryProcessor(ISession session)
        {
            _session = session;
        }

        public List<ChgState> Get()
        {
            return _session.QueryOver<ChgState>().List().ToList();
        }

        public List<ChgState> Get(string name)
        {
            return _session.QueryOver<ChgState>().Where(x => x.Name == name).List().ToList();
        }

        public ChgState Get(long Id)
        {
            return _session.Get<ChgState>(Id);
        }

        public ChgState Get(string grpName, string chgName)
        {
            var a = _session.QueryOver<ChgStateGrp>().Where(x => x.Name == grpName).SingleOrDefault();
            return _session.QueryOver<ChgState>().Where(x => x.ChgStateGrp.Id == a.Id && x.Name == chgName).SingleOrDefault();
            // Did not work: ??? return _session.QueryOver<ChgState>().Where(x => x.ChgStateGrp.Name == grpName && x.Name == chgName).SingleOrDefault();
        }

    }
}