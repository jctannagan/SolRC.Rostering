namespace SolRC.Rostering.Domain.Models;

public record Assignments
{
    public Assignments()
    {
        Id = Guid.NewGuid();
    }
    public Guid Id { get; set; }
    public int BatchId { get; set; }
    public DateTime ScheduleDate { get; set; }
    public Time Hours { get; set; }
    
    public Table Table { get; set; }

    public Guid? DealerId { get; set; }
    
    public Employee? Dealer { get; set; }
    
    public Cluster Cluster { get; set; }
    
    public Guid? RelieverId { get; set; }
    
    public Employee? Reliever { get; set; }
    
    public bool IsPublished { get; set; }
    
    public DateTime PublishedDate { get; set; }
}