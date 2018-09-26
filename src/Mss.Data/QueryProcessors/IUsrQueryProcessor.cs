using Mss.Data.Entities;
using System.Collections.Generic;

namespace Mss.Data.QueryProcessors
{
    public interface IUsrQueryProcessor
    {
        List<Usr> Get();
        Usr Get(long userId);
        List<Usr> Get(string userName);
    }
}
