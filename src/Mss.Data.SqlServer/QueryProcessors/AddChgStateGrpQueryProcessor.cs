using NHibernate;
using NHibernate.Util;
using Mss.Common;
using Mss.Common.Security;
using Mss.Data.Entities;
using Mss.Data.Exceptions;
using Mss.Data.QueryProcessors;
using Mss.Data.SqlServer.QueryProcessors;

namespace Mss.Data.SqlServer.QueryProcessors
{
    public class AddChgStateGrpQueryProcessor : IAddChgStateGrpQueryProcessor
    {
        private readonly IDateTime _dateTime;
        private readonly ISession _session;
        private readonly IUserSession _userSession;

        public AddChgStateGrpQueryProcessor(ISession session, IUserSession userSession, IDateTime dateTime)
        {
            _session = session;
            _userSession = userSession;
            _dateTime = dateTime;
        }

        public void AddChgStateGrp(ChgStateGrp chgStateGrp)
        {
            _session.SaveOrUpdate(chgStateGrp);
        }

        public void AddChgStateGrp(string chgStateGrpName, string chgStateGrpComment = null)
        {
            _session.SaveOrUpdate(new ChgStateGrp() { Name = chgStateGrpName, Comment = chgStateGrpComment });
        }
    }
}