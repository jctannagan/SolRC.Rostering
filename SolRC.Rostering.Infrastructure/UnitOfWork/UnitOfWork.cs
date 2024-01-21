using SolRC.Rostering.Domain.Contracts;
using SolRC.Rostering.Domain.Repository;
using SolRC.Rostering.Infrastructure.Data;

namespace SolRC.Rostering.Infrastructure.UnitOfWork;

public class UnitOfWork : IUnitOfWork
{
    public IEmployeeRepository EmployeeRepository { get; }

    private readonly RosteringDbContext _context;
    
    public UnitOfWork(RosteringDbContext context)
    {
        _context = context;
    }
    
    public Task<int> CompleteAsync()
    {
        throw new NotImplementedException();
    }
    
    public void Dispose()
    {
        throw new NotImplementedException();
    }
}