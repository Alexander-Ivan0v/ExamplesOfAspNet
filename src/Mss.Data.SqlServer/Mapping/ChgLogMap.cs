using FluentNHibernate.Mapping;
using Mss.Data.Entities;

namespace Mss.Data.SqlServer.Mapping
{
    public class ChgLogMap : VersionedClassMap<ChgLog>
    {
        public ChgLogMap()
        {
            Id(x => x.Id);
            Map(x => x.Comment).Not.Nullable();
        }
    }
}