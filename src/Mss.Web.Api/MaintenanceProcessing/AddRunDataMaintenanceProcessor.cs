using Mss.Common;
using Mss.Common.Security;
using Mss.Common.TypeMapping;
using Mss.Data.QueryProcessors;
using Mss.Web.Api.Models;
using System.Net.Http;

namespace Mss.Web.Api.MaintenanceProcessing
{
    public class AddRunDataMaintenanceProcessor : IAddRunDataMaintenanceProcessor
    {
        private readonly IAutoMapper _autoMapper;
        private readonly IAddRunDataQueryProcessor _queryProcessor;
        private readonly IDateTime _dateTime;
        private readonly IChgStateQueryProcessor _chgStateQueryProcessor;
        private readonly IUsrQueryProcessor _usrQueryProcessor;
        private readonly IRunQueryProcessor _runQueryProcessor;
        private readonly IChgStateGrpQueryProcessor _chgStateGrpQueryProcessor;
        private readonly IUserSession _userSession;

        public AddRunDataMaintenanceProcessor(
            IChgStateQueryProcessor chgStateQueryProcessor,
            IUsrQueryProcessor usrQueryProcessor,
            IAutoMapper autoMapper,
            IDateTime dateTime,
            IAddRunDataQueryProcessor queryProcessor,
            IRunQueryProcessor runQueryProcessor,
            IChgStateGrpQueryProcessor chgStateGrpQueryProcessor,
            IUserSession userSession)
        {
            _queryProcessor = queryProcessor;
            _autoMapper = autoMapper;
            _dateTime = dateTime;
            _chgStateQueryProcessor = chgStateQueryProcessor;
            _usrQueryProcessor = usrQueryProcessor;
            _runQueryProcessor = runQueryProcessor;
            _chgStateGrpQueryProcessor = chgStateGrpQueryProcessor;
            _userSession = userSession;
        }

        public RunData AddRunData(string tskflw, RunData newRunData, long runId)
        {
            string chgGrpName = (tskflw == "task") ? Constants.ChgStateGrpNames.RunTask : Constants.ChgStateGrpNames.RunFlow;

            var runDataEntity = _autoMapper.Map<Data.Entities.RunData>(newRunData);
            runDataEntity.Run = _runQueryProcessor.Get(runId);

            _queryProcessor.AddRunData(runDataEntity);
            var runData = _autoMapper.Map<RunData>(runDataEntity);

            // TODO: Implement link service
            runData.AddLink(new Link
            {
                Method = HttpMethod.Get.Method,
                Href = Mss.Common.Constants.DefaultLegacyNamespace +
                       Mss.Common.Constants.CommonRoutingDefinitions.ApiSegmentName + '/' +
                       Mss.Common.Constants.CommonRoutingDefinitions.CurrentApiVersion + '/' +
                       Mss.Common.Constants.CommonControllerDefinitions.Team + '/' + runData.Id,
                Rel = Constants.CommonLinkRelValues.Self
            });

            return runData;
        }
    }
}