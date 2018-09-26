using System;
using System.Collections.Generic;

namespace Mss.Web.Api.Models
{
    public class UsrMid : ILinkContaining
    {
        private List<Link> _links;

        public long Id { get; set; }
        public string Name { get; set; }
        public string UDomain { get; set; }
        public string ULogin { get; set; }
        public string UEmail { get; set; }
        public string Theme { get; set; }
        public bool IsLocal { get; set; }
        public bool IsDel { get; set; }
        public bool IsDisabled { get; set; }
        public List<Rol> Rol { get; set; }
        public List<Team> Team { get; set; }

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