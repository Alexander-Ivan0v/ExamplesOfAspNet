using NHibernate;
using Mss.Data.Entities;
using Mss.Data.QueryProcessors;
using System.Collections.Generic;
using Mss.Common.Security;
using System.Linq;
using Mss.Common;

namespace Mss.Data.SqlServer.QueryProcessors
{
    public class ScrQueryProcessor : IScrQueryProcessor
    {
        private readonly ISession _session;
        private readonly IUserSession _userSession;
        private readonly IDateTime _dateTime;

        public ScrQueryProcessor(ISession session, IUserSession userSession, IDateTime dateTime)
        {
            _session = session;
            _userSession = userSession;
            _dateTime = dateTime;
        }

        public List<Scr> Get()
        {
            List<Scr> scr = new List<Scr>();

            Usr usr = _session.Get<Usr>(_userSession.UserId);            
            scr.AddRange(usr.Rol.SelectMany(x => x.Cat).SelectMany(y => y.Tsk).Where(z => z.Action != null).Select(o => o.Action).ToList());
            scr.AddRange(usr.Rol.SelectMany(x => x.Cat).SelectMany(y => y.Tsk).Where(z => z.Rback != null).Select(o => o.Rback).ToList());
            scr.AddRange(usr.Rol.SelectMany(x => x.Cat).SelectMany(c => c.Flw).SelectMany(y => y.Tsk).Where(z => z.Action != null).Select(o => o.Action).ToList());
            scr.AddRange(usr.Rol.SelectMany(x => x.Cat).SelectMany(c => c.Flw).SelectMany(y => y.Tsk).Where(z => z.Rback != null).Select(o => o.Rback).ToList());
            scr = scr.Distinct().ToList();

            return scr;
        }

        public Scr Get(long scrId)
        {
            Usr usr = _session.Get<Usr>(_userSession.UserId);

            var act = usr.Rol.SelectMany(x => x.Cat).SelectMany(y => y.Tsk).Where(z => z.Action != null && z.Action.Id == scrId).Select(o => o.Action).FirstOrDefault();
            if (act != null)
                return act;
            var rbc = usr.Rol.SelectMany(x => x.Cat).SelectMany(y => y.Tsk).Where(z => z.Rback != null && z.Rback.Id == scrId).Select(o => o.Rback).FirstOrDefault();
            if (rbc != null)
                return rbc;
            var flwAct = usr.Rol.SelectMany(x => x.Cat).SelectMany(c => c.Flw).SelectMany(y => y.Tsk).Where(z => z.Action != null && z.Action.Id == scrId).Select(o => o.Action).FirstOrDefault();
            if (flwAct != null)
                return flwAct;
            var flwRbc = usr.Rol.SelectMany(x => x.Cat).SelectMany(c => c.Flw).SelectMany(y => y.Tsk).Where(z => z.Rback != null && z.Rback.Id == scrId).Select(o => o.Action).FirstOrDefault();
            if (flwRbc != null)
                return flwRbc;
            return null;
        }

        public Scr Get(string scrName)
        {
            Usr usr = _session.Get<Usr>(_userSession.UserId);

            var act = usr.Rol.SelectMany(x => x.Cat).SelectMany(y => y.Tsk).Where(z => z.Action != null && z.Action.Name == scrName).Select(o => o.Action).FirstOrDefault();
            if (act != null)
                return act;
            var rbc = usr.Rol.SelectMany(x => x.Cat).SelectMany(y => y.Tsk).Where(z => z.Rback != null && z.Rback.Name == scrName).Select(o => o.Rback).FirstOrDefault();
            if (rbc != null)
                return rbc;
            var flwAct = usr.Rol.SelectMany(x => x.Cat).SelectMany(c => c.Flw).SelectMany(y => y.Tsk).Where(z => z.Action != null && z.Action.Name == scrName).Select(o => o.Action).FirstOrDefault();
            if (flwAct != null)
                return flwAct;
            var flwRbc = usr.Rol.SelectMany(x => x.Cat).SelectMany(c => c.Flw).SelectMany(y => y.Tsk).Where(z => z.Rback != null && z.Rback.Name == scrName).Select(o => o.Action).FirstOrDefault();
            if (flwRbc != null)
                return flwRbc;
            return null;
        }
    }
}