﻿namespace Mss.Data.Entities
{
    public interface IVersionedEntity
    {
        byte[] Version { get; set; }
    }
}