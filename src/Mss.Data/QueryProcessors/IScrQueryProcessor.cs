using Mss.Data.Entities;
using System.Collections.Generic;

namespace Mss.Data.QueryProcessors
{
    public interface IScrQueryProcessor
    {
        List<Scr> Get();
        Scr Get(long scrId);
        Scr Get(string scrName);
    }
}
