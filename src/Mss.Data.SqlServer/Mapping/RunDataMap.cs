using FluentNHibernate.Mapping;
using Mss.Data.Entities;

namespace Mss.Data.SqlServer.Mapping
{
    public class RunDataMap : VersionedClassMap<RunData>
    {
        public RunDataMap()
        {
            Id(x => x.Id);
            Map(x => x.Data).Nullable();

            References(x => x.Run, "Run");
            References(x => x.Par, "Par");            

            HasManyToMany(x => x.Chg)
                .Access.ReadOnlyPropertyThroughCamelCaseField(Prefix.Underscore)
                .Table("RunDataChg")
                .ParentKeyColumn("RunData")
                .ChildKeyColumn("Chg")
                .Cascade.All();

        }
    }
}