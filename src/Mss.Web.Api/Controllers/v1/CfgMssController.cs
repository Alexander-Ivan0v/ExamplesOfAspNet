using System.Net.Http;
using System.Web.Http;
using Mss.Web.Api.Models;
using Mss.Web.Common;
using Mss.Web.Common.Routing;
using Mss.Web.Api.MaintenanceProcessing;
using System.Collections.Generic;
using Mss.Web.Api.InquiryProcessing;
using Mss.Common;
using System.Security.Claims;
using System.Security.Principal;
using System.Web;
using System.Linq;
using Mss.Web.Common.Security;

namespace Mss.Web.Api.Controllers.V1
{
    [ApiVersion1RoutePrefix("cfg")]
    [UnitOfWorkActionFilter]
    public class CfgMssController : ApiController
    {
        private readonly IAddCfgMaintenanceProcessor _addCfgMaintenanceProcessor;
        private readonly IGetCfgInquiryProcessor _getCfgInquiryProcessor;

        public CfgMssController(IAddCfgMaintenanceProcessor addCfgMaintenanceProcessor, IGetCfgInquiryProcessor getCfgInquiryProcessor)
        {
            _addCfgMaintenanceProcessor = addCfgMaintenanceProcessor;
            _getCfgInquiryProcessor = getCfgInquiryProcessor;
        }

        [Route("", Name = "AddCfgMssRoute")]
        [HttpPost]
        [UserAudit]
        [Authorize(Roles = Constants.RoleNames.MssAdministrator)]
        public IHttpActionResult AddCfg(HttpRequestMessage requestMessage, Cfg newCfg)
        {
            var cfg = _addCfgMaintenanceProcessor.AddCfg(newCfg);
            var result = new CfgCreatedActionResult(requestMessage, cfg);

            return result;
        }

        [Route("", Name = "GetCfgMssRouteByID")]
        [HttpGet]
        [Authorize(Roles = Constants.RoleNames.MssAdministrator)]
        public List<Cfg> GetTeam(HttpRequestMessage requestMessage)
        {
            var cfg = _getCfgInquiryProcessor.Get();

            return cfg;
        }

        [Route("{cfg:long}", Name = "GetCfgMssRoute")]
        [HttpGet]
        [Authorize(Roles = Constants.RoleNames.MssAdministrator)]
        public Cfg GetTeam(HttpRequestMessage requestMessage, long cfg)
        {
            var config = _getCfgInquiryProcessor.Get(cfg);

            return config;
        }

    }
}