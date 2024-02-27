using SolRC.Rostering.Domain.DTO;
using SolRC.Rostering.Domain.Models;

namespace SolRC.Rostering.Domain.Repository;

public interface IEmployeeRepository //: IBaseRepository<Employee>
{
    void Add(Employee employee);
    IQueryable<Employee> GetAll();
}