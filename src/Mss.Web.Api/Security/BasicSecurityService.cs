using System.Security.Claims;
using System.Security.Principal;
using System.Threading;
using System.Web;
using log4net;
using NHibernate;
using Mss.Common;
using Mss.Common.Logging;
using Mss.Data.Entities;
using Mss.Web.Common;
using Mss.Ad;
using Mss.Ad.Consts;
using System.Linq;
using System.Collections.Generic;

namespace Mss.Web.Api.Security
{
    public class BasicSecurityService : IBasicSecurityService
    {
        private readonly ILog _log;
        private readonly IUserValidation _userValidation;

        public BasicSecurityService(ILogManager logManager, IUserValidation userValidation)
        {
            _log = logManager.GetLog(typeof(BasicSecurityService));
            _userValidation = userValidation;
        }

        public virtual ISession Session
        {
            get { return WebContainerManager.Get<ISession>(); }
        }

        public bool SetPrincipal(string username, string password, long tntId = 0)
        {
            var user = GetUser(username, password, tntId);

            IPrincipal principal = null;
            if (user == null || (principal = GetPrincipal(user, tntId)) == null)
            {
                _log.DebugFormat("System could not validate user [{0}]", username);
                return false;
            }

            Thread.CurrentPrincipal = principal;
            if (HttpContext.Current != null)
            {
                HttpContext.Current.User = principal;
            }

            return true;
        }

        public virtual IPrincipal GetPrincipal(Usr user, long tntId)
        {
            // TODO: Make any projects available            
            var identity = new GenericIdentity(user.ULogin, Constants.SchemeTypes.Basic);

            List<Rol> rols = null;
            if (tntId != -1)
            {
                rols = user.Rol.Where(x => x.Tnt.Id == tntId).ToList();
            }
            else
            {
                identity.AddClaim(new Claim(ClaimTypes.Role, Constants.RoleNames.Member));
            }

            if (rols != null && rols.Count > 0)
            {
                rols.ForEach(x => identity.AddClaim(new Claim(ClaimTypes.Role, x.Name)));
            }

            if (identity.Claims != null)
            {
                identity.AddClaim(new Claim(ClaimTypes.SerialNumber, user.Id.ToString()));
                return new ClaimsPrincipal(identity);
            }
            else return null;
        }

        public long SetTenantIdToMainTenantIdIfIts0(long tntId)
        {
            // If TenantId == 0, set TenentId to Id of "MSSMain" Tenant - it's mean Main config with roles started with "MSS..."
            if (tntId == 0)
            {
                var tnt = Session.QueryOver<Tnt>().Where(x => x.Name == Constants.MainTenant.Name).SingleOrDefault();
                if (tnt != null) { return tnt.Id; }
            }
            return tntId;
        }
        
        public virtual Usr GetUser(string username, string password, long tntId)
        {
            Usr user = null;
            string[] all = username.Split(new char[] { '\\' });
            string login = "", domain = "", impLogin = "", impDomain = "", impPassword = "";

            if (all.Length > 1) { login = all[1]; domain = all[0]; } else { login = all[0]; }
            
            user = Session.QueryOver<Usr>().Where(x => (x.UDomain == domain && x.ULogin == login)).SingleOrDefault();

            if (user != null)
            {
                List<Rol> rols = null;
                
                if (tntId != -1)
                {
                    rols = user.Rol.Where(x => x.Tnt.Id == tntId).ToList();
                }
                else
                {
                    // In case of using [/api/v1/common...]. 
                    rols = user.Rol.Where(x => x.Tnt.Name == Constants.MainTenant.Name).ToList();                    
                }
                

                if (rols != null && rols.Count > 0)
                {
                    impLogin = rols[0].Tnt.Cfg.DefLogin; impPassword = rols[0].Tnt.Cfg.DefPass; impDomain = rols[0].Tnt.Cfg.DefDomain;

                    if ((_userValidation.CheckUserLogon(login, password, domain, impLogin, impPassword, impDomain)) == 0)
                    {
                        return user;
                    }
                }
            }            
            return null;
        }

    }
}