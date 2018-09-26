using System.Net;
using System.Net.Http;
using System.Threading;
using System.Threading.Tasks;
using System.Web.Http;
using TeamWOChg = Mss.Web.Api.Models.TeamWOChg;

namespace Mss.Web.Api.MaintenanceProcessing
{
    public class TeamCreatedActionResult : IHttpActionResult
    {
        private readonly TeamWOChg _createdTeam;
        private readonly HttpRequestMessage _requestMessage;

        public TeamCreatedActionResult(HttpRequestMessage requestMessage, TeamWOChg ctratedTeam)
        {
            _requestMessage = requestMessage;
            _createdTeam = ctratedTeam;
        }

        public Task<HttpResponseMessage> ExecuteAsync(CancellationToken cancellationToken)
        {
            return System.Threading.Tasks.Task.FromResult(Execute());
        }

        public HttpResponseMessage Execute()
        {
            var responseMessage = _requestMessage.CreateResponse(HttpStatusCode.Created, _createdTeam);

            responseMessage.Headers.Location = LocationLinkCalculator.GetLocationLink(_createdTeam);

            return responseMessage;
        }
    }
}