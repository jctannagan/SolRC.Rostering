using SolRC.Rostering.Domain.Contracts.Services;
using SolRC.Rostering.Domain.Models;

namespace SolRC.Rostering.Domain.Services;

public class ScheduleService
{
    private readonly IEmployeeService _employeeService;
    private readonly ITableService _tableService;

    public ScheduleService(
        IEmployeeService employeeService,
        ITableService tableService)
    {

        _employeeService = employeeService;
        _tableService = tableService;
    }

    private readonly Random _rng = new Random();
    
    public TableAssignment Generate()
    {
        var tables = _tableService.GetAll().OrderBy(t => t.OperatingShifts);
        // current dates to cover for the roster 14 days

        foreach (var table in tables)
        {
            // get last employee assigned to the table

            // get employees
            // shift
            // where skills and proficiency are met
            // where not eq to last employee assigned
            var employees = _employeeService.GetAll()
                .Where(e => e.Skills.Any(c => c.Game == table.Game
                    && c.Proficiency >= table.MinRequiredProficiency))
                .Select(e => e).ToList();
            //check if employee's shift is within the table operating hours
        }
        
        // if unable to assign, ask user to adjust required skills ??
        // who assigns substitute on days where an employee is on VL 
        // SL == manual assignment?

        return new TableAssignment();
    }
}