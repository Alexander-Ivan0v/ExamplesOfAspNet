using System;
using System.Collections.Generic;

namespace Mss.Web.Api.Models
{
    public class TntWOChg : ILinkContaining
    {
        private List<Link> _links;

        public long Id { get; set; }
        public string Name { get; set; }
        public string FullName { get; set; }
        public string Comment { get; set; }
        public string AppLogin { get; set; }
        public string AppPass { get; set; }
        public string AppDomain { get; set; }
        public bool IsDel { get; set; }
        public CfgWOChg Cfg { get; set; }
        public List<Srv> Srv { get; set; }

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