using Mss.Common;
using Mss.Common.TypeMapping;
using Mss.Data.QueryProcessors;
using Mss.Web.Api.Models;
using System.Collections.Generic;
using System.Net.Http;

namespace Mss.Web.Api.MaintenanceProcessing
{
    public class AddRunMaintenanceProcessor : IAddRunMaintenanceProcessor
    {
        private readonly IAutoMapper _autoMapper;
        private readonly IAddRunQueryProcessor _queryProcessor;
        private readonly IDateTime _dateTime;
        private readonly IChgStateGrpQueryProcessor _chgStateGrpQueryProcessor;
        private readonly IChgStateQueryProcessor _chgStateQueryProcessor;
        private readonly IChgQueryProcessor _chgQueryProcessor;
        private readonly IParQueryProcessor _parQueryProcessor;
        private readonly IUsrQueryProcessor _usrQueryProcessor;


        public AddRunMaintenanceProcessor(
            IChgStateGrpQueryProcessor chgStateGrpQueryProcessor,
            IChgStateQueryProcessor chgStateQueryProcessor,
            IChgQueryProcessor chgQueryProcessor,
            IParQueryProcessor parQueryProcessor,
            IUsrQueryProcessor usrQueryProcessor,
            IAddRunQueryProcessor queryProcessor,
            IAutoMapper autoMapper,
            IDateTime dateTime)
        {
            _queryProcessor = queryProcessor;
            _autoMapper = autoMapper;
            _dateTime = dateTime;
            _chgStateGrpQueryProcessor = chgStateGrpQueryProcessor;
            _chgStateQueryProcessor = chgStateQueryProcessor;
            _usrQueryProcessor = usrQueryProcessor;
            _parQueryProcessor = parQueryProcessor;
            _chgQueryProcessor = chgQueryProcessor;
        }

        public Run AddRun(Run newRun)
        {
            var runEntity = _autoMapper.Map<Data.Entities.Run>(newRun);

            newRun.Par.ForEach(x => runEntity.Par.Add(_parQueryProcessor.Get(x.Id)));
            newRun.Chg.ForEach(x => runEntity.Chg.Add(_chgQueryProcessor.Get(x.Id)));

            _queryProcessor.AddRun(runEntity);
            var run = _autoMapper.Map<Run>(runEntity);

            // TODO: Implement link service
            run.AddLink(new Link
            {
                Method = HttpMethod.Get.Method,
                Href = Mss.Common.Constants.DefaultLegacyNamespace +
                       Mss.Common.Constants.CommonRoutingDefinitions.ApiSegmentName + '/' +
                       Mss.Common.Constants.CommonRoutingDefinitions.CurrentApiVersion + '/' +
                       Mss.Common.Constants.CommonControllerDefinitions.Run + '/' + run.Id,
                Rel = Constants.CommonLinkRelValues.Self
            });

            return run;
        }
    }
}