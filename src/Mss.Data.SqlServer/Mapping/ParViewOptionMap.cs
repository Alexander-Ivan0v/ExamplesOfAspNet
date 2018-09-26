using FluentNHibernate.Mapping;
using Mss.Data.Entities;

namespace Mss.Data.SqlServer.Mapping
{
    public class ParViewOptionMap : VersionedClassMap<ParViewOption>
    {
        public ParViewOptionMap()
        {
            Id(x => x.Id);
            Map(x => x.Name).Not.Nullable();
            Map(x => x.Data).Nullable();
            Map(x => x.IsDel).Not.Nullable();
            Map(x => x.Seq).Nullable();
        }
    }
}