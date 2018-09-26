using FluentNHibernate.Mapping;
using Mss.Data.Entities;

namespace Mss.Data.SqlServer.Mapping
{
    public class ParTypeMap : VersionedClassMap<ParType>
    {
        public ParTypeMap()
        {
            Id(x => x.Id);
            Map(x => x.Name).Not.Nullable();
            Map(x => x.IsDel).Not.Nullable();
        }
    }
}