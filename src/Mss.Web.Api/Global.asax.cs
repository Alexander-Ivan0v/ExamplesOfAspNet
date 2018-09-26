using System.Web;
using System.Web.Http;
using Mss.Common.Logging;
using Mss.Common.TypeMapping;
using Mss.Web.Api.Security;
using Mss.Web.Common;
 
namespace Mss.Web.Api
{
    public class WebApiApplication : HttpApplication
    {
        protected void Application_Start()
        {
            GlobalConfiguration.Configure(WebApiConfig.Register);
 
            RegisterHandlers();
 
            new AutoMapperConfigurator().Configure(WebContainerManager.GetAll<IAutoMapperTypeConfigurator>());
        }
 
        private void RegisterHandlers()
        {
            var logManager = WebContainerManager.Get<ILogManager>();
 
            GlobalConfiguration.Configuration.MessageHandlers.Add(
                new BasicAuthenticationMessageHandler(logManager,
                    WebContainerManager.Get<IBasicSecurityService>()));
        }
 
        protected void Application_Error()
        {
            var exception = Server.GetLastError();
            if (exception != null)
            {
                var log = WebContainerManager.Get<ILogManager>().GetLog(typeof(WebApiApplication));
                log.Error("Unhandled exception.", exception);
            }
        }
    }
}