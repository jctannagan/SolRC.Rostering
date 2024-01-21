using SolRC.Rostering.Domain.Repository;

namespace SolRC.Rostering.Domain.Contracts;

public interface IUnitOfWork : IDisposable
{
    IEmployeeRepository EmployeeRepository { get; }

    Task<int> CompleteAsync();
}