using Mss.Common;
using Mss.Common.TypeMapping;
using Mss.Data.QueryProcessors;
using Mss.Web.Api.Models;
using System.Net.Http;

namespace Mss.Web.Api.MaintenanceProcessing
{
    public class AddTeamMaintenanceProcessor : IAddTeamMaintenanceProcessor
    {   
        private readonly IAutoMapper _autoMapper;
        private readonly IAddTeamQueryProcessor _queryProcessor;
        private readonly IDateTime _dateTime;
        private readonly IChgStateQueryProcessor _chgStateQueryProcessor;
        private readonly IUsrQueryProcessor _usrQueryProcessor;     

        public AddTeamMaintenanceProcessor(
            IChgStateQueryProcessor chgStateQueryProcessor,
            IUsrQueryProcessor usrQueryProcessor,              
            IAutoMapper autoMapper, 
            IDateTime dateTime,
            IAddTeamQueryProcessor queryProcessor)
        {
            _queryProcessor = queryProcessor;
            _autoMapper = autoMapper;
            _dateTime = dateTime;
            _chgStateQueryProcessor = chgStateQueryProcessor;
            _usrQueryProcessor = usrQueryProcessor;
        }

        public TeamWOChg AddTeam(TeamOnly newTeam)
        {
            var teamEntity = _autoMapper.Map<Data.Entities.Team>(newTeam);

            teamEntity.Chg.Add(
                new Data.Entities.Chg() {                    
                    ChgDate = _dateTime.UtcNow,                    
                    ChgState = _chgStateQueryProcessor.Get(4), // Team -> Create
                    ChgBy = _usrQueryProcessor.Get(1) // Default user
                }
            );

            _queryProcessor.AddTeam(teamEntity);

            var team = _autoMapper.Map<TeamWOChg>(teamEntity);

            // TODO: Implement link service
            team.AddLink(new Link
            {
                Method = HttpMethod.Get.Method,
                Href = Mss.Common.Constants.DefaultLegacyNamespace +
                       Mss.Common.Constants.CommonRoutingDefinitions.ApiSegmentName + '/' +
                       Mss.Common.Constants.CommonRoutingDefinitions.CurrentApiVersion + '/' +
                       Mss.Common.Constants.CommonControllerDefinitions.Team + '/' + team.Id,
                Rel = Constants.CommonLinkRelValues.Self
            });

            return team;
        }
    }
}