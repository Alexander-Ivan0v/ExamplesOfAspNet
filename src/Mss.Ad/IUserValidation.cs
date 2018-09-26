using Mss.Ad.Consts;

namespace Mss.Ad
{
    public interface IUserValidation
    {
        int CheckUserLogon(string username, 
                string password, 
                string domain_fqdn = "", 
                string impLogin = "", 
                string impPassword = "",
                string impDomain = "",
                LogonImpersonation.LogonTypes logonType = LogonImpersonation.LogonTypes.Network);
        bool IsValid(string username, string password, string domain);
    }
}
