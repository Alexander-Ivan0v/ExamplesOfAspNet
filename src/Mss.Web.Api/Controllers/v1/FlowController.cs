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
    [ApiVersion1RoutePrefix("flow")]
    [UnitOfWorkActionFilter]
    public class FlowController : ApiController
    {
        private readonly IGetTntInquiryProcessor _getTntInquiryProcessor;
        //private readonly IGetFlwInquiryProcessor _getFlwInquiryProcessor;

        public FlowController(IGetTntInquiryProcessor getTntInquiryProcessor/*, IGetFlwInquiryProcessor getFlwInquiryProcessor*/)
        {
            _getTntInquiryProcessor = getTntInquiryProcessor;
            //_getFlwInquiryProcessor = getFlwInquiryProcessor;
        }

        [Route("{flw:long}/category/{cat:long}/service/{srv:long}/tenant/{tnt:long}", Name = "GetSingleFlowForUserById")]
        [HttpGet]
        [Authorize(Roles = Constants.RoleNames.Member)]
        public Flw GetFlw(HttpRequestMessage requestMessage, long flw, long cat, long srv, long tnt)
        {
            return _getTntInquiryProcessor.GetFlw(tnt, srv, cat, flw);
        }
    }
}