using SolRC.Rostering.Domain.Common;
using SolRC.Rostering.Domain.Models;

namespace SolRC.Rostering.Domain.Events;

public class EmployeeCompletedEvent : BaseEvent
{
    public EmployeeCompletedEvent(Employee employee)
    {
        Employee = employee;
    }

    public Employee Employee { get; }
}