using Mss.Data.Entities;
using System.Collections.Generic;

namespace Mss.Data.QueryProcessors
{
    public interface ITntQueryProcessor
    {
        List<Tnt> Get();
        Tnt Get(long Id);
        Tnt Get(string name);
    }
}
