﻿using NHibernate;
using NHibernate.Util;
using Mss.Common;
using Mss.Common.Security;
using Mss.Data.Entities;
using Mss.Data.Exceptions;
using Mss.Data.QueryProcessors;
using Mss.Data.SqlServer.QueryProcessors;

namespace Mss.Data.SqlServer.QueryProcessors
{
    public class AddRunDataQueryProcessor : IAddRunDataQueryProcessor
    {
        private readonly IDateTime _dateTime;
        private readonly ISession _session;
        private readonly IUserSession _userSession;

        public AddRunDataQueryProcessor(ISession session, IUserSession userSession, IDateTime dateTime)
        {
            _session = session;
            _userSession = userSession;
            _dateTime = dateTime;
        }

        public void AddRunData(RunData runData)
        {
            _session.SaveOrUpdate(runData);
        }
    }
}