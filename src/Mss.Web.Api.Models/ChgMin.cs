using System;
using System.Collections.Generic;

namespace Mss.Web.Api.Models
{
    public class ChgMin
    {
        public long Id { get; set; }
        public DateTime ChgDate { get; set; }
        public ChgStateMin ChgState { get; set; }
        public UsrJustName ChgBy { get; set; }
    }
}