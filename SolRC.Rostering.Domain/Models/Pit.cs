namespace SolRC.Rostering.Domain.Models;

public record Pit
{
    public Guid Id { get; set; }
    public string Name { get; set; }
    public List<Cluster> Clusters { get; set; }
}