using System.Collections.Generic;

namespace Mss.Data.Entities
{
    public class Run : IVersionedEntity
    {
        private readonly IList<Par> _par = new List<Par>();
        private readonly IList<Chg> _chg = new List<Chg>();

        public virtual long Id { get; set; }
        public virtual Tsk Tsk { get; set; }
        public virtual Flw Flw { get; set; }

        public virtual IList<Par> Par
        {
            get { return _par; }
        }

        public virtual IList<Chg> Chg
        {
            get { return _chg; }
        }

        public virtual byte[] Version { get; set; }
    }
}