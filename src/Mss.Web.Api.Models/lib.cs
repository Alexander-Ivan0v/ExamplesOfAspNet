﻿using System;
using System.Collections.Generic;

namespace Mss.Web.Api.Models
{
    public class Lib : ILinkContaining
    {
        private List<Link> _links;

        public long Id { get; set; }
        public string Data { get; set; }
        public string Name { get; set; }
        public string Comment { get; set; }
        public bool IsDel { get; set; }
        public bool IsDisabled { get; set; }

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