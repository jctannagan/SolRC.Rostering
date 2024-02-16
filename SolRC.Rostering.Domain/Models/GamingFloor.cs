namespace SolRC.Rostering.Domain.Models;

public record GamingFloor
{
    public Guid Id { get; init; }
    public string Name { get; init; }
    public string Code { get; init; }
    public string Details { get; init; }
    public List<Pit> Pits { get; init; }
}