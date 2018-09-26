using Mss.Data.Entities;

namespace Mss.Data.QueryProcessors
{
    public interface IAddChgQueryProcessor
    {
        void AddChg(Chg chg);
        void AddChg(string chgStateGrpName, string chgStateName, string chgLog = null);
    }
}