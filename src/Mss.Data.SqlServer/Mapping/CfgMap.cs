using FluentNHibernate.Mapping;
using FluentNHibernate.Mapping;
using Mss.Data.Entities;

namespace Mss.Data.SqlServer.Mapping
{
    public class CfgMap : VersionedClassMap<Cfg>
    {
        public CfgMap()
        {
            Id(x => x.Id);
            Map(x => x.IsDel).Not.Nullable();
            Map(x => x.DefLogin).Nullable();
            Map(x => x.DefPass).Nullable();
            Map(x => x.DefDomain).Nullable();
            Map(x => x.Ps).Nullable();

            HasManyToMany(x => x.Chg)
                .Access.ReadOnlyPropertyThroughCamelCaseField(Prefix.Underscore)
                .Table("CfgChg")
                .ParentKeyColumn("Cfg")
                .ChildKeyColumn("Chg")
                .Cascade.All();
        }
    }
}