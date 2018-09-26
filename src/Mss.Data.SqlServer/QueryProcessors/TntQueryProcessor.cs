using NHibernate;
using Mss.Data.Entities;
using Mss.Data.QueryProcessors;
using System.Collections.Generic;
using Mss.Common.Security;
using System.Linq;
using Mss.Common;

namespace Mss.Data.SqlServer.QueryProcessors
{
    public class TntQueryProcessor : ITntQueryProcessor
    {
        private readonly ISession _session;
        private readonly IUserSession _userSession;
        private readonly IDateTime _dateTime;

        public TntQueryProcessor(ISession session, IUserSession userSession, IDateTime dateTime)
        {
            _session = session;
            _userSession = userSession;
            _dateTime = dateTime;
        }

        public List<Tnt> Get()
        {
            List<Tnt> tnt = new List<Tnt>();

            Usr usr = _session.Get<Usr>(_userSession.UserId);
            usr.Rol.ToList().ForEach(x => tnt.Add(x.Tnt));
            tnt = tnt.Distinct().ToList();

            return tnt;
        }

        public Tnt Get(long tntId)
        {
            var rol = _session.Get<Usr>(_userSession.UserId).Rol.Where(x => x.Tnt.Id == tntId).FirstOrDefault();            
            if(rol != null) {
                return rol.Tnt;
            }
            return null;
        }

        public Tnt Get(string tntName)
        {
            var rol = _session.Get<Usr>(_userSession.UserId).Rol.ToList().Where(x => x.Tnt.Name == tntName).FirstOrDefault();
            if (rol != null)
            {
                return rol.Tnt;
            }
            return null;
        }
    }
}