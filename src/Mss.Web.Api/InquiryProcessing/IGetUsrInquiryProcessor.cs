using Mss.Web.Api.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Mss.Web.Api.InquiryProcessing
{
    public interface IGetUsrInquiryProcessor
    {   
        List<UsrMid> Get();
        UsrMid Get(long userId);
        List<UsrMid> Get(string userName);
        UsrMid GetCurrent();
        List<RolMin> GetRoles(long tntId);
    }
}