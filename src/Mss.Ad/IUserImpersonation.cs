using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Mss.Ad.Consts;

namespace Mss.Ad
{
    public interface IUserImpersonation
    {
        bool ImpersonateValidUser(String userName, String domain, String password);
        void UndoImpersonation();
    }
}
