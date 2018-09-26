using System;
using System.Collections.Generic;

namespace Mss.Web.Api.Models
{
    public class TeamOnly
    {
        public long Id { get; set; }
        public string Name { get; set; }
        public string Comment { get; set; }
        public bool IsDel { get; set; }
        public bool IsDisabled { get; set; }
    }
}