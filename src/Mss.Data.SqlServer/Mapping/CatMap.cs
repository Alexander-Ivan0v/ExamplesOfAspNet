using FluentNHibernate.Mapping;
using Mss.Data.Entities;

namespace Mss.Data.SqlServer.Mapping
{
    public class CatMap : VersionedClassMap<Cat>
    {
        public CatMap()
        {
            Id(x => x.Id);
            Map(x => x.Name).Not.Nullable();
            Map(x => x.Comment).Nullable();
            Map(x => x.IsDel).Not.Nullable();
            Map(x => x.IsDisabled).Not.Nullable();

            HasManyToMany(x => x.Tsk)
                .Access.ReadOnlyPropertyThroughCamelCaseField(Prefix.Underscore)
                .Table("CatTsk")
                .ParentKeyColumn("Cat")
                .ChildKeyColumn("Tsk")
                .Cascade.All();
            HasManyToMany(x => x.Flw)
                .Access.ReadOnlyPropertyThroughCamelCaseField(Prefix.Underscore)
                .Table("CatFlw")
                .ParentKeyColumn("Cat")
                .ChildKeyColumn("Flw")
                .Cascade.All();
        }
    }
}