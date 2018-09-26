using Mss.Data.Entities;
using System.Collections.Generic;

namespace Mss.Data.QueryProcessors
{
    public interface IParQueryProcessor
    {
        List<Par> Get();
        Par Get(long Id);
    }
}
