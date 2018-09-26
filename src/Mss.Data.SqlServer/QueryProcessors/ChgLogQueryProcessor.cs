using NHibernate;
using Mss.Data.Entities;
using Mss.Data.QueryProcessors;
using System.Collections.Generic;
using Mss.Common.Security;
using System.Linq;
using Mss.Common;

namespace Mss.Data.SqlServer.QueryProcessors
{
    public class ChgLogQueryProcessor : IChgLogQueryProcessor
    {
        private readonly ISession _session;

        public ChgLogQueryProcessor(ISession session)
        {
            _session = session;
        }

        public List<ChgLog> Get()
        {
            return _session.QueryOver<ChgLog>().List().ToList();
        }

        public ChgLog Get(long chgLogId)
        {
            return _session.Get<ChgLog>(chgLogId);
        }

        public List<ChgLog> Get(string comment)
        {
            return _session.QueryOver<ChgLog>().Where(x => x.Comment == comment).List().ToList();
        }

        public ChgLog GetLast(string comment)
        {
            return _session.QueryOver<ChgLog>().Where(x => x.Comment == comment).OrderBy(y => y.Id).Desc.List().FirstOrDefault();
        }
    }
}