using Mss.Web.Api.Models;

namespace Mss.Web.Api.MaintenanceProcessing
{
    public interface IAddRunMaintenanceProcessor
    {
        Run AddRun(Run newRun);
    }
}