namespace SolRC.Rostering.Domain.Models;

public record Shift
{
    public DateTime Start { get; init; }
    public DateTime End { get; init; }
}