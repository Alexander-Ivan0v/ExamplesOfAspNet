using FluentNHibernate.Mapping;
using FluentNHibernate.Mapping;
using Mss.Data.Entities;

namespace Mss.Data.SqlServer.Mapping
{
    public class SrvMap : VersionedClassMap<Srv>
    {
        public SrvMap()
        {
            Id(x => x.Id);
            Map(x => x.Name).Not.Nullable();
            Map(x => x.Comment).Nullable();
            Map(x => x.IsDisabled).Not.Nullable();
            Map(x => x.PayPerDay).Nullable();

            HasManyToMany(x => x.Cat)
                .Access.ReadOnlyPropertyThroughCamelCaseField(Prefix.Underscore)
                .Table("SrvCat")
                .ParentKeyColumn("Srv")
                .ChildKeyColumn("Cat")
                .Cascade.All();
            HasManyToMany(x => x.PostfixCfg)
                .Access.ReadOnlyPropertyThroughCamelCaseField(Prefix.Underscore)
                .Table("SrvPostfixCfg")
                .ParentKeyColumn("Srv")
                .ChildKeyColumn("PostfixCfg")
                .Cascade.All();
            HasManyToMany(x => x.ClamavCfg)
                .Access.ReadOnlyPropertyThroughCamelCaseField(Prefix.Underscore)
                .Table("SrvClamavCfg")
                .ParentKeyColumn("Srv")
                .ChildKeyColumn("ClamavCfg")
                .Cascade.All();
            HasManyToMany(x => x.SpamassasinCfg)
                .Access.ReadOnlyPropertyThroughCamelCaseField(Prefix.Underscore)
                .Table("SrvSpamassasinCfg")
                .ParentKeyColumn("Srv")
                .ChildKeyColumn("SpamassasinCfg")
                .Cascade.All();
            HasManyToMany(x => x.JabberCfg)
                .Access.ReadOnlyPropertyThroughCamelCaseField(Prefix.Underscore)
                .Table("SrvJabberCfg")
                .ParentKeyColumn("Srv")
                .ChildKeyColumn("JabberCfg")
                .Cascade.All();
        }
    }
}