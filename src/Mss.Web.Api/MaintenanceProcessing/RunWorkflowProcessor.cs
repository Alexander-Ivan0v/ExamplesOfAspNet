using Mss.Common;
using Mss.Common.TypeMapping;
using Mss.Data.QueryProcessors;
using Mss.Web.Api.Models;
using Newtonsoft.Json;
using System.Net.Http;
using Mss.Web.Api.Models;
using Newtonsoft.Json.Linq;
using System.Linq;
using Mss.Common.Security;
using Mss.Ps;
using Mss.Ad;
using Mss.Web.Api.InquiryProcessing;
using System;
using System.Collections.ObjectModel;
using System.Management.Automation;
using System.Collections;
using System.Collections.Generic;

namespace Mss.Web.Api.MaintenanceProcessing
{
    public class RunWorkflowProcessor : IRunWorkflowProcessor
    {
        private readonly IUsrQueryProcessor _usrQueryProcessor;
        private readonly IAutoMapper _autoMapper;
        private readonly IUserSession _userSession;
        private readonly IScrQueryProcessor _scrQueryProcessor;
        private readonly ITskQueryProcessor _tskQueryProcessor;
        private readonly ITntQueryProcessor _tntQueryProcessor;
        private readonly IPowershell _ps;
        private readonly IUserImpersonation _impersonation;
        private readonly IChgStateGrpQueryProcessor _chgStateGrpQueryProcessor;
        private readonly IChgStateQueryProcessor _chgStateQueryProcessor;
        private readonly IChgLogQueryProcessor _chgLogQueryProcessor;
        private readonly IAddChgLogQueryProcessor _addChgLogQueryProcessor;
        private readonly IDateTime _dateTime;
        private readonly IAddRunQueryProcessor _addRunQueryProcessor;
        private readonly IAddRunDataQueryProcessor _addRunDataQueryProcessor;
        private readonly IRunDataQueryProcessor _runDataQueryProcessor;

        public RunWorkflowProcessor(IUsrQueryProcessor usrQueryProcessor, 
            IAutoMapper autoMapper, 
            IUserSession userSession, 
            IScrQueryProcessor scrQueryProcessor, 
            ITskQueryProcessor tskQueryProcessor,
            ITntQueryProcessor tntQueryProcessor,
            IPowershell ps,
            IUserImpersonation impersonation,
            IChgStateGrpQueryProcessor chgStateGrpQueryProcessor,
            IChgStateQueryProcessor chgStateQueryProcessor,
            IChgLogQueryProcessor chgLogQueryProcessor,
            IAddChgLogQueryProcessor addChgLogQueryProcessor,
            IDateTime dateTime,
            IAddRunQueryProcessor addRunQueryProcessor,
            IAddRunDataQueryProcessor addRunDataQueryProcessor,
            IRunDataQueryProcessor runDataQueryProcessor)
        {
            _usrQueryProcessor = usrQueryProcessor;
            _autoMapper = autoMapper;
            _userSession = userSession;
            _scrQueryProcessor = scrQueryProcessor;
            _tskQueryProcessor = tskQueryProcessor;
            _ps = ps;
            _impersonation = impersonation;
            _tntQueryProcessor = tntQueryProcessor;
            _chgStateGrpQueryProcessor = chgStateGrpQueryProcessor;
            _chgStateQueryProcessor = chgStateQueryProcessor;
            _chgLogQueryProcessor = chgLogQueryProcessor;
            _addChgLogQueryProcessor = addChgLogQueryProcessor;
            _dateTime = dateTime;
            _addRunQueryProcessor = addRunQueryProcessor;
            _addRunDataQueryProcessor = addRunDataQueryProcessor;
            _runDataQueryProcessor = runDataQueryProcessor;
        }
        
        public Run RunTask(long tntId, long runId, RunParams param)
        {
            string exMsg = String.Empty;
            List<Hashtable> data = new List<Hashtable>();
            Models.Run runModel = new Models.Run();
            RunResult rs = new RunResult() { result = new Hashtable() };
            // New Run Entity
            var run = new Data.Entities.Run();
            _addRunQueryProcessor.AddRun(run);
            
            // Chg: Preparation for Run
            var chgStateGrp = _chgStateGrpQueryProcessor.Get(Constants.ChgStateGrpNames.RunTask);

            rs.result.Add(Constants.RunScriptNames.RunScriptResult, Constants.PSReturnCodes.notrunned);
            rs.result.Add(Constants.RunScriptNames.RunScriptResultMessage, Constants.ChgStateNames.PrepareForRun);
            rs.result.Add(Constants.RunScriptNames.RunScriptData, null);

            // Get Tenant
            var tnt = _tntQueryProcessor.Get(tntId);
            // tenant present?
            if (tnt != null)
            {   
                // ...
            }
            return runModel;            
        }

        private JArray NewJArrayOf2Elements(string p1, object p2)
        {
            var ret = new JArray();
            ret.Add(p1);
            ret.Add(p2);
            return ret;
        }

        private object GetPSOValue(List<string> already, string name, PSMemberInfoCollection<PSPropertyInfo> pso)
        {
            try
            {
                if (pso[name] != null)
                {
                    if (already.Where(x => x == name).FirstOrDefault() == null)
                    {
                        already.Add(name);
                        return pso[name].Value;
                    }
                    else return Constants.Messages.NoneFound;
                }
                return Constants.Messages.NoneFound;
            }
            catch (Exception ex)
            {
                return Constants.Messages.NoneFound;
            }            
        }

        private void SetRunData(long runId, Models.ParWRunData x)
        {
            x.RunData = _autoMapper.Map<Models.RunDataWOPar>(_runDataQueryProcessor.Get(runId, x.Id));
        }

        
        public Run RunFlow(long tntId, long runId, RunParams param)
        {
            return null;
        }
    }
}