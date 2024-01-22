namespace SolRC.Rostering.Domain.Models;

public class Leaves
{
    public Leaves()
    {
        Id = Guid.NewGuid();
    }
    
    public Guid Id { get; init; }
    public int EmployeeNumber { get; init; }
    public DateTime Date { get; init; }
    public bool IsAvailable { get; init; }
    
    public Employee Employee { get; set; }
}