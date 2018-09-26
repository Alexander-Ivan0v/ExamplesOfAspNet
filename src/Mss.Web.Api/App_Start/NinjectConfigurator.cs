using log4net.Config;
using Ninject;
using Mss.Common;
using Mss.Common.Logging;
using FluentNHibernate.Cfg;
using FluentNHibernate.Cfg.Db;
using NHibernate;
using NHibernate.Context;
using Ninject.Activation;
using Ninject.Web.Common;
using Mss.Data.SqlServer.Mapping;
using Mss.Web.Common;
using Mss.Web.Common.Security;
using Mss.Common.Security;
using Mss.Common.TypeMapping;
using Mss.Web.Api.AutoMappingConfiguration;
using Mss.Data.QueryProcessors;
using Mss.Data.SqlServer.QueryProcessors;
using Mss.Web.Api.MaintenanceProcessing;
using Mss.Web.Api.InquiryProcessing;
using Mss.Web.Api.Security;
using Mss.Ad;
using Mss.Ps;

namespace Mss.Web.Api
{
    public class NinjectConfigurator
    {
        public void Configure(IKernel container)
        {
            AddBindings(container);
        }

        private void AddBindings(IKernel container)
        {
            // ...

            // -------------- Impersonation, Validation & Security start --------------
            // ...
            container.Bind<IBasicSecurityService>().To<BasicSecurityService>().InSingletonScope();
            // -------------- Impersonation, Validation & Security end   --------------

            // ---------------- Powershell -------------------
            container.Bind<IPowershell>().To<Powershell>().InRequestScope();
            // -----------------------------------------------

            // ------------ DateTime ----------------------
            container.Bind<IDateTime>().To<DateTimeAdapter>().InSingletonScope();
            // --------------------------------------------

            // ============================== Internal loginc start =============================
            // --- Query processing ---
            // ...
            // --- Add query processing ---
            // ...
            container.Bind<IAddRunQueryProcessor>().To<AddRunQueryProcessor>().InRequestScope();
            container.Bind<IAddRunDataQueryProcessor>().To<AddRunDataQueryProcessor>().InRequestScope();
            // ============================== Internal loginc end   =============================

            // ============================== Business loginc start =============================
            // ...
            // ============================== Business loginc end   =============================
        }

        private void ConfigureLog4net(IKernel container)
        {
            XmlConfigurator.Configure();

            var logManager = new LogManagerAdapter();
            container.Bind<ILogManager>().ToConstant(logManager);
        }

        private void ConfigureNHibernate(IKernel container)
        {
            var sessionFactory = Fluently.Configure()
                .Database(MsSqlConfiguration.MsSql2012.ConnectionString(c => c.FromConnectionStringWithKey("MssDb")))
                .CurrentSessionContext("web")
                .Mappings(m => m.FluentMappings.AddFromAssemblyOf<ChgMap>())
                .BuildSessionFactory();

            // ...
        }

        private ISession CreateSession(IContext context)
        {
            var sessionFactory = context.Kernel.Get<ISessionFactory>();
            if (!CurrentSessionContext.HasBind(sessionFactory))
            {
                var session = sessionFactory.OpenSession();
                CurrentSessionContext.Bind(session);
            }

            return sessionFactory.GetCurrentSession();
        }

        private void ConfigureUserSession(IKernel container)
        {
            var userSession = new UserSession();
            container.Bind<IUserSession>().ToConstant(userSession).InSingletonScope();
            container.Bind<IWebUserSession>().ToConstant(userSession).InSingletonScope();
        }

        private void ConfigureAutoMapper(IKernel container)
        {
            container.Bind<IAutoMapper>().To<AutoMapperAdapter>().InSingletonScope();

            // --- Mappings ---
            // ...
        }
    }
}