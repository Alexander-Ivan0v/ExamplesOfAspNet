using Mss.Data.Entities;

namespace Mss.Data.QueryProcessors
{
    public interface IAddChgStateGrpQueryProcessor
    {
        void AddChgStateGrp(ChgStateGrp chgStateGrp);
        void AddChgStateGrp(string chgStateGrpName, string chgStateGrpComment = null);
    }
}