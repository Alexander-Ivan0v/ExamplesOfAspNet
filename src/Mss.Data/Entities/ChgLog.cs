using System;
using System.Collections.Generic;

namespace Mss.Data.Entities
{
    public class ChgLog : IVersionedEntity
    {
        public virtual long Id { get; set; }
        public virtual string Comment { get; set; }

        public virtual byte[] Version { get; set; }
    }
}