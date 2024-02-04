using Microsoft.Extensions.DependencyInjection;
using SolRC.Rostering.Domain.Models;

namespace SolRC.Rostering.Domain.Contracts.Services;

public interface IEmployeeService
{
    void Add(Employee employee);
    void AddBulk(List<Employee> employee);
    List<Employee> ReadEmployeesCsv(Stream stream);
    List<Leave> ReadEmployeeLeavesCsv(Stream fs);
    List<Employee> ReadEmployees(string path);
    List<Leave> ReadEmployeeLeaves(string path);
    List<Employee> GetAll();
}