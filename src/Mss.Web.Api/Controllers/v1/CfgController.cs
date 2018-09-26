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
    [ApiVersion1RoutePrefix("tnt/{tnt:long}/cfg")]
    [UnitOfWorkActionFilter]
    public class CfgController : ApiController
    {
        private readonly IAddCfgMaintenanceProcessor _addCfgMaintenanceProcessor;
        private readonly IGetCfgInquiryProcessor _getCfgInquiryProcessor;
        private readonly IGetTntInquiryProcessor _getTntInquiryProcessor;

        public CfgController(IAddCfgMaintenanceProcessor addCfgMaintenanceProcessor, 
            IGetCfgInquiryProcessor getCfgInquiryProcessor, 
            IGetTntInquiryProcessor getTntInquiryProcessor)
        {
            _addCfgMaintenanceProcessor = addCfgMaintenanceProcessor;
            _getCfgInquiryProcessor = getCfgInquiryProcessor;
            _getTntInquiryProcessor = getTntInquiryProcessor;
        }


        [Route("", Name = "GetCfgTntRoute")]
        [HttpGet]
        [Authorize(Roles = Constants.RoleNames.Administrator)]
        public Cfg GetTeam(HttpRequestMessage requestMessage, long tnt)
        {

            var cfg = _getTntInquiryProcessor.Get(tnt).Cfg;

            return cfg;
        }

    }
}