using System.Collections.Generic;

namespace Mss.Data.Entities
{
    public class JabberCfg : IVersionedEntity
    {
        private readonly IList<Cat> _cat = new List<Cat>();

        public virtual long Id { get; set; }
        public virtual string Protocol { get; set; }

        public virtual IList<Cat> Cat
        {
            get { return _cat; }
        }

        public virtual byte[] Version { get; set; }
    }
}