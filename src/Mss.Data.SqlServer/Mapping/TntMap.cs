using FluentNHibernate.Mapping;
using FluentNHibernate.Mapping;
using Mss.Data.Entities;

namespace Mss.Data.SqlServer.Mapping
{
    public class TntMap : VersionedClassMap<Tnt>
    {
        public TntMap()
        {
            Id(x => x.Id);
            Map(x => x.Name).Not.Nullable();
            Map(x => x.Comment).Nullable();
            Map(x => x.IsDel).Not.Nullable();
            Map(x => x.AppLogin).Nullable();
            Map(x => x.AppPass).Nullable();
            Map(x => x.AppDomain).Nullable();
            Map(x => x.FullName).Nullable();

            References(x => x.Cfg, "Cfg");

            HasManyToMany(x => x.Chg)
                .Access.ReadOnlyPropertyThroughCamelCaseField(Prefix.Underscore)
                .Table("TntChg")
                .ParentKeyColumn("Tnt")
                .ChildKeyColumn("Chg")
                .Cascade.All();
            HasManyToMany(x => x.Srv)
                .Access.ReadOnlyPropertyThroughCamelCaseField(Prefix.Underscore)
                .Table("TntSrv")
                .ParentKeyColumn("Tnt")
                .ChildKeyColumn("Srv")
                .Cascade.All();
        }
    }
}