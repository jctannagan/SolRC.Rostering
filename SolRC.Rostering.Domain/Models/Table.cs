using SolRC.Rostering.Domain.Common.Enums;

namespace SolRC.Rostering.Domain.Models;

public record Table
{
    public Guid Id { get; init; }
    public string Name { get; init; }
    public string Code { get; init; }
    public Lookup Game { get; init; }
    public Pit Location { get; init; }
    public int RequiredProficiency { get; init; }
    public List<Time> OperatingShifts { get; init; }
}