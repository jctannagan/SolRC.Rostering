using SolRC.Rostering.Domain.Repository;
using SolRC.Rostering.Infrastructure.Data;

namespace SolRC.Rostering.Infrastructure;

public class BaseRepository<T> : IBaseRepository<T> where T : class
{
    private readonly RosteringDbContext _dbContext;
    
    public BaseRepository(RosteringDbContext dbContext)
    {
        _dbContext = dbContext;
    }
    
    public Task<T> GetByIdAsync(Guid id)
    {
        throw new NotImplementedException();
    }

    public Task<IReadOnlyList<T>> GetAllAsync()
    {
        throw new NotImplementedException();
    }

    public Task<T> AddAsync()
    {
        throw new NotImplementedException();
    }

    public Task DeleteAsync(Guid id)
    {
        throw new NotImplementedException();
    }

    public Task UpdateAsync(Guid id)
    {
        throw new NotImplementedException();
    }
}