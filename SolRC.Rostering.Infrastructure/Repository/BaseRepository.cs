using SolRC.Rostering.Domain.Repository;

namespace SolRC.Rostering.Infrastructure;

public class BaseRepository<T> : IBaseRepository<T> where T : class
{
    public BaseRepository()
    {
        
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