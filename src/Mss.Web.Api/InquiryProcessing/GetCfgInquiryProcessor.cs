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
    public class GetCfgInquiryProcessor : IGetCfgInquiryProcessor
    {
        private readonly ICfgQueryProcessor _queryProcessor;
        private readonly IAutoMapper _autoMapper;
        private readonly IUserSession _userSession;

        public GetCfgInquiryProcessor(ICfgQueryProcessor queryProcessor, IAutoMapper autoMapper, IUserSession userSession)
        {
            _queryProcessor = queryProcessor;
            _autoMapper = autoMapper;
            _userSession = userSession;
        }

        public List<Cfg> Get()
        {
            var entities = _queryProcessor.Get();
            List<Cfg> ju = new List<Cfg>();

            if (entities != null)
            {
                entities.ForEach(x => ju.Add(_autoMapper.Map<Cfg>(x)));
                return ju;
            }
            return null;
        }

        public Cfg Get(long cfgId)
        {
            var entity = _queryProcessor.Get(cfgId);
            if (entity != null)
            {
                return _autoMapper.Map<Cfg>(entity);
            }

            return null;
        }

    }
}