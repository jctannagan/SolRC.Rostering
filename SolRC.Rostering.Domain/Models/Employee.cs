using SolRC.Rostering.Domain.Common.Enums;

namespace SolRC.Rostering.Domain.Models;

public record Employee
{
    public Employee()
    {
        Id = Guid.NewGuid();
        Leaves = new List<Leave>();
    }
    public Guid Id { get; init; }
    public int EmployeeNumber { get; init; }
    public string FirstName { get; init; }
    public string LastName { get; init; }
    public string Email { get; init; }
    public Lookup Status { get; init; }
    public DateTime ShiftStart { get; init; }
    public DateTime ShiftEnd { get; init; }
    public List<Skill> Skills { get; set; }
    public int? RoleId { get; set; }
    public Lookup Role { get; init; }
    public List<Leave> Leaves { get; set; }
}