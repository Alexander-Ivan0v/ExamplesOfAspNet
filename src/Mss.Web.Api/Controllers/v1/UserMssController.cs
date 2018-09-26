using System.Net.Http;
using System.Web.Http;
using Mss.Web.Api.Models;
using Mss.Web.Common;
using Mss.Web.Common.Routing;
using Mss.Web.Api.MaintenanceProcessing;
using Mss.Web.Api.InquiryProcessing;
using System.Collections.Generic;
using Mss.Common;

namespace Mss.Web.Api.Controllers.V1
{
    [ApiVersion1RoutePrefix("user")]
    [UnitOfWorkActionFilter]
    public class UserMssController : ApiController
    {
        private readonly IAddUsrMaintenanceProcessor _addUsrMaintenanceProcessor;
        private readonly IGetUsrInquiryProcessor _getUsrInquiryProcessor;

        public UserMssController(IAddUsrMaintenanceProcessor addUsrMaintenanceProcessor, IGetUsrInquiryProcessor getUsrInquiryProcessor)
        {
            _addUsrMaintenanceProcessor = addUsrMaintenanceProcessor;
            _getUsrInquiryProcessor = getUsrInquiryProcessor;
        }

        [Route("", Name = "AddUserRoute")]
        [HttpPost]
        [Authorize(Roles = Constants.RoleNames.MssAdministrator)]
        public IHttpActionResult AddUser(HttpRequestMessage requestMessage, UsrNew newUsr)
        {
            var usr = _addUsrMaintenanceProcessor.AddUsr(newUsr);
            var result = new UsrCreatedActionResult(requestMessage, usr);

            return result;
        }

        [Route("", Name = "GetUsrRoute")]
        [HttpGet]
        [Authorize(Roles = Constants.RoleNames.Member)]
        public List<UsrMid> GetUser(HttpRequestMessage requestMessage)
        {
            var usrs = _getUsrInquiryProcessor.Get();

            return usrs;
        }
    }
}