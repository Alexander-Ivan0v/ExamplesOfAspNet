using System;
using System.Collections.Generic;

namespace Mss.Web.Api.Models
{
    public class RunMin : ILinkContaining
    {
        private List<Link> _links;

        public long Id { get; set; }
        public TskMin Tsk { get; set; }
        public FlwMin Flw { get; set; }
        public List<ChgMin> Chg { get; set; }

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