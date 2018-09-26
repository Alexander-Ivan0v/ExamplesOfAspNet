using System.Collections.Generic;

namespace Mss.Data.Entities
{
    public class ParSpecial : IVersionedEntity
    {
        public virtual long Id { get; set; }
        public virtual string Name { get; set; }
        public virtual string Data { get; set; }
        public virtual string IsDel { get; set; }
        public virtual string Comment { get; set; }

        public virtual byte[] Version { get; set; }
    }
}