using NHibernate;
using Mss.Data.Entities;
using Mss.Data.QueryProcessors;
using System.Collections.Generic;
using Mss.Common.Security;
using System.Linq;
using Mss.Common;

namespace Mss.Data.SqlServer.QueryProcessors
{
    public class RolQueryProcessor : IRolQueryProcessor
    {
        private readonly ISession _session;

        public RolQueryProcessor(ISession session)
        {
            _session = session;
        }

        public List<Rol> Get()
        {
            return _session.QueryOver<Rol>().List().ToList();
        }

        public List<Rol> Get(string rolName)
        {
            return _session.QueryOver<Rol>().Where(x => x.Name == rolName).List().ToList();
        }

        public Rol Get(long rolId)
        {
            return _session.Get<Rol>(rolId);
        }

    }
}