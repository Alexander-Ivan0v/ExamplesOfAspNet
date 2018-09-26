using System;
using System.Collections.Generic;

namespace Mss.Web.Api.Models
{
    public class PostfixCfg : ICatContaining
    {
        public long Id { get; set; }
        public string Domain { get; set; }
        public List<Cat> Cat { get; set; }

        public List<Cat> GetCat()
        {
            return Cat;
        }

        public void SetCat(List<Cat> cat)
        {
            Cat = cat;
        }
    }
}