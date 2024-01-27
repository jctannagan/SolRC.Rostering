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

    //TODO: No previous assignment checking yet
    public List<TableAssignment> GenerateSchedule()
    {
        List<Table> tables = _tableService.GetAll();
        List<Employee> employees = _employeeService.GetAll();

        var startDate = new DateTime(2024, 01, 01);
        var endDate = new DateTime(2024, 01, 14);
        var totalDays = (endDate - startDate).TotalDays;

        //TODO: Normalize TableAssignments further. (AssignmentHeader and AssignmentDetails)
        List<TableAssignment> masterAssignments = new();
        for (int i = 0; i < totalDays; i++)
        {
            TableAssignment assignment = new();
            assignment.ScheduleDate = startDate.AddDays(i);

            var availableEmployees = employees.Where(e => e.Leaves == null ||
                                                          !e.Leaves.Any(l => l.Date.Date == assignment.ScheduleDate.Date))
                .ToList();

            foreach (var table in tables)
            {
                //Filter employees that are qualified to deal
                var qualifiedDealers = availableEmployees
                    .Where(e => e.Skills
                        .Any(c => c.Game == table.Game && c.Proficiency >= table.MinRequiredProficiency));

                foreach (var operatingShift in table.OperatingShifts)
                {
                    //given an operating hour (9-6)
                    //open hour should be within/equals to qualified dealer's shift

                    var shiftMatchedDealers = qualifiedDealers
                        .Where(q => q.ShiftStart == operatingShift.Open
                                    && q.ShiftEnd == operatingShift.Close)
                        .Select(s => s)
                        .ToList();

                    if (shiftMatchedDealers.Count != 0)
                    {
                        assignment.Employee =
                            shiftMatchedDealers[ThreadSafeRandomizer.ThreadRandom.Next(0, shiftMatchedDealers.Count)];
                        assignment.Table = operatingShift.Table;
                        assignment.Hours = operatingShift;

                        masterAssignments.Add(assignment);
                    }
                }

                // get last employee assigned to the table
            }

            // if unable to assign, ask user to adjust required skills ??
            // who assigns substitute on days where an employee is on VL 
            // SL == manual assignment?
        }

        return masterAssignments;
    }
}

public static class ThreadSafeRandomizer
{
    [ThreadStatic] private static Random rand;

    public static Random ThreadRandom
    {
        get
        {
            return rand ??= new Random(unchecked(Environment.TickCount * 31 + Thread.CurrentThread.ManagedThreadId));
        }
    }
}