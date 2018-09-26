using FluentNHibernate.Mapping;
using Mss.Data.Entities;

namespace Mss.Data.SqlServer.Mapping
{
    public class ParSpecialMap : VersionedClassMap<ParSpecial>
    {
        public ParSpecialMap()
        {
            Id(x => x.Id);
            Map(x => x.Name).Not.Nullable();
            Map(x => x.Data).Not.Nullable();
            Map(x => x.Comment).Nullable();
            Map(x => x.IsDel).Not.Nullable();
        }
    }
}