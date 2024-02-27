using Microsoft.EntityFrameworkCore;
using SolRC.Rostering.Domain.DTO;
using SolRC.Rostering.Domain.Models;
using SolRC.Rostering.Domain.Repository;
using SolRC.Rostering.Infrastructure.Data;

namespace SolRC.Rostering.Infrastructure;

public class EmployeeRepository : IEmployeeRepository
{
    private readonly RosteringDbContext _dbContext;
    public EmployeeRepository(RosteringDbContext dbContext)
    {
        _dbContext = dbContext;
    }
    public void Add(Employee employee)
    {
        _dbContext.Add(employee);
        _dbContext.SaveChanges();
    }

    public IQueryable<Employee> GetAll()
    {
        return _dbContext.Employees
            .Include(e => e.Leaves)
            .Include(e => e.Skills).ThenInclude(s => s.Game)
            .Include(e => e.Role)
            .AsNoTracking();
    }
}