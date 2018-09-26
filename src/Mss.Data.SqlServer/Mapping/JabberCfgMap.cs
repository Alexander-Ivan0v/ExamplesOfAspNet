using FluentNHibernate.Mapping;
using Mss.Data.Entities;

namespace Mss.Data.SqlServer.Mapping
{
    public class JabberCfgMap : VersionedClassMap<JabberCfg>
    {
        public JabberCfgMap()
        {
            Id(x => x.Id);
            Map(x => x.Protocol).Not.Nullable();

            HasManyToMany(x => x.Cat)
                .Access.ReadOnlyPropertyThroughCamelCaseField(Prefix.Underscore)
                .Table("JabberCfgCat")
                .ParentKeyColumn("JabberCfg")
                .ChildKeyColumn("Cat")
                .Cascade.All();
        }
    }
}