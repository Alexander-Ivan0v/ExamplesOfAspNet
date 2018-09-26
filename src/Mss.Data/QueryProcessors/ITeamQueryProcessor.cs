using Mss.Data.Entities;
using System.Collections.Generic;

namespace Mss.Data.QueryProcessors
{
    public interface ITeamQueryProcessor
    {
        List<Team> Get();
        Team Get(long teamId);
        Team Get(string teamName);
    }
}
