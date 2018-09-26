using System.Collections.Generic;

namespace Mss.Data.Entities
{
    public class ChgState : IVersionedEntity
    {
        public virtual long Id { get; set; }
        public virtual string Name { get; set; }
        public virtual ChgStateGrp ChgStateGrp { get; set; }

        public virtual byte[] Version { get; set; }
    }
}