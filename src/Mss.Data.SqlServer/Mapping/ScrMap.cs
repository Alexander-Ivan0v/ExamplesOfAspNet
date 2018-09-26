using FluentNHibernate.Mapping;
using FluentNHibernate.Mapping;
using Mss.Data.Entities;

namespace Mss.Data.SqlServer.Mapping
{
    public class ScrMap : VersionedClassMap<Scr>
    {
        public ScrMap()
        {
            Id(x => x.Id);
            Map(x => x.Name).Not.Nullable();            
            Map(x => x.IsDel).Not.Nullable();
            Map(x => x.IsDisabled).Not.Nullable();
            Map(x => x.Comment).Nullable();
            Map(x => x.Data).Nullable();

            HasManyToMany(x => x.Lib)
                .Access.ReadOnlyPropertyThroughCamelCaseField(Prefix.Underscore)
                .Table("ScrLib")
                .ParentKeyColumn("Scr")
                .ChildKeyColumn("Lib")
                .Cascade.All();
            HasManyToMany(x => x.Par)
                .Access.ReadOnlyPropertyThroughCamelCaseField(Prefix.Underscore)
                .Table("ScrPar")
                .ParentKeyColumn("Scr")
                .ChildKeyColumn("Par")
                .Cascade.All();
        }
    }
}