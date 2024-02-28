using SolRC.Rostering.Domain.Models;

namespace SolRC.Rostering.Domain.DTO;

public class AssignmentsDTO
{
    public Guid Id { get; set; }
    public int BatchId { get; set; }
    public DateTime ScheduleDate { get; set; }
    public Time Hours { get; set; }
    public EmployeeDTO Dealer { get; set; }
    public TableDTO Table { get; set; }
    
}