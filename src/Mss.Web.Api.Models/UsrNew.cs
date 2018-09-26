using System;
using System.Collections.Generic;

namespace Mss.Web.Api.Models
{
    public class UsrNew
    {
        public long Id { get; set; }
        public string Name { get; set; }
        public string Pass { get; set; }
        public string UDomain { get; set; }
        public string ULogin { get; set; }
        public string UEmail { get; set; }
        public string Theme { get; set; }
        public bool IsLocal { get; set; }
        public bool IsDel { get; set; }
        public bool IsDisabled { get; set; }
        public List<long> Rol { get; set; }
        public List<long> Team { get; set; }
    }
}