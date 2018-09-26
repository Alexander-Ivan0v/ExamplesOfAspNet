using System;
using System.Collections.Generic;

namespace Mss.Data.Entities
{
    public class Rol : IVersionedEntity
    {
        private readonly IList<Cat> _cat = new List<Cat>();

        public virtual long Id { get; set; }
        public virtual string Name { get; set; }
        public virtual string Comment { get; set; }
        public virtual bool IsDel { get; set; }
        public virtual Tnt Tnt { get; set; }

        public virtual IList<Cat> Cat
        {
            get { return _cat; }
        }

        public virtual byte[] Version { get; set; }
    }
}