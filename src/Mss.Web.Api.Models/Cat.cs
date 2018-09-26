using System;
using System.Collections.Generic;

namespace Mss.Web.Api.Models
{
    public class Cat : ILinkContaining
    {
        private List<Link> _links;

        public long Id { get; set; }
        public string Name { get; set; }
        public string Comment { get; set; }
        public string IsDel { get; set; }
        public string IsDisabled { get; set; }
        public List<Tsk> Tsk { get; set; }
        public List<Flw> Flw { get; set; }

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