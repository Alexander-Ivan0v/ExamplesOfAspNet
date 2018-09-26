using FluentNHibernate.Mapping;
using FluentNHibernate.Mapping;
using Mss.Data.Entities;

namespace Mss.Data.SqlServer.Mapping
{
    public class TeamMap : VersionedClassMap<Team>
    {
        public TeamMap()
        {
            Id(x => x.Id);
            Map(x => x.Name).Not.Nullable();
            Map(x => x.Comment).Nullable();
            Map(x => x.IsDel).Not.Nullable();
            Map(x => x.IsDisabled).Not.Nullable();

            HasManyToMany(x => x.Chg)
                .Access.ReadOnlyPropertyThroughCamelCaseField(Prefix.Underscore)
                .Table("TeamChg")
                .ParentKeyColumn("Team")
                .ChildKeyColumn("Chg")
                .Cascade.All();

        }
    }
}