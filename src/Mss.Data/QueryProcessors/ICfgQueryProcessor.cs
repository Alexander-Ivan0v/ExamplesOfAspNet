using Mss.Data.Entities;
using System.Collections.Generic;

namespace Mss.Data.QueryProcessors
{
    public interface ICfgQueryProcessor
    {
        List<Cfg> Get();
        Cfg Get(long cfgId);
    }
}
