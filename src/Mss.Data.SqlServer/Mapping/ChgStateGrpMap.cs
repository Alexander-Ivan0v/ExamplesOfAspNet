using FluentNHibernate.Mapping;
using Mss.Data.Entities;

namespace Mss.Data.SqlServer.Mapping
{
    public class ChgStateGrpMap : VersionedClassMap<ChgStateGrp>
    {
        public ChgStateGrpMap()
        {
            Id(x => x.Id);
            Map(x => x.Name).Not.Nullable();
            Map(x => x.Comment).Nullable();
        }
    }
}