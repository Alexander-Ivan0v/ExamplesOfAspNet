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
    [ApiVersion1RoutePrefix("tenant")]
    [UnitOfWorkActionFilter]
    public class TenantMssController : ApiController
    {
        private readonly IAddTntMaintenanceProcessor _addTntMaintenanceProcessor;
        private readonly IGetTntInquiryProcessor _getTntInquiryProcessor;

        public TenantMssController(IAddTntMaintenanceProcessor addTntMaintenanceProcessor, IGetTntInquiryProcessor getTntInquiryProcessor)
        {
            _addTntMaintenanceProcessor = addTntMaintenanceProcessor;
            _getTntInquiryProcessor = getTntInquiryProcessor;
        }

        [Route("", Name = "AddTenantRoute")]
        [HttpPost]
        [Authorize(Roles = Constants.RoleNames.MssAdministrator)]
        public IHttpActionResult AddTenant(HttpRequestMessage requestMessage, TntOnly newTnt)
        {
            var tnt = _addTntMaintenanceProcessor.AddTnt(newTnt);
            var result = new TntCreatedActionResult(requestMessage, tnt);

            return result;
        }

        [Route("", Name = "GetTenantRoute")]
        [HttpGet]
        [Authorize(Roles = Constants.RoleNames.MssAdministrator)]
        public List<Tnt> GetTenant(HttpRequestMessage requestMessage)
        {
            var tnts = _getTntInquiryProcessor.Get();

            return tnts;
        }
    }
}