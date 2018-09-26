using FluentNHibernate.Mapping;
using Mss.Data.Entities;

namespace Mss.Data.SqlServer.Mapping
{
    public class TskMap : VersionedClassMap<Tsk>
    {
        public TskMap()
        {
            Id(x => x.Id);
            Map(x => x.Name).Not.Nullable();
            Map(x => x.Comment).Nullable();
            Map(x => x.PayPerRun).Nullable();
            Map(x => x.IsDel).Not.Nullable();            
            Map(x => x.IsSupport).Not.Nullable();
            Map(x => x.IsDisabled).Not.Nullable();
            Map(x => x.IsRollbackDisabled).Not.Nullable();
            Map(x => x.IsLongRunning).Not.Nullable();

            References(x => x.Action, "Action");
            References(x => x.Rback, "Rback");
        }
    }
}