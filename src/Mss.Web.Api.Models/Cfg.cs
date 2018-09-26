﻿using System;
using System.Collections.Generic;

namespace Mss.Web.Api.Models
{
    public class Cfg : ILinkContaining
    {
        private List<Link> _links;

        public long Id { get; set; }        
        public string DefLogin { get; set; }
        public string DefPass { get; set; }
        public string DefDomain { get; set; }        
        public bool IsDel { get; set; }
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