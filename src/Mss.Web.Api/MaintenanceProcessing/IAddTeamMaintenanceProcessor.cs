using Mss.Web.Api.Models;
 
namespace Mss.Web.Api.MaintenanceProcessing
{
    public interface IAddTeamMaintenanceProcessor
    {
        TeamWOChg AddTeam(TeamOnly newTeam);
    }
}