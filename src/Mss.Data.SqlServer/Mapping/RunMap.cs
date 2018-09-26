using FluentNHibernate.Mapping;
using Mss.Data.Entities;

namespace Mss.Data.SqlServer.Mapping
{
    public class RunMap : VersionedClassMap<Run>
    {
        public RunMap()
        {
            Id(x => x.Id); 
            
            References(x => x.Tsk, "Tsk");
            References(x => x.Flw, "Flw");

            HasManyToMany(x => x.Par)
                .Access.ReadOnlyPropertyThroughCamelCaseField(Prefix.Underscore)
                .Table("RunPar")
                .ParentKeyColumn("Run")
                .ChildKeyColumn("Par")
                .Cascade.All();
            HasManyToMany(x => x.Chg)
                .Access.ReadOnlyPropertyThroughCamelCaseField(Prefix.Underscore)
                .Table("RunChg")
                .ParentKeyColumn("Run")
                .ChildKeyColumn("Chg")
                .Cascade.All();
        }
    }
}