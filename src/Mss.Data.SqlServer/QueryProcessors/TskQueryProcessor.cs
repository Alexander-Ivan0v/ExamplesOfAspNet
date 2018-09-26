using NHibernate;
using Mss.Data.Entities;
using Mss.Data.QueryProcessors;
using System.Collections.Generic;
using Mss.Common.Security;
using System.Linq;
using Mss.Common;

namespace Mss.Data.SqlServer.QueryProcessors
{
    public class TskQueryProcessor : ITskQueryProcessor
    {
        private readonly ISession _session;
        private readonly IUserSession _userSession;
        private readonly IDateTime _dateTime;

        public TskQueryProcessor(ISession session, IUserSession userSession, IDateTime dateTime)
        {
            _session = session;
            _userSession = userSession;
            _dateTime = dateTime;
        }

        public List<Tsk> Get()
        {
            List<Tsk> scr = new List<Tsk>();

            Usr usr = _session.Get<Usr>(_userSession.UserId);
            scr.AddRange(usr.Rol.SelectMany(x => x.Cat).SelectMany(y => y.Tsk).ToList());
            scr.AddRange(usr.Rol.SelectMany(x => x.Cat).SelectMany(y => y.Tsk).ToList());
            scr.AddRange(usr.Rol.SelectMany(x => x.Cat).SelectMany(c => c.Flw).SelectMany(z => z.Tsk).ToList());
            scr.AddRange(usr.Rol.SelectMany(x => x.Cat).SelectMany(c => c.Flw).SelectMany(z => z.Tsk).ToList());
            scr = scr.Distinct().ToList();

            return scr;
        }

        public Tsk Get(long tskId)
        {
            Usr usr = _session.Get<Usr>(_userSession.UserId);

            var act = usr.Rol.SelectMany(x => x.Cat).SelectMany(y => y.Tsk).Where(z => z.Id == tskId).FirstOrDefault();
            if (act != null)
                return act;
            var rbc = usr.Rol.SelectMany(x => x.Cat).SelectMany(y => y.Tsk).Where(z => z.Id == tskId).FirstOrDefault();
            if (rbc != null)
                return rbc;
            var flwAct = usr.Rol.SelectMany(x => x.Cat).SelectMany(c => c.Flw).SelectMany(y => y.Tsk).Where(z => z.Id == tskId).FirstOrDefault();
            if (flwAct != null)
                return flwAct;
            var flwRbc = usr.Rol.SelectMany(x => x.Cat).SelectMany(c => c.Flw).SelectMany(y => y.Tsk).Where(z => z.Id == tskId).FirstOrDefault();
            if (flwRbc != null)
                return flwRbc;
            return null;
        }

        public Tsk Get(string tskName)
        {
            Usr usr = _session.Get<Usr>(_userSession.UserId);

            var act = usr.Rol.SelectMany(x => x.Cat).SelectMany(y => y.Tsk).Where(z => z.Name == tskName).FirstOrDefault();
            if (act != null)
                return act;
            var rbc = usr.Rol.SelectMany(x => x.Cat).SelectMany(y => y.Tsk).Where(z => z.Name == tskName).FirstOrDefault();
            if (rbc != null)
                return rbc;
            var flwAct = usr.Rol.SelectMany(x => x.Cat).SelectMany(c => c.Flw).SelectMany(y => y.Tsk).Where(z => z.Name == tskName).FirstOrDefault();
            if (flwAct != null)
                return flwAct;
            var flwRbc = usr.Rol.SelectMany(x => x.Cat).SelectMany(c => c.Flw).SelectMany(y => y.Tsk).Where(z => z.Name == tskName).FirstOrDefault();
            if (flwRbc != null)
                return flwRbc;
            return null;
        }
    }
}