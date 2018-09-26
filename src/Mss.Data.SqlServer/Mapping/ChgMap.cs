using FluentNHibernate.Mapping;
using Mss.Data.Entities;

namespace Mss.Data.SqlServer.Mapping
{
    public class ChgMap : VersionedClassMap<Chg>
    {
        public ChgMap()
        {
            Id(x => x.Id);
            Map(x => x.ChgDate).Not.Nullable();

            References(x => x.ChgState, "ChgState");
            References(x => x.ChgBy, "ChgBy");
            References(x => x.ChgLog, "ChgLog");
        }
    }
}