using System;
using System.Collections.Generic;

namespace Mss.Data.Entities
{
    public class Cfg : IVersionedEntity
    {
        private readonly IList<Chg> _chg = new List<Chg>();

        public virtual long Id { get; set; }
        public virtual string DefDomain { get; set; }
        public virtual string DefLogin { get; set; }
        public virtual string DefPass { get; set; }
        public virtual bool IsDel { get; set; }
        public virtual string Ps { get; set; }

        public virtual IList<Chg> Chg
        {
            get { return _chg; }
        }

        public virtual byte[] Version { get; set; }
    }
}