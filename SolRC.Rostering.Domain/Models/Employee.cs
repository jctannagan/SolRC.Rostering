using SolRC.Rostering.Domain.Common.Enums;

namespace SolRC.Rostering.Domain.Models;

public record Employee
{
    public Guid Id { get; init; }
    public string Code { get; init; }
    public string FirstName { get; init; }
    public string LastName { get; init; }
    // public Shift Shift { get; init; }
    public DateTime ShiftStart { get; init; }
    public DateTime ShiftEnd { get; init; }
    public List<Skill> Skills { get; init; }
    public RoleEnum Role { get; set; }
}