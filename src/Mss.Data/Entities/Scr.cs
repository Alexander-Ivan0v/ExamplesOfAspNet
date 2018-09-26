using System.Collections.Generic;

namespace Mss.Data.Entities
{
    public class Scr : IVersionedEntity
    {
        private readonly IList<Lib> _lib = new List<Lib>();
        private readonly IList<Par> _par = new List<Par>();

        public virtual long Id { get; set; }
        public virtual string Name { get; set; }
        public virtual string Data { get; set; }
        public virtual string Comment { get; set; }
        public virtual bool IsDel { get; set; }
        public virtual bool IsDisabled { get; set; }

        public virtual IList<Lib> Lib
        {
            get { return _lib; }
        }

        public virtual IList<Par> Par
        {
            get { return _par; }
        }

        public virtual byte[] Version { get; set; }
    }
}