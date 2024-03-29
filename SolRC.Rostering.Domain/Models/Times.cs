﻿using SolRC.Rostering.Domain.Common.Enums;

namespace SolRC.Rostering.Domain.Models;

public record Time
{
    public Guid Id { get; init; }
    
    public int? ShiftClassId { get; init; }
    public Lookup ShiftClass { get; init; }
    public DateTime Open { get; init; }
    public DateTime Close{ get; init; }
    
    public int Demand{ get; init; }
    
    public Guid TableId { get; set; }
    public Table Table { get; set; }
}