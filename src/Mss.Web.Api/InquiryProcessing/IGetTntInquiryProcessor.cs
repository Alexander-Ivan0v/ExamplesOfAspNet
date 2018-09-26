using Mss.Web.Api.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Mss.Web.Api.InquiryProcessing
{
    public interface IGetTntInquiryProcessor
    {
        List<Tnt> Get();
        Tnt Get(long tntId);
        Tnt Get(string tntName);
        string GetPs(long tntId);
        Flw GetFlw(long tntId, long srvId, long catId, long flwId);
        bool IsFlwPresentInTnt(long tntId, long flwId);
        Tsk GetTsk(long tntId, long srvId, long catId, long tskId);
        bool IsTskPresentInTnt(long tntId, long tskId);
        Run GetRun(string tskflwName, long tnt, long srv, long cat, long tskflw, long run);
        List<RunMin> GetRun(string tskflwName, long tnt, long srv, long cat, long tskflw);
    }
}