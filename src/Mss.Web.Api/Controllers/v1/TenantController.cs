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
    [ApiVersion1RoutePrefix("tenant")]
    [UnitOfWorkActionFilter]
    public class TenantController : ApiController
    {
        private readonly IGetTntInquiryProcessor _getTntInquiryProcessor;

        public TenantController(IGetTntInquiryProcessor getTntInquiryProcessor)
        {
            _getTntInquiryProcessor = getTntInquiryProcessor;
        }

        [Route("{tnt:long}", Name = "GetSingleTntForUserById")]
        [HttpGet]
        [Authorize(Roles = Constants.RoleNames.Member)]
        public Tnt GetTenant(HttpRequestMessage requestMessage, long tnt)
        {
            var tenant = _getTntInquiryProcessor.Get(tnt);

            return tenant;
        }

        [Route("{tnt:long}/ps", Name = "GetPowerShellForSingleTntForUserById")]
        [HttpGet]
        [Authorize(Roles = Constants.RoleNames.Member)]
        public string GetPs(HttpRequestMessage requestMessage, long tnt)
        {
            var ps = _getTntInquiryProcessor.GetPs(tnt);

            return ps;
        }

        [Route("{tntName:alpha}", Name = "GetSingleTntForUserByName")]
        [HttpGet]
        [Authorize(Roles = Constants.RoleNames.Member)]
        public Tnt GetTenant(HttpRequestMessage requestMessage, string tntName)
        {
            var tenant = _getTntInquiryProcessor.Get(tntName);

            return tenant;
        }
    }
}