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
    public class GetUsrInquiryProcessor : IGetUsrInquiryProcessor
    {
        private readonly IUsrQueryProcessor _queryProcessor;
        private readonly IAutoMapper _autoMapper;
        private readonly IUserSession _userSession;

        public GetUsrInquiryProcessor(IUsrQueryProcessor queryProcessor, IAutoMapper autoMapper, IUserSession userSession)
        {
            _queryProcessor = queryProcessor;
            _autoMapper = autoMapper;
            _userSession = userSession;
        }

        public List<UsrMid> Get()
        {
            var entities = _queryProcessor.Get();
            List<UsrMid> ju = new List<UsrMid>();

            if (entities != null)
            {
                entities.ForEach(x => ju.Add(_autoMapper.Map<UsrMid>(x)));
                return ju;
            }
            return null;
        }

        public UsrMid Get(long userId)
        {
            var entity = _queryProcessor.Get(userId);
            if (entity != null)
            {
                return _autoMapper.Map<UsrMid>(entity);
            }

            return null;
        }

        public List<UsrMid> Get(string userName)
        {
            var entities = _queryProcessor.Get(userName);
            List<UsrMid> ju = new List<UsrMid>();

            if (entities != null)
            {
                entities.ForEach(x => ju.Add(_autoMapper.Map<UsrMid>(x)));
                return ju;
            }
            return null;
        }

        public UsrMid GetCurrent()
        {
            return _autoMapper.Map<UsrMid>(_queryProcessor.Get(_userSession.UserId));
        }

        public List<RolMin> GetRoles(long tntId)
        {
            List<RolMin> ju = new List<RolMin>();

            var entities =  _queryProcessor.Get(_userSession.UserId).Rol.Where(x => x.Tnt.Id == tntId).ToList();

            if (entities != null)
            {
                entities.ForEach(x => ju.Add(_autoMapper.Map<RolMin>(x)));
                return ju;
            }
            return null;
        }

    }
}