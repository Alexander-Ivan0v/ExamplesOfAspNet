using System;
using System.Collections.Generic;

namespace Mss.Web.Api.Models
{
    public class Run : ILinkContaining
    {
        private List<Link> _links;

        public long Id { get; set; }
        public Tsk Tsk { get; set; }
        public Flw Flw { get; set; }
        public List<ParWRunData> Par { get; set; }
        public List<Chg> Chg { get; set; }

        public List<Link> Links
        {
            get { return _links ?? (_links = new List<Link>()); }
            set { _links = value; }
        }

        public void AddLink(Link link)
        {
            Links.Add(link);
        }
    }
}