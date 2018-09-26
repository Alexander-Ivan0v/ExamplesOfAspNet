using System;
using System.Net;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Web;
using log4net;
using Mss.Common;
using Mss.Common.Logging;
using Mss.Web.Api.Security;
using System.Collections.Generic;
using System.Linq;

namespace Mss.Web.Api.Security
{
    public class BasicAuthenticationMessageHandler : DelegatingHandler
    {
        public const char AuthorizationHeaderSeparator = ':';
        private const int UsernameIndex = 0;
        private const int PasswordIndex = 1;
        private const int ExpectedCredentialCount = 2;

        private readonly ILog _log;
        private readonly IBasicSecurityService _basicSecurityService;

        public BasicAuthenticationMessageHandler(ILogManager logManager, IBasicSecurityService basicSecurityService)
        {
            _basicSecurityService = basicSecurityService;
            _log = logManager.GetLog(typeof(BasicAuthenticationMessageHandler));
        }

        protected override async Task<HttpResponseMessage> SendAsync(HttpRequestMessage request, CancellationToken cancellationToken)
        {
            if (HttpContext.Current.User.Identity.IsAuthenticated)
            {
                _log.Debug("Already authenticated; passing on to next handler...");
                return await base.SendAsync(request, cancellationToken);
            }

            if (!CanHandleAuthentication(request))
            {
                _log.Debug("Not a basic auth request; passing on to next handler...");
                return await base.SendAsync(request, cancellationToken);
            }

            bool isAuthenticated;
            try
            {
                isAuthenticated = Authenticate(request);
            }
            catch (Exception e)
            {
                _log.Error("Failure in auth processing", e);
                return CreateUnauthorizedResponse();
            }

            if (isAuthenticated)
            {
                var response = await base.SendAsync(request, cancellationToken);
                return response.StatusCode == HttpStatusCode.Unauthorized ? CreateUnauthorizedResponse() : response;
            }

            return CreateUnauthorizedResponse();
        }

        public bool CanHandleAuthentication(HttpRequestMessage request)
        {
            return (request.Headers != null
                    && request.Headers.Authorization != null
                    && request.Headers.Authorization.Scheme.ToLowerInvariant() ==
                            Constants.SchemeTypes.Basic);
        }

        public bool Authenticate(HttpRequestMessage request)
        {
            long tntId = 0;

            _log.Debug("Attempting to authenticate...");
            var authHeader = request.Headers.Authorization;
            if (authHeader == null)
            {
                return false;
            }

            var credentialParts = GetCredentialParts(authHeader);
            if (credentialParts.Length != ExpectedCredentialCount)
            {
                return false;
            }

            // --- finding TenantID in route ---            
            if (request.RequestUri.Segments.Length >= 5)
            {
                if (request.RequestUri.Segments[3].ToLower() == Constants.SpecialSegments.Tnt + "/")
                {
                    // Tenant found. Determining Rights
                    if (long.TryParse(request.RequestUri.Segments[4], out tntId))
                    {

                    }
                    
                }
                if (request.RequestUri.Segments[3].ToLower() == Constants.SpecialSegments.Common + "/")
                {
                    tntId = -1; // Special number for use [/api/v1/common...] section. In this case rights will be just a [Member]
                }
            }
            // ------------------------------
            return _basicSecurityService.SetPrincipal(credentialParts[UsernameIndex], credentialParts[PasswordIndex], _basicSecurityService.SetTenantIdToMainTenantIdIfIts0(tntId));
        }

        public string[] GetCredentialParts(AuthenticationHeaderValue authHeader)
        {
            var encodedCredentials = authHeader.Parameter;
            var credentialBytes = Convert.FromBase64String(encodedCredentials);
            var credentials = Encoding.ASCII.GetString(credentialBytes);
            var credentialParts = credentials.Split(AuthorizationHeaderSeparator);
            return credentialParts;
        }

        public HttpResponseMessage CreateUnauthorizedResponse()
        {
            var response = new HttpResponseMessage(HttpStatusCode.Unauthorized);
            response.Headers.WwwAuthenticate.Add(
                new AuthenticationHeaderValue(Constants.SchemeTypes.Basic));
            return response;
        }
    }
}