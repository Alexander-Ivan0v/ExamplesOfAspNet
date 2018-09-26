using Mss.Data.Entities;

namespace Mss.Data.QueryProcessors
{
    public interface IAddChgLogQueryProcessor
    {
        void AddChgLog(ChgLog chgLog);
        void AddChgLog(string chgLog);
    }
}