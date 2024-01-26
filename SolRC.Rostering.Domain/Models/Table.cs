using SolRC.Rostering.Domain.Common.Enums;

namespace SolRC.Rostering.Domain.Models;

public record Table
{
    public Guid Id { get; init; }
    public string Name { get; init; }
    public string Code { get; init; }
    public GameEnum Game { get; init; }
    public string Location { get; init; }
    public int MinRequiredProficiency { get; init; }
    public int MaxRequiredProficiency { get; init; }
    public List<Time> OperatingShifts { get; init; }
}