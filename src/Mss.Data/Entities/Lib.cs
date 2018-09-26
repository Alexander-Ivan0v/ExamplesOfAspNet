using System.Collections.Generic;

namespace Mss.Data.Entities
{
    public class Lib : IVersionedEntity
    {
        public virtual long Id { get; set; }
        public virtual string Name { get; set; }
        public virtual string Data { get; set; }
        public virtual string Comment { get; set; }
        public virtual bool IsDel { get; set; }
        public virtual bool IsDisabled { get; set; }

        public virtual byte[] Version { get; set; }
    }
}