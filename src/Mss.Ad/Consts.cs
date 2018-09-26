using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Mss.Ad.Consts
{
    public class LogonImpersonation
    {
        public enum LogonTypes : uint
        {
            Interactive = 2,
            Network = 3,
            Batch = 4,
            Service = 5,
            Unlock = 7,
            NetworkCleartext = 8,
            NewCredentials = 9
        }

        public enum LogonProviders : uint
        {
            Default = 0, // default for platform (use this!)
            WinNT35,     // sends smoke signals to authority
            WinNT40,     // uses NTLM
            WinNT50      // negotiates Kerb or NTLM
        }

        public const int LOGON32_LOGON_INTERACTIVE = 2;
        public const int LOGON32_PROVIDER_DEFAULT = 0;

        public const int ERROR_NO_ERROR = 0;
        public const int ERROR_PASSWORD_MUST_CHANGE = 1907;
        public const int ERROR_LOGON_FAILURE = 1326;
        public const int ERROR_ACCOUNT_RESTRICTION = 1327;
        public const int ERROR_ACCOUNT_DISABLED = 1331;
        public const int ERROR_INVALID_LOGON_HOURS = 1328;
        public const int ERROR_NO_LOGON_SERVERS = 1311;
        public const int ERROR_INVALID_WORKSTATION = 1329;
        public const int ERROR_ACCOUNT_LOCKED_OUT = 1909;      //It gives this error if the account is locked, REGARDLESS OF WHETHER VALID CREDENTIALS WERE PROVIDED!!!
        public const int ERROR_ACCOUNT_EXPIRED = 1793;
        public const int ERROR_PASSWORD_EXPIRED = 1330;
    }
}
