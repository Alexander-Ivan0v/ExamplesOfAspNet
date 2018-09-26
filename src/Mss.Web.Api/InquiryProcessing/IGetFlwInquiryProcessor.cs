using Mss.Web.Api.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Mss.Web.Api.InquiryProcessing
{
    public interface IGetFlwInquiryProcessor
    {
        List<Flw> Get();
        Flw Get(long tntId, long flwId);
        Flw Get(string tntName, long flwName);
    }
}