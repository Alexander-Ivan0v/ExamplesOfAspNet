using System;
using System.Collections.Generic;

namespace Mss.Web.Api.Models
{
    public class Chg
    {
        public long Id { get; set; }
        public DateTime ChgDate { get; set; }
        public ChgState ChgState { get; set; }
        public ChgLog ChgLog { get; set; }
        public Usr ChgBy { get; set; }
    }
}