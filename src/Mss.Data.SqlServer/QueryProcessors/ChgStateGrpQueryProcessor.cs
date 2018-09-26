using NHibernate;
using Mss.Data.Entities;
using Mss.Data.QueryProcessors;
using System.Collections.Generic;
using Mss.Common.Security;
using System.Linq;
using Mss.Common;

namespace Mss.Data.SqlServer.QueryProcessors
{
    public class ChgStateGrpQueryProcessor : IChgStateGrpQueryProcessor
    {
        private readonly ISession _session;

        public ChgStateGrpQueryProcessor(ISession session)
        {
            _session = session;
        }

        public List<ChgStateGrp> Get()
        {
            return _session.QueryOver<ChgStateGrp>().List().ToList();
        }

        public ChgStateGrp Get(string name)
        {
            return _session.QueryOver<ChgStateGrp>().Where(x => x.Name == name).SingleOrDefault();
        }

        public ChgStateGrp Get(long Id)
        {
            return _session.Get<ChgStateGrp>(Id);
        }

    }
}