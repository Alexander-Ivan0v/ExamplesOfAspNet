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
    [ApiVersion1RoutePrefix("team")]
    [UnitOfWorkActionFilter]
    public class TeamMssController : ApiController
    {
        private readonly IAddTeamMaintenanceProcessor _addTeamMaintenanceProcessor;
        private readonly IGetTeamInquiryProcessor _getTeamInquiryProcessor;

        public TeamMssController(IAddTeamMaintenanceProcessor addTeamMaintenanceProcessor, IGetTeamInquiryProcessor getTeamInquiryProcessor)
        {
            _addTeamMaintenanceProcessor = addTeamMaintenanceProcessor;
            _getTeamInquiryProcessor = getTeamInquiryProcessor;
        }

        [Route("", Name = "AddTeamRoute")]
        [HttpPost]
        [Authorize(Roles = Constants.RoleNames.MssAdministrator)]
        public IHttpActionResult AddTeam(HttpRequestMessage requestMessage, TeamOnly newTeam)
        {
            var team = _addTeamMaintenanceProcessor.AddTeam(newTeam);
            var result = new TeamCreatedActionResult(requestMessage, team);

            return result;
        }

        [Route("", Name = "GetTeamRoute")]
        [HttpGet]
        [Authorize(Roles = Constants.RoleNames.MssAdministrator)]
        public List<TeamWOChg> GetTeam(HttpRequestMessage requestMessage)
        {
            var team = _getTeamInquiryProcessor.Get();

            return team;
        }

    }
}