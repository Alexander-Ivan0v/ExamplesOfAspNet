using System.Collections.Generic;

namespace Mss.Data.Entities
{
    public class Cat : IVersionedEntity
    {
        private readonly IList<Tsk> _tsk = new List<Tsk>();
        private readonly IList<Flw> _flw = new List<Flw>();

        public virtual long Id { get; set; }
        public virtual string Name { get; set; }
        public virtual string Comment { get; set; }
        public virtual string IsDel { get; set; }
        public virtual string IsDisabled { get; set; }

        public virtual IList<Tsk> Tsk
        {
            get { return _tsk; }
        }

        public virtual IList<Flw> Flw
        {
            get { return _flw; }
        }

        public virtual byte[] Version { get; set; }
    }
}