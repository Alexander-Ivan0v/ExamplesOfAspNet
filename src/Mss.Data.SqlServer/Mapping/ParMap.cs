using FluentNHibernate.Mapping;
using Mss.Data.Entities;

namespace Mss.Data.SqlServer.Mapping
{
    public class ParMap : VersionedClassMap<Par>
    {
        public ParMap()
        {
            Id(x => x.Id);
            Map(x => x.Name).Not.Nullable();            
            Map(x => x.IsDel).Not.Nullable();
            Map(x => x.IsInput).Not.Nullable();
            Map(x => x.IsRequired).Not.Nullable();            
            Map(x => x.Comment).Nullable();
            Map(x => x.Seq).Nullable();

            References(x => x.ParType, "ParType");
            References(x => x.ParView, "ParView");
            References(x => x.ParSpecial, "ParSpecial");
            References(x => x.TskSupport, "TskSupport");
            References(x => x.FlwSupport, "FlwSupport");
        }
    }
}