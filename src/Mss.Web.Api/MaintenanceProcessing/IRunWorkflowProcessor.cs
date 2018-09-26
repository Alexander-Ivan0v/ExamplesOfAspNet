using Mss.Web.Api.Models;
using System.Collections;

namespace Mss.Web.Api.MaintenanceProcessing
{
    public interface IRunWorkflowProcessor
    {
        Run RunTask(long tntId, long runId, RunParams param);
        Run RunFlow(long tntId, long runId, RunParams param);    
    }
}