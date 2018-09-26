using NHibernate;
using Mss.Data.Entities;
using Mss.Data.QueryProcessors;
using System.Collections.Generic;
using Mss.Common.Security;
using System.Linq;
using Mss.Common;

namespace Mss.Data.SqlServer.QueryProcessors
{
    public class ChgQueryProcessor : IChgQueryProcessor
    {
        private readonly ISession _session;

        public ChgQueryProcessor(ISession session)
        {
            _session = session;
        }

        public List<Chg> Get()
        {
            return _session.QueryOver<Chg>().List().ToList();
        }
        
        public Chg Get(long chgId)
        {
            return _session.Get<Chg>(chgId);
        }

    }
}