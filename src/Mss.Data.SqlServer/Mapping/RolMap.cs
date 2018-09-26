using FluentNHibernate.Mapping;
using Mss.Data.Entities;

namespace Mss.Data.SqlServer.Mapping
{
    public class RolMap : VersionedClassMap<Rol>
    {
        public RolMap()
        {
            Id(x => x.Id);
            Map(x => x.Name).Not.Nullable();
            Map(x => x.IsDel).Not.Nullable();
            Map(x => x.Comment).Nullable();

            References(x => x.Tnt, "Tnt");

            HasManyToMany(x => x.Cat)
                .Access.ReadOnlyPropertyThroughCamelCaseField(Prefix.Underscore)
                .Table("RolCat")
                .ParentKeyColumn("Rol")
                .ChildKeyColumn("Cat")
                .Cascade.All();
        }
    }
}