using Mss.Web.Api.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Mss.Web.Api.InquiryProcessing
{
    public interface IGetCfgInquiryProcessor
    {
        List<Cfg> Get();
        Cfg Get(long cfgId);
    }
}