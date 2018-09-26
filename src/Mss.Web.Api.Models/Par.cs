using System;
using System.Collections.Generic;

namespace Mss.Web.Api.Models
{
    public class Par : ILinkContaining
    {
        private List<Link> _links;

        public long Id { get; set; }
        public string Name { get; set; }
        public bool IsDel { get; set; }
        public bool IsInput { get; set; }
        public bool IsRequired { get; set; }
        public ParType ParType { get; set; }
        public ParView ParView { get; set; }
        public ParSpecial ParSpecial { get; set; }
        public string Comment { get; set; }
        public Tsk TskSupport { get; set; }
        public Flw FlwSupport { get; set; }
        public int Seq { get; set; }

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