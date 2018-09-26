using Mss.Data.Entities;
using System.Collections.Generic;

namespace Mss.Data.QueryProcessors
{
    public interface IRunDataQueryProcessor
    {
        List<RunData> Get();
        RunData Get(long runDataId);
        List<RunData> GetByRun(long runId);
        List<RunData> GetByPar(long parId);
        RunData Get(long runId, long parId);
    }
}
