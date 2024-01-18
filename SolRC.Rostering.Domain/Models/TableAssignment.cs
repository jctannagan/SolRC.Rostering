namespace SolRC.Rostering.Domain.Models;

public record TableAssignment
{
    public Guid Id { get; init; }
    public int BatchId { get; init; }
    public DateTime Schedule { get; init; }
    public Table Table { get; init; }
    public Employee Employee { get; init; }
    public DateTime PublishedDate { get; init; }
}