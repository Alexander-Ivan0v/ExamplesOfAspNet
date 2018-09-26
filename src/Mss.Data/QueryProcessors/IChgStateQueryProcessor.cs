using Mss.Data.Entities;
using System.Collections.Generic;

namespace Mss.Data.QueryProcessors
{
    public interface IChgStateQueryProcessor
    {
        List<ChgState> Get();
        ChgState Get(long Id);
        List<ChgState> Get(string name);
        ChgState Get(string grpName, string chgName);
    }
}
