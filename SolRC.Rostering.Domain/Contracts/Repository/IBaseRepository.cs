namespace SolRC.Rostering.Domain.Repository;

public interface IBaseRepository<T> where T : class
{
    Task<T> GetByIdAsync(Guid id);
    Task<IReadOnlyList<T>> GetAllAsync();
    Task<T> AddAsync();
    Task DeleteAsync(Guid id);
    Task UpdateAsync(Guid id);
}