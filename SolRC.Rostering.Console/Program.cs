using System.Globalization;
using CsvHelper;
using SolRC.Rostering.Domain.CsvMapping;
using SolRC.Rostering.Domain.Models;

namespace SolRC.Rostering.Console;

class Program
{
    static void Main(string[] args)
    {
        using (var reader = new StreamReader(@"..\..\..\..\Data\ZohoEmployeeList.csv"))
        using (var csv = new CsvReader(reader, CultureInfo.InvariantCulture))
        {
            csv.Context.RegisterClassMap<EmployeeDataMap>();
            var records = csv.GetRecords<Employee>().ToList();
        }
        
        
    }
}