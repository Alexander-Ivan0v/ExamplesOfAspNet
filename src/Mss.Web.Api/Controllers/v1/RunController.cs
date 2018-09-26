using Mss.Common;
using Mss.Web.Api.MaintenanceProcessing;
using Mss.Web.Common;
using Mss.Web.Common.Routing;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using Mss.Web.Common.Security;
using Mss.Web.Api.Models;
using System.Collections;

namespace Mss.Web.Api.Controllers.v1
{
    [ApiVersion1RoutePrefix("run")]
    [UnitOfWorkActionFilter]
    [Authorize(Roles = Constants.RoleNames.Member)]

    public class RunController : ApiController
    {
        private readonly IRunWorkflowProcessor _runWorkflowProcessor;

        public RunController(IRunWorkflowProcessor runWorkflowProcessor)
        {
            _runWorkflowProcessor = runWorkflowProcessor;
        }


        [Route("task/{tskId:long}/tenant/{tntId:long}", Name = "RunThisTaskRoute")]
        [HttpPost]
        [Authorize(Roles = Constants.RoleNames.Member)]
        public Run RunTsk(long tntId, long tskId, RunParams par)
        {
            return _runWorkflowProcessor.RunTask(tntId, tskId, par);
        }


        [Route("flow/{flwId:long}/tenant/{tntId:long}", Name = "RunThisFlowRoute")]
        [HttpPost]
        [Authorize(Roles = Constants.RoleNames.Member)]
        public Run RunFlw(long tntId, long flwId, RunParams par)
        {
            return _runWorkflowProcessor.RunFlow(tntId, flwId, par);
        }
    }
}
