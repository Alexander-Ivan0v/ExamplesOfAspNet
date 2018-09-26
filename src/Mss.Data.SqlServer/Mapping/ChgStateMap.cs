using FluentNHibernate.Mapping;
using Mss.Data.Entities;

namespace Mss.Data.SqlServer.Mapping
{
    public class ChgStateMap : VersionedClassMap<ChgState>
    {
        public ChgStateMap()
        {
            Id(x => x.Id);
            Map(x => x.Name).Not.Nullable();

            References(x => x.ChgStateGrp, "ChgStateGrp");
        }
    }
}