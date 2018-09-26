using System;

namespace Mss.Common
{
    public interface IDateTime
    {
        DateTime UtcNow { get; }
    }
}