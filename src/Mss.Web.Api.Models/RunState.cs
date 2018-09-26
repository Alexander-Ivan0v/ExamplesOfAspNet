﻿using System;
using System.Collections;
using System.Collections.Generic;

namespace Mss.Web.Api.Models
{
    public class RunState : ILinkContaining
    {
        private List<Link> _links;

        public long runId;

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
