using Mss.Web.Api.Models;

namespace Mss.Web.Api.MaintenanceProcessing
{
    public interface IAddRunDataMaintenanceProcessor
    {
        RunData AddRunData(string tskflw, RunData newRunData, long runId);
    }
}