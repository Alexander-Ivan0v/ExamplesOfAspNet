namespace Mss.Web.Api.Security
{
    public interface IBasicSecurityService
    {
        bool SetPrincipal(string username, string password, long tntId = 0);
        long SetTenantIdToMainTenantIdIfIts0(long tntId);
    }
}