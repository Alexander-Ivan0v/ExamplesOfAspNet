using NHibernate;
using Mss.Data.Entities;
using Mss.Data.QueryProcessors;
using System.Collections.Generic;
using Mss.Common.Security;
using System.Linq;
using Mss.Common;

namespace Mss.Data.SqlServer.QueryProcessors
{
    public class CfgQueryProcessor : ICfgQueryProcessor
    {
        private readonly ISession _session;

        public CfgQueryProcessor(ISession session)
        {
            _session = session;
        }

        public List<Cfg> Get()
        {
            return _session.QueryOver<Cfg>().List().ToList();
        }
                
        public Cfg Get(long cfgId)
        {
            return _session.Get<Cfg>(cfgId);
        }

    }
}