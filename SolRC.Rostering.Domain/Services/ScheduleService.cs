using SolRC.Rostering.Domain.Contracts.Services;
using SolRC.Rostering.Domain.Models;

namespace SolRC.Rostering.Domain.Services;

public class ScheduleService : IScheduleService
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
    
    public List<TableAssignment> GenerateSchedule()
    {
        var tables = _tableService.GetAll();
        var employees = _employeeService.GetAll();
        
        var startDate = new DateTime(2024, 01, 01);
        var endDate = new DateTime(2024, 01, 14);
        var totalDays = (endDate - startDate).TotalDays;
        for (int i = 0; i < totalDays; i++)
        {
            // current dates to cover for the roster 14 days
            var date = startDate.AddDays(i);

            foreach (var table in tables)
            {
                //Filter employees that are qualified to deal
                var filteredEmployee = employees
                    .Where(e => e.Skills
                        .Any(c => c.Game == table.Game && c.Proficiency >= table.MinRequiredProficiency));
                
                
                // Kulang ata ng reference ng TableGame.OperatingShift sa TableAssignment
                foreach (var operatingShift in table.OperatingShifts)
                {
                    
                }
                
                
                // get last employee assigned to the table

                // get employees
                // shift
                // where skills and proficiency are met
                // where not eq to last employee assigned
                //// var employees = _employeeService.GetAll()
                ////     .Where(e => e.Skills.Any(c => c.Game == table.Game
                ////                                   && c.Proficiency >= table.MinRequiredProficiency))
                ////     .Select(e => e).ToList();
                //check if employee's shift is within the table operating hours
            }
        
            // if unable to assign, ask user to adjust required skills ??
            // who assigns substitute on days where an employee is on VL 
            // SL == manual assignment?
        }

        return new List<TableAssignment>();
    }
}