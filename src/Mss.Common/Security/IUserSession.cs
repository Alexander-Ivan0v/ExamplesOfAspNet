using System.Collections.Generic;

namespace Mss.Common.Security
{
    public interface IUserSession
    {
        long UserId { get; }
        string Username { get; }
        bool IsInRole(string roleName);
        List<System.Security.Claims.Claim> FindAllOfType(string claimType);
    }
}