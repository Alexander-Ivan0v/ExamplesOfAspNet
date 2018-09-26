using System.Collections.Generic;

namespace Mss.Data.Entities
{
    public class Par : IVersionedEntity
    {
        public virtual long Id { get; set; }
        public virtual string Name { get; set; }
        public virtual string Comment { get; set; }
        public virtual bool IsDel { get; set; }
        public virtual bool IsInput { get; set; }
        public virtual bool IsRequired { get; set; }
        public virtual ParType ParType { get; set; }
        public virtual ParView ParView { get; set; }
        public virtual ParSpecial ParSpecial { get; set; }
        public virtual Tsk TskSupport { get; set; }
        public virtual Flw FlwSupport { get; set; }
        public virtual int Seq { get; set; }

        public virtual byte[] Version { get; set; }
    }
}