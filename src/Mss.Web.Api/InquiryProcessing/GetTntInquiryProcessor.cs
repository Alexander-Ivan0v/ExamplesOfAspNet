using Mss.Common.Security;
using Mss.Data.QueryProcessors;
//using Mss.Web.Api.LinkServices;
using Mss.Web.Api.Models;
using NHibernate;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Mss.Common;
using System.Security.Claims;
using Mss.Common.TypeMapping;
using Mss.Data.Exceptions;

namespace Mss.Web.Api.InquiryProcessing
{
    public class GetTntInquiryProcessor : IGetTntInquiryProcessor
    {
        private readonly ITntQueryProcessor _queryProcessor;
        private readonly IUsrQueryProcessor _usrQueryProcessor;
        private readonly IAutoMapper _autoMapper;
        private readonly IUserSession _userSession;
        private readonly IRunDataQueryProcessor _runDataQueryProcessor;
        private readonly IRunQueryProcessor _runQueryProcessor;

        public GetTntInquiryProcessor(ITntQueryProcessor queryProcessor, 
            IAutoMapper autoMapper, 
            IUserSession userSession, 
            IUsrQueryProcessor usrQueryProcessor,
            IRunDataQueryProcessor runDataQueryProcessor,
            IRunQueryProcessor runQueryProcessor)
        {
            _queryProcessor = queryProcessor;
            _autoMapper = autoMapper;
            _userSession = userSession;
            _usrQueryProcessor = usrQueryProcessor;
            _runDataQueryProcessor = runDataQueryProcessor;
            _runQueryProcessor = runQueryProcessor;
        }

        public List<Tnt> Get()
        {
            var entities = _queryProcessor.Get();
            List<Tnt> ju = new List<Tnt>();

            if (entities != null)
            {
                entities.ForEach(x => ju.Add(_autoMapper.Map<Tnt>(x)));
                return ju;
            }
            return null;
        }

        // ---------------- Service functions start --------------------
        private Tnt CutCategoriesAccordingToTheRights(Tnt tnt)
        {
            var u = _usrQueryProcessor.Get(_userSession.UserId);
            if (u != null)
            {
                // ...
                return tnt;
            }
            return null;
        }
        
        private void AjustSrvCfg(List<Cat> usrCat, ICatContaining cc)
        {
            var qqq = (ICatContaining)RetJustCrossed(usrCat, cc);
            if (qqq != null)
                cc.SetCat(qqq.GetCat());            
            else 
                cc.SetCat(null);
        }

        private object RetJustCrossed(List<Cat> usrCat, ICatContaining cc)
        {
            var listCat = cc.GetCat().Distinct().Where(x => x.Id == Anal(usrCat, x)).ToList();
            if (listCat != null)
            {
                if (listCat.Count > 0)
                { 
                    cc.SetCat(listCat);
                    return (object)cc;
                }
                else return null;
            }
            return null;
        }        

        private long Anal(List<Cat> usrCat, Cat tntCat)
        {
            var cat = usrCat.Where(y => y.Id == tntCat.Id).FirstOrDefault();
            if (cat != null)
                return cat.Id;
            else
                return 0;
        }
        // ---------------- Service functions end   --------------------
                
        public Tnt Get(long tntId)
        {
            var entity = _queryProcessor.Get(tntId);
            if (entity != null)
            {
                return CutCategoriesAccordingToTheRights(_autoMapper.Map<Tnt>(entity));
            }

            return null;
        }

        public string GetPs(long tntId)
        {
            var tnt = Get(tntId);
            if (tnt != null)
            {
                return _queryProcessor.Get(tntId).Cfg.Ps;
            }
            return null;
        }

        public Tnt Get(string tntName)
        {
            var entity = _queryProcessor.Get(tntName);
            if (entity != null)
            {
                return CutCategoriesAccordingToTheRights(_autoMapper.Map<Tnt>(entity));
            }
            return null;
        }

        public Flw GetFlw(long tntId, long srvId, long catId, long flwId)
        {
            var entity = _queryProcessor.Get(tntId);
            if (entity != null)
            {
                Tnt tnt = CutCategoriesAccordingToTheRights(_autoMapper.Map<Tnt>(entity));
                if (tnt != null)
                {
                    var qqq = tnt.Srv.Where(p => p.Id == srvId).SelectMany(x => x.Cat).Where(o => o.Id == catId).SelectMany(y => y.Flw).Where(z => z.Id == flwId).FirstOrDefault();
                    return qqq;
                    /*
                    var www = tnt.Srv.Select(x => x.Cat.Select(y => y.Flw.Where(z => z.Id == flwId).ToList()).ToList()).ToList().FirstOrDefault();
                    var zzz = tnt.Srv.Where(x => x.Id == srvId).ToList().Select(y => y.Cat.Where(z => z.Id == catId).ToList().Select(o => o.Flw.Where(p => p.Id == flwId).ToList()).ToList()).ToList().FirstOrDefault();
                    if(zzz != null)
                        return zzz[0][0];
                    return null;
                    */
                }
            }
            return null;
        }

        public Tsk GetTsk(long tntId, long srvId, long catId, long tskId)
        {
            var entity = _queryProcessor.Get(tntId);
            if (entity != null)
            {
                Tnt tnt = CutCategoriesAccordingToTheRights(_autoMapper.Map<Tnt>(entity));
                if (tnt != null)
                {
                    // ...
                }
            }
            return null;
        }

        public bool IsFlwPresentInTnt(long tntId, long flwId)
        {
            var entity = _queryProcessor.Get(tntId);
            if (entity != null)
            {
                // ...
            }
            return false;
        }

        public bool IsTskPresentInTnt(long tntId, long tskId)
        {
            var entity = _queryProcessor.Get(tntId);
            if (entity != null)
            {
                // ...
            }
            return false;
        }

        private object AddIfEq(bool p)
        {
            throw new NotImplementedException();
        }

        public Run GetRun(string tskflwName, long tnt, long srv, long cat, long tskflw, long run)
        {
            var t = GetTsk(tnt, srv, cat, tskflw);
            if(t != null) {
                // ...
                return runModel;
            }
            return null;
        }

        private void SetRunData(long runId, Models.ParWRunData x)
        {
            x.RunData = _autoMapper.Map<Models.RunDataWOPar>(_runDataQueryProcessor.Get(runId, x.Id));
        }

        public List<RunMin> GetRun(string tskflwName, long tnt, long srv, long cat, long tskflw)
        {
            var t = GetTsk(tnt, srv, cat, tskflw);
            if (t != null)
            {
                // ...
            }
            return null;
        }

    }
}