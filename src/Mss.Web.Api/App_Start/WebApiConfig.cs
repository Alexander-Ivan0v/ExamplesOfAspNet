using System.Web.Http;
using System.Web.Http.Dispatcher;
using System.Web.Http.Routing;
using Mss.Web.Common;
using Mss.Web.Common.Routing;
using System.Web.Http.Tracing;
using Mss.Common.Logging;
using Mss.Web.Common.ErrorHandling;
using System.Web.Http.ExceptionHandling;

namespace Mss.Web.Api
{
    public static class WebApiConfig
    {
        public static void Register(HttpConfiguration config)
        {
            var constraintsResolver = new DefaultInlineConstraintResolver();
            // ...
        }
    }
}