using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace Mss.Web.Api.Controllers
{
    public class UserController : ApiController
    {
        [Route("api/user/{id:int}")]
        public string Get(int id)
        {
            return "In the Get(int id) overload, id = " + id;
        }

        [Route("api/user/{usernum:alpha}")]
        public string Get(string userNum)
        {
            return "In the Get(string userNum) overload, userNum = " + userNum;
        }
    }
}
