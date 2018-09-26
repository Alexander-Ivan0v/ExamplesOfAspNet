using Mss.Web.Api.Models;

namespace Mss.Web.Api.MaintenanceProcessing
{
    public interface IAddUsrMaintenanceProcessor
    {
        UsrMid AddUsr(UsrNew newUsr);
    }
}