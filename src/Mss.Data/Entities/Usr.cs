using System;
using System.Collections.Generic;

namespace Mss.Data.Entities
{
    public class Usr : IVersionedEntity
    {
        private readonly IList<Rol> _rol = new List<Rol>();
        private readonly IList<Chg> _chg = new List<Chg>();
        private readonly IList<Team> _team = new List<Team>();

        public virtual long Id { get; set; }
        public virtual string Name { get; set; }
        public virtual string Pass { get; set; }
        public virtual string ULogin { get; set; }
        public virtual string UDomain { get; set; }
        public virtual string UEmail { get; set; }
        public virtual string Theme { get; set; }
        public virtual bool IsLocal { get; set; }
        public virtual bool IsDel { get; set; }
        public virtual bool IsDisabled { get; set; }

        public virtual IList<Rol> Rol
        {
            get { return _rol; }
        }

        public virtual IList<Chg> Chg
        {
            get { return _chg; }
        }

        public virtual IList<Team> Team
        {
            get { return _team; }
        }

        public virtual byte[] Version { get; set; }
    }
}