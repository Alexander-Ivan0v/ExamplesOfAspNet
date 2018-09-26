using System.Collections.Generic;

namespace Mss.Data.Entities
{
    public class ParView : IVersionedEntity
    {
        private readonly IList<ParViewOption> _parViewOption = new List<ParViewOption>();

        public virtual long Id { get; set; }
        public virtual string Name { get; set; }
        public virtual string IsDel { get; set; }

        public virtual IList<ParViewOption> ParViewOption
        {
            get { return _parViewOption; }
        }

        public virtual byte[] Version { get; set; }
    }
}