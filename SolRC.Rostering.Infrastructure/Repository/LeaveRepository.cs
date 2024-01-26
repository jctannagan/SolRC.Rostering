using SolRC.Rostering.Domain.Models;
using SolRC.Rostering.Domain.Repository;

namespace SolRC.Rostering.Infrastructure;

public class LeaveRepository : ILeaveRepository
{
    
    public LeaveRepository()
    {
        
    }
    
    public void Add(Leave leave)
    {
        throw new NotImplementedException();
    }

    public void AddRange(List<Leave> leaves)
    {
        throw new NotImplementedException();
    }
}