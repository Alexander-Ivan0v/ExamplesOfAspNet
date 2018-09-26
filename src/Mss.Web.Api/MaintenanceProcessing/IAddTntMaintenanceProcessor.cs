using Mss.Web.Api.Models;

namespace Mss.Web.Api.MaintenanceProcessing
{
    public interface IAddTntMaintenanceProcessor
    {
        TntWOChg AddTnt(TntOnly newTnt);
    }
}