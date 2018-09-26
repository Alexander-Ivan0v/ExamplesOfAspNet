using NHibernate;
using Mss.Data.Entities;
using Mss.Data.QueryProcessors;
using System.Collections.Generic;
using Mss.Common.Security;
using System.Linq;
using Mss.Common;

namespace Mss.Data.SqlServer.QueryProcessors
{
    public class UsrQueryProcessor : IUsrQueryProcessor
    {
        private readonly ISession _session;

        public UsrQueryProcessor(ISession session)
        {
            _session = session;
        }

        public List<Usr> Get()
        {
            return _session.QueryOver<Usr>().List().ToList();
        }

        public List<Usr> Get(string userName)
        {
            return _session.QueryOver<Usr>().Where(x => x.Name == userName).List().ToList();
        }

        public Usr Get(long userId)
        {
            return _session.Get<Usr>(userId);
        }

    }
}