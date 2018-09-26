using Mss.Common;
using Mss.Common.TypeMapping;
using Mss.Data.QueryProcessors;
using Mss.Web.Api.Models;
using System.Collections.Generic;
using Gdc.Common;
using System.Net.Http;

namespace Mss.Web.Api.MaintenanceProcessing
{
    public class AddUsrMaintenanceProcessor : IAddUsrMaintenanceProcessor
    {
        private readonly IAutoMapper _autoMapper;
        private readonly IAddUsrQueryProcessor _queryProcessor;
        private readonly IDateTime _dateTime;
        private readonly IChgStateQueryProcessor _chgStateQueryProcessor;
        private readonly IUsrQueryProcessor _usrQueryProcessor;
        private readonly IRolQueryProcessor _rolQueryProcessor;
        private readonly ITeamQueryProcessor _teamQueryProcessor;


        public AddUsrMaintenanceProcessor(
            ITeamQueryProcessor teamQueryProcessor,
            IRolQueryProcessor rolQueryProcessor,
            IChgStateQueryProcessor chgStateQueryProcessor,
            IUsrQueryProcessor usrQueryProcessor,
            IAddUsrQueryProcessor queryProcessor,
            IAutoMapper autoMapper,
            IDateTime dateTime)
        {
            _queryProcessor = queryProcessor;
            _autoMapper = autoMapper;
            _dateTime = dateTime;
            _chgStateQueryProcessor = chgStateQueryProcessor;
            _usrQueryProcessor = usrQueryProcessor;
            _teamQueryProcessor = teamQueryProcessor;
            _rolQueryProcessor = rolQueryProcessor;
        }

        public UsrMid AddUsr(UsrNew newUsr)
        {
            UsrMid usr = new UsrMid();
            // ...
            return usr;
        }
        
    }
}