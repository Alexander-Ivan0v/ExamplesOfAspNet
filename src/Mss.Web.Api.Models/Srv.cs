using System;
using System.Collections.Generic;

namespace Mss.Web.Api.Models
{
    public class Srv : ILinkContaining, ICatContaining
    {
        private List<Link> _links;

        public long Id { get; set; }
        public string Name { get; set; }
        public string Comment { get; set; }
        public bool IsDisabled { get; set; }
        public decimal PayPerDay { get; set; }
        public List<Cat> Cat{ get; set; }
        public List<PostfixCfg> PostfixCfg { get; set; }
        public List<ClamavCfg> ClamavCfg { get; set; }
        public List<SpamassasinCfg> SpamassasinCfg { get; set; }
        public List<JabberCfg> JabberCfg { get; set; }

        public List<Cat> GetCat()
        {
            return Cat;
        }

        public void SetCat(List<Cat> cat) 
        {
            Cat = cat;
        }

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