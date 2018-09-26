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
    public class AddChgQueryProcessor : IAddChgQueryProcessor
    {
        private readonly IDateTime _dateTime;
        private readonly ISession _session;
        private readonly IUserSession _userSession;

        public AddChgQueryProcessor(ISession session, IUserSession userSession, IDateTime dateTime)
        {
            _session = session;
            _userSession = userSession;
            _dateTime = dateTime;
        }

        public void AddChg(Chg chg)
        {
            _session.SaveOrUpdate(chg);
        }

        public void AddChg(string chgStateGrpName, string chgStateName, string chgLog = null)
        {
            _session.SaveOrUpdate(new Chg() { 
                ChgBy =  _session.Get<Usr>(_userSession.UserId), 
                ChgState = _session.QueryOver<ChgState>().Where(x => x.ChgStateGrp.Name == chgStateGrpName && x.Name == chgStateName).SingleOrDefault(), 
                ChgLog = (new ChgLog() {Comment = chgLog}), 
                ChgDate = _dateTime.UtcNow 
            });
        }
    }
}