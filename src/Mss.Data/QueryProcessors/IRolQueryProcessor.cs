using Mss.Data.Entities;
using System.Collections.Generic;

namespace Mss.Data.QueryProcessors
{
    public interface IRolQueryProcessor
    {
        List<Rol> Get();
        Rol Get(long Id);
        List<Rol> Get(string name);
    }
}
