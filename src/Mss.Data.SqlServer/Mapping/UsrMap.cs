using FluentNHibernate.Mapping;
using Mss.Data.Entities;

namespace Mss.Data.SqlServer.Mapping
{
    public class UsrMap : VersionedClassMap<Usr>
    {
        public UsrMap()
        {
            Id(x => x.Id);
            Map(x => x.Name).Not.Nullable();
            Map(x => x.Pass).Nullable();
            Map(x => x.UDomain).Nullable();
            Map(x => x.ULogin).Not.Nullable();
            Map(x => x.UEmail).Not.Nullable();
            Map(x => x.Theme).Nullable();
            Map(x => x.IsLocal).Not.Nullable();
            Map(x => x.IsDel).Not.Nullable();
            Map(x => x.IsDisabled).Not.Nullable();

            HasManyToMany(x => x.Chg)
                .Access.ReadOnlyPropertyThroughCamelCaseField(Prefix.Underscore)
                .Table("UsrChg")
                .ParentKeyColumn("Usr")
                .ChildKeyColumn("Chg")
                .Cascade.All();
            HasManyToMany(x => x.Rol)
                .Access.ReadOnlyPropertyThroughCamelCaseField(Prefix.Underscore)
                .Table("UsrRol")
                .ParentKeyColumn("Usr")
                .ChildKeyColumn("Rol")
                .Cascade.All();
            HasManyToMany(x => x.Team)
                .Access.ReadOnlyPropertyThroughCamelCaseField(Prefix.Underscore)
                .Table("UsrTeam")
                .ParentKeyColumn("Usr")
                .ChildKeyColumn("Team")
                .Cascade.All();

        }
    }
}