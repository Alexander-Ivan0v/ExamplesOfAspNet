using Mss.Data.Entities;
using System.Collections.Generic;

namespace Mss.Data.QueryProcessors
{
    public interface IChgLogQueryProcessor
    {
        List<ChgLog> Get();
        ChgLog Get(long Id);
        List<ChgLog> Get(string comment);
        ChgLog GetLast(string comment);
    }
}
