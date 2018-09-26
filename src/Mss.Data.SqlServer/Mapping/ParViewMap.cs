using FluentNHibernate.Mapping;
using Mss.Data.Entities;

namespace Mss.Data.SqlServer.Mapping
{
    public class ParViewMap : VersionedClassMap<ParView>
    {
        public ParViewMap()
        {
            Id(x => x.Id);
            Map(x => x.Name).Not.Nullable();
            Map(x => x.IsDel).Not.Nullable();

            HasManyToMany(x => x.ParViewOption)
                .Access.ReadOnlyPropertyThroughCamelCaseField(Prefix.Underscore)
                .Table("ParViewParViewOption")
                .ParentKeyColumn("ParView")
                .ChildKeyColumn("ParViewOption")
                .Cascade.All();
        }
    }
}