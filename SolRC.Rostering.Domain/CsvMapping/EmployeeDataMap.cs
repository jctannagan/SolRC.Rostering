using CsvHelper.Configuration;
using SolRC.Rostering.Domain.Models;

namespace SolRC.Rostering.Domain.CsvMapping;

public class EmployeeDataMap : ClassMap<Employee>
{
    public EmployeeDataMap()
    {
        Map(m => m.Number).Name("Employee ID");
        Map(m => m.FirstName).Name("First Name");
        Map(m => m.LastName).Name("Last Name");
        Map(m => m.Email).Name("Email address");
        Map(m => m.Status).Name("Employee Status");
        Map(m => m.ShiftStart).Name("Shift Start");
        Map(m => m.ShiftEnd).Name("Shift End");
    }
}