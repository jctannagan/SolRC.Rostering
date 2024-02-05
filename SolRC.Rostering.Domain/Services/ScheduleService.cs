using SolRC.Rostering.Domain.Contracts.Services;
using SolRC.Rostering.Domain.Models;

namespace SolRC.Rostering.Domain.Services;

public class ScheduleService : IScheduleService
{
    private readonly IEmployeeService _employeeService;
    private readonly ITableService _tableService;
    private readonly ITableAssignmentService _tableAssignmentService;

    public ScheduleService(
        IEmployeeService employeeService,
        ITableService tableService,
        ITableAssignmentService tableAssignmentService)
    {
        _employeeService = employeeService;
        _tableService = tableService;
        _tableAssignmentService = tableAssignmentService;
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
        foreach (var table in tables)
        {
            //Filter employees that are qualified to deal
            var qualifiedDealers = employees
                .Where(e => e.Skills
                    .Any(c => c.Game == table.Game
                              && c.Proficiency >= table.MinRequiredProficiency));

            // if no dealers meet current qualification
            // ask them to adjust table required proficiency

            var prevAssignment = new List<TableAssignment>();
            for (int day = 0; day <= totalDays; day++)
            {
                // if no qualified dealers are available
                // WHY THEY ALL ON LEAVE THOUGH?!

                foreach (var operatingShift in table.OperatingShifts)
                {
                    TableAssignment assignment = new();

                    assignment.ScheduleDate = startDate.AddDays(day);

                    var availableEmployees = qualifiedDealers
                        .Where(e => e.Leaves == null
                                    || !e.Leaves.Any(l => l.Date.Date == assignment.ScheduleDate.Date))
                        .ToList();

                    //given an operating hour (9-6)
                    //open hour should be within/equals to qualified dealer's shift
                    var shiftMatchedDealers = availableEmployees
                        .Where(q => q.ShiftStart == operatingShift.Open
                                    && q.ShiftEnd == operatingShift.Close)
                        .Select(s => s)
                        .ToList();

                    if (masterAssignments.Count == 0)
                    {
                        prevAssignment = _tableAssignmentService.Get(startDate.AddDays(day - 1)).ToList();
                    }
                    else
                    {
                        prevAssignment = masterAssignments.Where(a => a.ScheduleDate == startDate.AddDays(day - 1)
                                                                      && a.Hours.ShiftClass ==
                                                                      operatingShift.ShiftClass).ToList();
                    }

                    var prevAssignmentShift = prevAssignment.Where(p => p.Hours == operatingShift).FirstOrDefault();
                    shiftMatchedDealers = shiftMatchedDealers.Where(e => e.Id != prevAssignmentShift?.Employee.Id)
                        .ToList();

                    if (shiftMatchedDealers.Count != 0)
                    {
                        var theChosenOne =
                            shiftMatchedDealers[ThreadSafeRandomizer.ThreadRandom.Next(0, shiftMatchedDealers.Count)];
                        assignment.Employee = theChosenOne;
                        assignment.Table = operatingShift.Table;
                        assignment.Hours = operatingShift;
                        masterAssignments.Add(assignment);
                    }
                }
            }

            // if unable to assign, ask user to adjust required skills ??
            // who assigns substitute on days where an employee is on VL 
            // SL == manual assignment?
        }

        return masterAssignments;
    }

    public List<TableAssignment> GenerateScheduleV2()
    {
        List<Table> tables = _tableService.GetAll();
        List<Employee> employees = _employeeService.GetAll();

        var startDate = new DateTime(2024, 01, 01);
        var endDate = new DateTime(2024, 01, 14);
        var totalDays = (endDate - startDate).TotalDays;

        //TODO: Normalize TableAssignments further. (AssignmentHeader and AssignmentDetails)
        List<TableAssignment> masterAssignments = new();
        for (int day = 0; day <= totalDays; day++)
        {
            var currentDate = startDate.AddDays(day);
            foreach (var table in tables)
            {
                var availableEmployees = employees
                    .Where(e => e.Leaves == null
                                || !e.Leaves.Any(l => l.Date.Date == currentDate))
                    .ToList();
                
                var assignedToday = masterAssignments
                    .Where(s => s.ScheduleDate == currentDate)
                    .AsEnumerable();

                if (assignedToday.Count() != 0)
                {
                    var exclude = assignedToday.Select(p => p.Employee.Id).Distinct().ToArray();
                    availableEmployees = availableEmployees.Where(a => !exclude.Contains(a.Id)).ToList();
                }
                
                //Filter employees that are qualified to deal
                var qualifiedDealers = availableEmployees
                    .Where(e => e.Skills
                        .Any(c => c.Game == table.Game
                                  && c.Proficiency >= table.MinRequiredProficiency));

                foreach (var operatingShift in table.OperatingShifts)
                {
                    TableAssignment assignment = new();
                    assignment.ScheduleDate = currentDate;
                    
                    // This removes the dealer that was assigned to the same table and shift yesterday
                    if (masterAssignments.Count() != 0)
                    {
                        var exclude = masterAssignments.Where(a => a.ScheduleDate == startDate.AddDays(day - 1)
                                                     && a.Table.Name == operatingShift.Table.Name)
                                                    .Select(p => p.Employee.Id)
                                                    .Distinct()
                                                    .ToArray();
                        qualifiedDealers = qualifiedDealers.Where(a => !exclude.Contains(a.Id)).ToList();
                    }
                    //given an operating hour (9-6)
                    //open hour should be within/equals to qualified dealer's shift
                    var shiftMatchedDealers = qualifiedDealers
                        .Where(q => q.ShiftStart == operatingShift.Open
                                    && q.ShiftEnd == operatingShift.Close)
                        .Select(s => s)
                        .ToList();

                    if (shiftMatchedDealers.Count != 0)
                    {
                        var theChosenOne =
                            shiftMatchedDealers[ThreadSafeRandomizer.ThreadRandom.Next(0, shiftMatchedDealers.Count)];
                        assignment.Employee = theChosenOne;
                        assignment.Table = operatingShift.Table;
                        assignment.Hours = operatingShift;
                        masterAssignments.Add(assignment);
                    }
                }
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