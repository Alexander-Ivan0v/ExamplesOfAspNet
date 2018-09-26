using Mss.Common;
using Mss.Common.TypeMapping;
using Mss.Data.QueryProcessors;
using Mss.Web.Api.Models;
using System.Net.Http;

namespace Mss.Web.Api.MaintenanceProcessing
{
    public class AddCfgMaintenanceProcessor : IAddCfgMaintenanceProcessor
    {
        private readonly IAutoMapper _autoMapper;
        private readonly IAddCfgQueryProcessor _queryProcessor;
        private readonly IDateTime _dateTime;
        private readonly IChgStateQueryProcessor _chgStateQueryProcessor;
        private readonly IUsrQueryProcessor _usrQueryProcessor;


        public AddCfgMaintenanceProcessor(
            IChgStateQueryProcessor chgStateQueryProcessor,
            IUsrQueryProcessor usrQueryProcessor,
            IAddCfgQueryProcessor queryProcessor,
            IAutoMapper autoMapper,
            IDateTime dateTime)
        {
            _queryProcessor = queryProcessor;
            _autoMapper = autoMapper;
            _dateTime = dateTime;
            _chgStateQueryProcessor = chgStateQueryProcessor;
            _usrQueryProcessor = usrQueryProcessor;
        }

        public Cfg AddCfg(Cfg newCfg)
        {
            var cfgEntity = _autoMapper.Map<Data.Entities.Cfg>(newCfg);

            cfgEntity.Chg.Add(
                new Data.Entities.Chg()
                {
                    ChgDate = _dateTime.UtcNow,
                    ChgState = _chgStateQueryProcessor.Get(10), // Cfg->Create
                    ChgBy = _usrQueryProcessor.Get(1) // Default user
                }
            );

            _queryProcessor.AddCfg(cfgEntity);

            var cfg = _autoMapper.Map<Cfg>(cfgEntity);

            // TODO: Implement link service
            cfg.AddLink(new Link
            {
                Method = HttpMethod.Get.Method,
                Href = Mss.Common.Constants.DefaultLegacyNamespace +  
                       Mss.Common.Constants.CommonRoutingDefinitions.ApiSegmentName + '/' + 
                       Mss.Common.Constants.CommonRoutingDefinitions.CurrentApiVersion + '/' +
                       Mss.Common.Constants.CommonControllerDefinitions.Cfg + '/' + cfg.Id,
                Rel = Constants.CommonLinkRelValues.Self
            });

            return cfg;
        }
    }
}