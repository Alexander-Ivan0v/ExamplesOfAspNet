using FluentNHibernate.Mapping;
using Mss.Data.Entities;

namespace Mss.Data.SqlServer.Mapping
{
    public class FlwMap : VersionedClassMap<Flw>
    {
        public FlwMap()
        {
            Id(x => x.Id);
            Map(x => x.Name).Not.Nullable();
            Map(x => x.Comment).Nullable();
            Map(x => x.PayPerRun).Nullable();
            Map(x => x.IsDel).Not.Nullable();
            Map(x => x.IsSupport).Not.Nullable();
            Map(x => x.IsDisabled).Not.Nullable();

            HasManyToMany(x => x.Tsk)
                .Access.ReadOnlyPropertyThroughCamelCaseField(Prefix.Underscore)
                .Table("FlwTsk")
                .ParentKeyColumn("Flw")
                .ChildKeyColumn("Tsk")
                .Cascade.All();
        }
    }
}