using SolRC.Rostering.Domain.Common.Enums;

namespace SolRC.Rostering.Domain.Models;

public record Table
{
    public Guid Id { get; init; }
    public string Name { get; init; }
    public string Code { get; init; }
    public GameEnum Game { get; init; }
    public string Location { get; init; }
    // public GameProficiency RequiredProficiency { get; init; }
    public int Min { get; init; }
    public int Max { get; init; }
    public List<Times> OperatingShift { get; init; }
}