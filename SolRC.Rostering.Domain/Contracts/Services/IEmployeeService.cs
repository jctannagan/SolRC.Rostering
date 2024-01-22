using Microsoft.Extensions.DependencyInjection;
using SolRC.Rostering.Domain.Models;

namespace SolRC.Rostering.Domain.Contracts.Services;

public interface IEmployeeService
{
    void Add(Employee employee);
    List<Employee> ReadEmployees(string path);
    List<Leaves> ReadEmployeeLeaves(string path);
}