using FluentNHibernate.Mapping;
using Mss.Data.Entities;

namespace Mss.Data.SqlServer.Mapping
{
    public class SpamassasinCfgMap : VersionedClassMap<SpamassasinCfg>
    {
        public SpamassasinCfgMap()
        {
            Id(x => x.Id);
            Map(x => x.Algorythm).Not.Nullable();

            HasManyToMany(x => x.Cat)
                .Access.ReadOnlyPropertyThroughCamelCaseField(Prefix.Underscore)
                .Table("PostfixCfgCat")
                .ParentKeyColumn("PostfixCfg")
                .ChildKeyColumn("Cat")
                .Cascade.All();
        }
    }
}