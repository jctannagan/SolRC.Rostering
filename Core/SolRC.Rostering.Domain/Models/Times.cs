using SolRC.Rostering.Domain.Common.Enums;

namespace SolRC.Rostering.Domain.Models;

public record Times
{
    public Guid Id { get; init; }
    public ShiftEnum ShiftClass { get; init; }
    public DateTime Open { get; init; }
    public DateTime Close{ get; init; }
    public int Demand{ get; init; }
}