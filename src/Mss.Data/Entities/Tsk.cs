using System.Collections.Generic;

namespace Mss.Data.Entities
{
    public class Tsk : IVersionedEntity
    {
        private readonly IList<Lib> _lib = new List<Lib>();

        public virtual long Id { get; set; }
        public virtual string Name { get; set; }
        public virtual string Comment { get; set; }
        public virtual decimal PayPerRun { get; set; }
        public virtual bool IsDel { get; set; }
        public virtual bool IsLongRunning { get; set; }
        public virtual bool IsSupport { get; set; }
        public virtual bool IsDisabled { get; set; }
        public virtual bool IsRollbackDisabled { get; set; }
        public virtual Scr Action { get; set; }
        public virtual Scr Rback { get; set; }
        public virtual byte[] Version { get; set; }

        public virtual IList<Lib> Lib
        {
            get { return _lib; }
        }
    }
}