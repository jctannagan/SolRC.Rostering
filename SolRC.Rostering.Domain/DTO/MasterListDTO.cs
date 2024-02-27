using SolRC.Rostering.Domain.Models;

namespace SolRC.Rostering.Domain.DTO;

public class MasterListDTO
{
    public Guid GamingFloorId { get; set; }
    public string GamingFloorName { get; set; }
    public Guid PitId { get; set; }
    public string PitName { get; set; }
    public List<AssignmentsDTO> Assignments { get; set; }
}

public class AssignmentsDTO
{
    public Guid Id { get; set; }
    public int BatchId { get; set; }
    public DateTime ScheduleDate { get; set; }
    public Time Hours { get; set; }
    public EmployeeDTO Employee { get; set; }
    public TableDTO Table { get; set; }
    
}

public class TableDTO
{
    public Guid Id { get; set; }
    public string Name { get; set; }
    public string Code { get; set; }
    public string ClusterName { get; set; }
    public string RelieverName { get; set; }
    public List<Time> OperatingShifts { get; set; }
}