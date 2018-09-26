using Mss.Data.Entities;

namespace Mss.Data.QueryProcessors
{
    public interface IAddChgStateQueryProcessor
    {
        void AddChgState(ChgState chgState);
        void AddChgState(string chgStateName, string chgStateGrpName);
    }
}