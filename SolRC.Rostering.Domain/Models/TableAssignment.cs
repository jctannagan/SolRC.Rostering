namespace SolRC.Rostering.Domain.Models;

public record TableAssignment
{
    public TableAssignment()
    {
        Id = Guid.NewGuid();
    }
    public Guid Id { get; set; }
    public int BatchId { get; set; }
    public DateTime ScheduleDate { get; set; }
    public Table Table { get; set; }
    public Time Hours { get; set; }
    public Employee Employee { get; set; }
    public bool IsPublished { get; set; }
    public DateTime PublishedDate { get; set; }
}