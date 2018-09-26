using Mss.Web.Api.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Mss.Web.Api.InquiryProcessing
{
    public interface IGetTeamInquiryProcessor
    {
        List<TeamWOChg> Get();
        TeamWOChg Get(long teamId);
        TeamWOChg Get(string teamName);
    }
}