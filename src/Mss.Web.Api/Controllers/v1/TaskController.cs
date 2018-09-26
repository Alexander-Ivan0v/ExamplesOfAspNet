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
    [ApiVersion1RoutePrefix("task")]
    [UnitOfWorkActionFilter]
    public class TaskController : ApiController
    {
        private readonly IGetTntInquiryProcessor _getTntInquiryProcessor;
        //private readonly IGetTskInquiryProcessor _getTskInquiryProcessor;

        public TaskController(IGetTntInquiryProcessor getTntInquiryProcessor/*, IGetTskInquiryProcessor getTskInquiryProcessor*/)
        {
            _getTntInquiryProcessor = getTntInquiryProcessor;
            //_getTskInquiryProcessor = getTskInquiryProcessor;
        }

        [Route("{tsk:long}/category/{cat:long}/service/{srv:long}/tenant/{tnt:long}", Name = "GetSingleTaskForUserById")]
        [HttpGet]
        [Authorize(Roles = Constants.RoleNames.Member)]
        public Tsk GetTsk(HttpRequestMessage requestMessage, long tsk, long cat, long srv, long tnt)
        {
            return _getTntInquiryProcessor.GetTsk(tnt, srv, cat, tsk);
        }

        [Route("{tsk:long}/category/{cat:long}/service/{srv:long}/tenant/{tnt:long}/run/{run:long}", Name = "GetSingleTaskResultForUserById")]
        [HttpGet]
        [Authorize(Roles = Constants.RoleNames.Member)]
        public Run GetTskRun(HttpRequestMessage requestMessage, long tsk, long cat, long srv, long tnt, long run)
        {
            return _getTntInquiryProcessor.GetRun(Constants.SpecialSegments.Task, tnt, srv, cat, tsk, run);
        }

        [Route("{tsk:long}/category/{cat:long}/service/{srv:long}/tenant/{tnt:long}/history", Name = "GetSingleTaskHistoryForUserById")]
        [HttpGet]
        [Authorize(Roles = Constants.RoleNames.Member)]
        public List<RunMin> GetTskHistory(HttpRequestMessage requestMessage, long tsk, long cat, long srv, long tnt)
        {
            return _getTntInquiryProcessor.GetRun(Constants.SpecialSegments.Task, tnt, srv, cat, tsk);
        }
    }
}