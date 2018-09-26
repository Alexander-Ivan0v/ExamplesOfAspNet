using System.Net;
using System.Net.Http;
using System.Threading;
using System.Threading.Tasks;
using System.Web.Http;
using TntWOChg = Mss.Web.Api.Models.TntWOChg;

namespace Mss.Web.Api.MaintenanceProcessing
{
    public class TntCreatedActionResult : IHttpActionResult
    {
        private readonly TntWOChg _createdTnt;
        private readonly HttpRequestMessage _requestMessage;

        public TntCreatedActionResult(HttpRequestMessage requestMessage, TntWOChg ctratedTnt)
        {
            _requestMessage = requestMessage;
            _createdTnt = ctratedTnt;
        }

        public Task<HttpResponseMessage> ExecuteAsync(CancellationToken cancellationToken)
        {
            return System.Threading.Tasks.Task.FromResult(Execute());
        }

        public HttpResponseMessage Execute()
        {
            var responseMessage = _requestMessage.CreateResponse(HttpStatusCode.Created, _createdTnt);

            responseMessage.Headers.Location = LocationLinkCalculator.GetLocationLink(_createdTnt);

            return responseMessage;
        }
    }
}