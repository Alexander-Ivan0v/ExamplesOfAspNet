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
using Mss.Common.Security;

namespace Mss.Web.Api.Controllers.V1
{
    [ApiVersion1RoutePrefix("common")]
    [UnitOfWorkActionFilter]
    public class CommonController : ApiController
    {
        private readonly IGetTntInquiryProcessor _getTntInquiryProcessor;
        private readonly IGetUsrInquiryProcessor _getUsrInquiryProcessor;
        private readonly IUserSession _userSession;

        public CommonController(IGetTntInquiryProcessor getTntInquiryProcessor, IGetUsrInquiryProcessor getUsrInquiryProcessor)
        {
            _getTntInquiryProcessor = getTntInquiryProcessor;
            _getUsrInquiryProcessor = getUsrInquiryProcessor;
        }

        [Route("tenant", Name = "GetAvailTntForUser")]
        [HttpGet]
        [Authorize(Roles = Constants.RoleNames.Member)]
        public List<Tnt> GetTenant(HttpRequestMessage requestMessage)
        {
            var tenant = _getTntInquiryProcessor.Get();

            return tenant;
        }

        [Route("init", Name = "GetInitialInfo")]
        [HttpGet]
        [Authorize(Roles = Constants.RoleNames.Member)]
        public SrvCommon GetInitialInfo(HttpRequestMessage requestMessage)
        {
            return new SrvCommon() { 
                ApiVersions = Mss.Common.SrvCommonInfo.ApiVersions, 
                Company = Mss.Common.SrvCommonInfo.AssemblyCompany, 
                Copyright = Mss.Common.SrvCommonInfo.AssemblyCopyright, 
                Author = Mss.Common.SrvCommonInfo.Author, 
                AuthorEmail = Mss.Common.SrvCommonInfo.AuthorEmail, 
                Description = Mss.Common.SrvCommonInfo.AssemblyDescription, 
                Product = Mss.Common.SrvCommonInfo.AssemblyProduct, 
                Title = Mss.Common.SrvCommonInfo.AssemblyTitle, 
                Version = Mss.Common.SrvCommonInfo.AssemblyVersion, 
                MainTenantName = Constants.MainTenant.Name,
                usr = _getUsrInquiryProcessor.GetCurrent()
            };
        }

        [Route("role/{tnt:long}", Name = "GetAvailRolesForUser")]
        [HttpGet]
        [Authorize(Roles = Constants.RoleNames.Member)]
        public List<RolMin> GetRole(HttpRequestMessage requestMessage, long tnt)
        {
            var rol = _getUsrInquiryProcessor.GetRoles(tnt);

            return rol;
        }
    }
}