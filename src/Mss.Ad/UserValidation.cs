using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Runtime.InteropServices;
using System.Security.Principal;
using System.DirectoryServices;
using System.DirectoryServices.AccountManagement;
using System.Configuration;
using Mss.Ad.Consts;

namespace Mss.Ad
{
    public class UserValidation : IUserValidation
    {
        [DllImport("advapi32.dll", SetLastError = true)]
        static extern bool LogonUser(string principal, string authority, string password, LogonImpersonation.LogonTypes logonType, LogonImpersonation.LogonProviders logonProvider, out IntPtr token);

        [DllImport("kernel32.dll", CharSet = CharSet.Auto, SetLastError = true)]
        public static extern bool CloseHandle(IntPtr handle);



        public int CheckUserLogon(string username, 
                string password, 
                string domain_fqdn = "", 
                string impLogin = "", 
                string impPassword = "",
                string impDomain = "",
                LogonImpersonation.LogonTypes logonType = LogonImpersonation.LogonTypes.Network)
        {
            int errorCode = LogonImpersonation.ERROR_NO_ERROR;
            if(impLogin == String.Empty) {impLogin = ConfigurationManager.AppSettings["ImpersonationLogin"];}
            if (impPassword == String.Empty) { impPassword = ConfigurationManager.AppSettings["ImpersonationPassword"]; }
            if(impDomain == String.Empty) {impDomain = ConfigurationManager.AppSettings["ImpersonationDomain"];}

            if (String.IsNullOrEmpty(impLogin) || String.IsNullOrEmpty(impPassword) || String.IsNullOrEmpty(impDomain)) { throw (new Exception("One or more impersonation requisites are empty. Check application settings.")); }

            using (PrincipalContext pc = new PrincipalContext(ContextType.Domain, impDomain, impLogin, impPassword))
            {
                //if (!pc.ValidateCredentials(impLogin, impPassword))
                //{
                IntPtr token = new IntPtr();
                try
                {
                    if (!LogonUser(username, domain_fqdn, password, logonType, LogonImpersonation.LogonProviders.Default, out token))
                    {
                        errorCode = Marshal.GetLastWin32Error();
                    }
                }
                catch (Exception)
                {
                    throw;
                }
                finally
                {
                    CloseHandle(token);
                }
                //}
            }
            return errorCode;
        }

        public bool IsValid(string username, string password, string domain)
        {
            using (PrincipalContext pc = new PrincipalContext(ContextType.Domain, domain))
            {
                return pc.ValidateCredentials(username, password);
            }
        }
    }
}
