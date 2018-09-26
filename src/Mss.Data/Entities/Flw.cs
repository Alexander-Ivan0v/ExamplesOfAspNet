using System.Collections.Generic;

namespace Mss.Data.Entities
{
    public class Flw : IVersionedEntity
    {
        private readonly IList<Tsk> _tsk = new List<Tsk>();

        public virtual long Id { get; set; }
        public virtual string Name { get; set; }
        public virtual string Comment { get; set; }
        public virtual decimal PayPerRun { get; set; }
        public virtual bool IsDel { get; set; }
        public virtual bool IsSupport { get; set; }
        public virtual bool IsDisabled { get; set; }        

        public virtual IList<Tsk> Tsk
        {
            get { return _tsk; }
        }

        public virtual byte[] Version { get; set; }
    }
}