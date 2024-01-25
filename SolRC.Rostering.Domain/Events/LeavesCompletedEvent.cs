using SolRC.Rostering.Domain.Common;
using SolRC.Rostering.Domain.Models;

namespace SolRC.Rostering.Domain.Events;

public class LeavesCompletedEvent: BaseEvent
{
    public LeavesCompletedEvent(Leaves leaves)
    {
        Leaves = leaves;
    }

    public Leaves Leaves { get; }
}