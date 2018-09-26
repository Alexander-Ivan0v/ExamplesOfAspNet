using System;
using System.Collections.Generic;

namespace Mss.Web.Api.Models
{
    public class TntOnly
    {
        private List<Link> _links;

        public long? Id { get; set; }
        public string Name { get; set; }
        public string FullName { get; set; }
        public string Comment { get; set; }
        public string AppLogin { get; set; }
        public string AppPass { get; set; }
        public string AppDomain { get; set; }
        public bool IsDel { get; set; }
        public long Cfg { get; set; }
    }
}