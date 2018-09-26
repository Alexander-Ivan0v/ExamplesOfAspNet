using Mss.Common;
using Mss.Common.TypeMapping;
using Mss.Data.QueryProcessors;
using Mss.Web.Api.Models;
using System.Net.Http;

namespace Mss.Web.Api.MaintenanceProcessing
{
    public class AddTntMaintenanceProcessor : IAddTntMaintenanceProcessor
    {
        private readonly IAutoMapper _autoMapper;
        private readonly IAddTntQueryProcessor _queryProcessor;
        private readonly IDateTime _dateTime;
        private readonly IChgStateQueryProcessor _chgStateQueryProcessor;
        private readonly IUsrQueryProcessor _usrQueryProcessor;
        private readonly ICfgQueryProcessor _cfgQueryProcessor;


        public AddTntMaintenanceProcessor(
            ICfgQueryProcessor cfgQueryProcessor,
            IChgStateQueryProcessor chgStateQueryProcessor,
            IUsrQueryProcessor usrQueryProcessor,
            IAddTntQueryProcessor queryProcessor,
            IAutoMapper autoMapper,
            IDateTime dateTime)
        {
            _cfgQueryProcessor = cfgQueryProcessor;
            _queryProcessor = queryProcessor;
            _autoMapper = autoMapper;
            _dateTime = dateTime;
            _chgStateQueryProcessor = chgStateQueryProcessor;
            _usrQueryProcessor = usrQueryProcessor;
        }

        public TntWOChg AddTnt(TntOnly newTnt)
        {
            var tntEntity = _autoMapper.Map<Data.Entities.Tnt>(newTnt);

            tntEntity.Chg.Add(
                new Data.Entities.Chg()
                {
                    ChgDate = _dateTime.UtcNow,
                    ChgState = _chgStateQueryProcessor.Get(7), // Tenant -> Create
                    ChgBy = _usrQueryProcessor.Get(1) // Default user
                }
            );
            tntEntity.Cfg = _cfgQueryProcessor.Get(newTnt.Cfg);

            _queryProcessor.AddTnt(tntEntity);

            var tnt = _autoMapper.Map<TntWOChg>(tntEntity);

            // TODO: Implement link service
            tnt.AddLink(new Link
            {
                Method = HttpMethod.Get.Method,
                Href = Mss.Common.Constants.DefaultLegacyNamespace +
                       Mss.Common.Constants.CommonRoutingDefinitions.ApiSegmentName + '/' +
                       Mss.Common.Constants.CommonRoutingDefinitions.CurrentApiVersion + '/' +
                       Mss.Common.Constants.CommonControllerDefinitions.Tnt + '/' + tnt.Id,
                Rel = Constants.CommonLinkRelValues.Self
            });

            return tnt;
        }
    }
}