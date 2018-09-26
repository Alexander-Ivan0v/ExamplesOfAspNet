using FluentNHibernate.Mapping;
using Mss.Data.Entities;

namespace Mss.Data.SqlServer.Mapping
{
    public class ClamavCfgMap : VersionedClassMap<ClamavCfg>
    {
        public ClamavCfgMap()
        {
            Id(x => x.Id);
            Map(x => x.Quarantine).Not.Nullable();

            HasManyToMany(x => x.Cat)
                .Access.ReadOnlyPropertyThroughCamelCaseField(Prefix.Underscore)
                .Table("ClamavCfgCat")
                .ParentKeyColumn("ClamavCfg")
                .ChildKeyColumn("Cat")
                .Cascade.All();
        }
    }
}