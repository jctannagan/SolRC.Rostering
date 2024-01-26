using System.Globalization;
using CsvHelper;
using CsvHelper.Configuration;
using SolRC.Rostering.Domain.Contracts.Services;
using SolRC.Rostering.Domain.CsvMapping;
using SolRC.Rostering.Domain.Models;
using SolRC.Rostering.Domain.Repository;

namespace SolRC.Rostering.Domain.Services;

public class EmployeeService : IEmployeeService
{
    private readonly IEmployeeRepository _employeeRepository;
    
    public EmployeeService(IEmployeeRepository employeeRepository)
    {
        _employeeRepository = employeeRepository ?? throw new ArgumentNullException();
    }

    public void Add(Employee employee)
    {
        _employeeRepository.Add(employee);
    }
    
    public void AddBulk(List<Employee> employees)
    {
        foreach (var employee in employees)
        {
            _employeeRepository.Add(employee);
        }
    }
    
    public List<Employee> ReadEmployees(string csvPath)
    {
        List<Employee> employees = new();
        
        using (var reader = new StreamReader(csvPath))
        using (var csv = new CsvReader(reader, CultureInfo.InvariantCulture))
        {
            csv.Context.RegisterClassMap<EmployeeDataMap>();
            employees = csv.GetRecords<Employee>().ToList();
        }

        return employees;
    }

    public List<Leave> ReadEmployeeLeaves(string csvPath)
    {
        List<Leave> employeeLeaves = new();
        
        var config = new CsvConfiguration(CultureInfo.InvariantCulture)
        {
            HasHeaderRecord = true
        };
        
        using (var reader = new StreamReader(csvPath))
        using (var csv = new CsvReader(reader, config))
        {
            csv.Read();
            csv.ReadHeader();
            string[] headers = csv.HeaderRecord;

            while (csv.Read())
            {
                var record = csv.GetRecord<dynamic>();
                var employeeId = int.Parse(record.EmployeeId); // Assuming the ID in the CSV is compatible with Guid

                for (int i = 1; i < headers.Length; i++)
                {
                    DateTime date = DateTime.ParseExact(headers[i], "M/d/yyyy", CultureInfo.InvariantCulture);
                    bool isAvailable = csv.GetField<bool>(headers[i]);
                    employeeLeaves.Add(new Leave { EmployeeNumber = employeeId, Date = date, IsAvailable = isAvailable });
                }
            }
        }

        return employeeLeaves;
    }
}