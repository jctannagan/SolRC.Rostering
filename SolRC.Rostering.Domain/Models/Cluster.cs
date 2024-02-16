namespace SolRC.Rostering.Domain.Models;

public record Cluster
{
    public Guid Id { get; set; }
    public string Name { get; set; }
    public Employee Reliever { get; set; }
    public List<Table> TableGames { get; set; }
}