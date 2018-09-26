using System;
using System.Collections.Generic;

namespace Mss.Data.Entities
{
    public class Chg : IVersionedEntity
    {
        public virtual long Id { get; set; }
        public virtual ChgState ChgState { get; set; }
        public virtual DateTime ChgDate { get; set; }
        public virtual ChgLog ChgLog { get; set; }
        public virtual Usr ChgBy { get; set; }        

        public virtual byte[] Version { get; set; }
    }
}