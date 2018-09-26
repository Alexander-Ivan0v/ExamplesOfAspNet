using Mss.Web.Api.Models;

namespace Mss.Web.Api.MaintenanceProcessing
{
    public interface IAddCfgMaintenanceProcessor
    {
        Cfg AddCfg(Cfg newCfg);
    }
}