using NHibernate;
using Mss.Data.Entities;
using Mss.Data.QueryProcessors;
using System.Collections.Generic;
using Mss.Common.Security;
using System.Linq;
using Mss.Common;

namespace Mss.Data.SqlServer.QueryProcessors
{
    public class TeamQueryProcessor : ITeamQueryProcessor
    {
        private readonly ISession _session;

        public TeamQueryProcessor(ISession session)
        {
            _session = session;
        }

        public List<Team> Get()
        {
            return _session.QueryOver<Team>().List().ToList();
        }

        public Team Get(string teamName)
        {
            return _session.QueryOver<Team>().Where(x => x.Name == teamName).SingleOrDefault();
        }

        public Team Get(long teamId)
        {
            return _session.Get<Team>(teamId);
        }

    }
}