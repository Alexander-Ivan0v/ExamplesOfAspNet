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
    public class AddChgStateQueryProcessor : IAddChgStateQueryProcessor
    {
        private readonly IDateTime _dateTime;
        private readonly ISession _session;
        private readonly IUserSession _userSession;

        public AddChgStateQueryProcessor(ISession session, IUserSession userSession, IDateTime dateTime)
        {
            _session = session;
            _userSession = userSession;
            _dateTime = dateTime;
        }

        public void AddChgState(ChgState chgState)
        {
            _session.SaveOrUpdate(chgState);
        }

        public void AddChgState(string chgStateName, string chgStateGrpName)
        {
            _session.SaveOrUpdate(new ChgState() { 
                ChgStateGrp = _session.QueryOver<ChgStateGrp>().Where(x => x.Name == chgStateGrpName).SingleOrDefault(), 
                Name = chgStateName 
            });
        }
    }
}