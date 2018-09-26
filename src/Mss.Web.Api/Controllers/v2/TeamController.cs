using System.Net.Http;
using System.Web.Http;
using Mss.Web.Api.Models;
using Mss.Web.Common.Routing;

namespace Mss.Web.Api.Controllers.v2
{
    [RoutePrefix("api/{apiVersion:apiVersionConstraint(v2)}/team")]
    public class TasksController : ApiController
    {
        [Route("", Name = "AddTeamRouteV2")]
        [HttpPost]
        public TeamV2 AddTask(HttpRequestMessage requestMessage, Models.TeamV2 newTeam)
        {
            return new TeamV2
            {
                Name = "In v2, newTeam.Name = " + newTeam.Name
            };
        }
    }
}