using System.Collections.Generic;

namespace Mss.Data.Entities
{
    public class RunData : IVersionedEntity
    {
        private readonly IList<Chg> _chg = new List<Chg>();

        public virtual long Id { get; set; }
        public virtual Run Run { get; set; }
        public virtual Par Par { get; set; }        
        public virtual string Data { get; set; }

        public virtual IList<Chg> Chg
        {
            get { return _chg; }
        }

        public virtual byte[] Version { get; set; }
    }
}