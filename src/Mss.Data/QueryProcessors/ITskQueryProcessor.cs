using Mss.Data.Entities;
using System.Collections.Generic;

namespace Mss.Data.QueryProcessors
{
    public interface ITskQueryProcessor
    {
        List<Tsk> Get();
        Tsk Get(long tskId);
        Tsk Get(string tskName);
    }
}
