using System.Collections.Generic;

namespace Mss.Data.Entities
{
    public class Team : IVersionedEntity
    {
        private readonly IList<Chg> _chg = new List<Chg>();

        public virtual long Id { get; set; }
        public virtual string Name { get; set; }
        public virtual string Comment { get; set; }
        public virtual bool IsDel { get; set; }
        public virtual bool IsDisabled { get; set; }

        public virtual IList<Chg> Chg
        {
            get { return _chg; }
        }

        public virtual byte[] Version { get; set; }
    }
}