using NHibernate;
using Mss.Data.Entities;
using Mss.Data.QueryProcessors;
using System.Collections.Generic;
using Mss.Common.Security;
using System.Linq;
using Mss.Common;

namespace Mss.Data.SqlServer.QueryProcessors
{
    public class ParQueryProcessor : IParQueryProcessor
    {
        private readonly ISession _session;

        public ParQueryProcessor(ISession session)
        {
            _session = session;
        }

        public List<Par> Get()
        {
            return _session.QueryOver<Par>().List().ToList();
        }

        public Par Get(long parId)
        {
            return _session.Get<Par>(parId);
        }

    }
}