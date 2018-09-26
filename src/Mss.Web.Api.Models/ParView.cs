using System;
using System.Collections.Generic;

namespace Mss.Web.Api.Models
{
    public class ParView : ILinkContaining
    {
        private List<Link> _links;
        
        public long Id { get; set; }
        public string Name { get; set; }
        public bool IsDel { get; set; }
        public List<ParViewOption> ParViewOption { get; set; }

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