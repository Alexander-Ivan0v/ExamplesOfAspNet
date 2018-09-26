using System.Net;
using System.Net.Http;
using System.Threading;
using System.Threading.Tasks;
using System.Web.Http;
using Cfg = Mss.Web.Api.Models.Cfg;
 
namespace Mss.Web.Api.MaintenanceProcessing
{
    public class CfgCreatedActionResult : IHttpActionResult
    {
        private readonly Cfg _createdCfg;
        private readonly HttpRequestMessage _requestMessage;
 
        public CfgCreatedActionResult(HttpRequestMessage requestMessage, Cfg ctratedCfg)
        {
            _requestMessage = requestMessage;
            _createdCfg = ctratedCfg;
        }
 
        public Task<HttpResponseMessage> ExecuteAsync(CancellationToken cancellationToken)
        {
            return System.Threading.Tasks.Task.FromResult(Execute());
        }

        public HttpResponseMessage Execute()
        {
            var responseMessage = _requestMessage.CreateResponse(HttpStatusCode.Created, _createdCfg);

            responseMessage.Headers.Location = LocationLinkCalculator.GetLocationLink(_createdCfg);

            return responseMessage;
        }
    }
}