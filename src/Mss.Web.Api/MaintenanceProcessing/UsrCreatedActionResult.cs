using System.Net;
using System.Net.Http;
using System.Threading;
using System.Threading.Tasks;
using System.Web.Http;
using UsrMid = Mss.Web.Api.Models.UsrMid;

namespace Mss.Web.Api.MaintenanceProcessing
{
    public class UsrCreatedActionResult : IHttpActionResult
    {
        private readonly UsrMid _createdUsr;
        private readonly HttpRequestMessage _requestMessage;

        public UsrCreatedActionResult(HttpRequestMessage requestMessage, UsrMid ctratedUsr)
        {
            _requestMessage = requestMessage;
            _createdUsr = ctratedUsr;
        }

        public Task<HttpResponseMessage> ExecuteAsync(CancellationToken cancellationToken)
        {
            return System.Threading.Tasks.Task.FromResult(Execute());
        }

        public HttpResponseMessage Execute()
        {
            var responseMessage = _requestMessage.CreateResponse(HttpStatusCode.Created, _createdUsr);

            responseMessage.Headers.Location = LocationLinkCalculator.GetLocationLink(_createdUsr);

            return responseMessage;
        }
    }
}