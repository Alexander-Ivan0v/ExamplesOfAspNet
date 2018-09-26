using Mss.Data.Entities;
using System.Collections.Generic;

namespace Mss.Data.QueryProcessors
{
    public interface IChgQueryProcessor
    {
        List<Chg> Get();
        Chg Get(long Id);
    }
}
