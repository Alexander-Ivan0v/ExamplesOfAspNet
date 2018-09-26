using Mss.Data.Entities;
using System.Collections.Generic;

namespace Mss.Data.QueryProcessors
{
    public interface IRunQueryProcessor
    {
        List<Run> Get();
        Run Get(long Id);
        List<Run> Get(string tskflw, long tskflwId);
    }
}
