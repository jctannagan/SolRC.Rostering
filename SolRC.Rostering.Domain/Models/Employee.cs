using SolRC.Rostering.Domain.Common.Enums;

namespace SolRC.Rostering.Domain.Models;

public record Employee
{
    public Employee()
    {
        Id = Guid.NewGuid();
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
    public RoleEnum Role { get; set; }
    public List<Leave> Leaves { get; set; }
}