using System;

namespace Gdc.Common
{
    public class BusinessRuleViolationException : Exception
    {
        public BusinessRuleViolationException(string incorrectRunstate) : base(incorrectRunstate)
        {
        }
    }
}