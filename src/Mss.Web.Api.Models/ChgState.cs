﻿using System;
using System.Collections.Generic;

namespace Mss.Web.Api.Models
{
    public class ChgState
    {
        public long Id { get; set; }
        public string Name { get; set; }
        public ChgStateGrp ChgStateGrp { get; set; }
    }
}