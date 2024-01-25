using SolRC.Rostering.Domain.Common;
using SolRC.Rostering.Domain.Common.Enums;
using SolRC.Rostering.Domain.Events;

namespace SolRC.Rostering.Domain.Models;

public class Employee : BaseAuditableEntity
{
    public Employee()
    {
        Id = Guid.NewGuid();
    }
    public Guid Id { get; init; }
    public int Number { get; init; }
    public string FirstName { get; init; }
    public string LastName { get; init; }
    public string Email { get; init; }
    public EmploymentStatus Status { get; init; }
    public DateTime ShiftStart { get; init; }
    public DateTime ShiftEnd { get; init; }
    public List<Skill> Skills { get; init; }
    public RoleEnum Role { get; set; }
    public List<Leaves> Leaves { get; set; }

    private bool _done;

    public bool Done
    {
        get => _done;
        set
        {
            if (value && !_done)
            {
                AddDomainEvent(new EmployeeCompletedEvent(this));
            }
        }
    }
}