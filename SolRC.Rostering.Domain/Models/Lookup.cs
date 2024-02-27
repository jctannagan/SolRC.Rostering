namespace SolRC.Rostering.Domain.Models;

public record Lookup
{
    public int Id { get; init; }
    public string Code { get; init; }
    public string Name { get; init; }
    public string Desc { get; init; }
}