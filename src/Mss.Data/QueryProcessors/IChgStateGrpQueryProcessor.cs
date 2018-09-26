using Mss.Data.Entities;
using System.Collections.Generic;

namespace Mss.Data.QueryProcessors
{
    public interface IChgStateGrpQueryProcessor
    {
        List<ChgStateGrp> Get();
        ChgStateGrp Get(long Id);
        ChgStateGrp Get(string name);
    }
}
