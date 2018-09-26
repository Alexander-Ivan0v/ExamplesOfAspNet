using FluentNHibernate.Mapping;
using Mss.Data.Entities;

namespace Mss.Data.SqlServer.Mapping
{
    public class PostfixCfgMap : VersionedClassMap<PostfixCfg>
    {
        public PostfixCfgMap()
        {
            Id(x => x.Id);
            Map(x => x.Domain).Not.Nullable();

            HasManyToMany(x => x.Cat)
                .Access.ReadOnlyPropertyThroughCamelCaseField(Prefix.Underscore)
                .Table("PostfixCfgCat")
                .ParentKeyColumn("PostfixCfg")
                .ChildKeyColumn("Cat")
                .Cascade.All();
        }
    }
}