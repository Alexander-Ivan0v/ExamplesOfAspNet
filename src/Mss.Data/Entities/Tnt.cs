using System;
using System.Collections.Generic;

namespace Mss.Data.Entities
{
    public class Tnt : IVersionedEntity
    {
        private readonly IList<Chg> _chg = new List<Chg>();
        private readonly IList<Srv> _srv = new List<Srv>();

        public virtual long Id { get; set; }
        public virtual string Name { get; set; }
        public virtual string FullName { get; set; }
        public virtual string Comment { get; set; }
        public virtual string AppLogin { get; set; }
        public virtual string AppPass { get; set; }
        public virtual string AppDomain { get; set; }
        public virtual bool IsDel { get; set; }
        public virtual Cfg Cfg { get; set; }

        public virtual IList<Chg> Chg
        {
            get { return _chg; }
        }

        public virtual IList<Srv> Srv
        {
            get { return _srv; }
        }

        public virtual byte[] Version { get; set; }
    }
}