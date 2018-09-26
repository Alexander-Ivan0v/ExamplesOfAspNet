using Mss.Common.Security;
using Mss.Data.QueryProcessors;
//using Mss.Web.Api.LinkServices;
using Mss.Web.Api.Models;
using NHibernate;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Mss.Common;
using System.Security.Claims;
using Mss.Common.TypeMapping;
using Mss.Data.Exceptions;

namespace Mss.Web.Api.InquiryProcessing
{
    public class GetTeamInquiryProcessor : IGetTeamInquiryProcessor
    {
        private readonly ITeamQueryProcessor _queryProcessor;
        private readonly IAutoMapper _autoMapper;
        private readonly IUserSession _userSession;

        public GetTeamInquiryProcessor(ITeamQueryProcessor queryProcessor, IAutoMapper autoMapper, IUserSession userSession)
        {
            _queryProcessor = queryProcessor;
            _autoMapper = autoMapper;
            _userSession = userSession;
        }

        public List<TeamWOChg> Get()
        {
            var entities = _queryProcessor.Get();
            List<TeamWOChg> ju = new List<TeamWOChg>();

            if (entities != null)
            {
                entities.ForEach(x => ju.Add(_autoMapper.Map<TeamWOChg>(x)));
                return ju;
            }
            return null;
        }

        public TeamWOChg Get(long teamId)
        {
            var entity = _queryProcessor.Get(teamId);
            if (entity != null)
            {
                return _autoMapper.Map<TeamWOChg>(entity);
            }

            return null;
        }

        public TeamWOChg Get(string teamName)
        {
            var entity = _queryProcessor.Get(teamName);
            var ju = _autoMapper.Map<TeamWOChg>(entity);
            return ju;
        }

    }
}