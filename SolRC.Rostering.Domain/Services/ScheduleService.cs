using SolRC.Rostering.Domain.Contracts.Repository;
using SolRC.Rostering.Domain.Contracts.Services;
using SolRC.Rostering.Domain.DTO;
using SolRC.Rostering.Domain.Models;

namespace SolRC.Rostering.Domain.Services;

public class ScheduleService : IScheduleService
{
    private readonly IClusterService _clusterService;
    private readonly IEmployeeService _employeeService;
    private readonly ITableService _tableService;
    private readonly ITableAssignmentService _tableAssignmentService;

    public ScheduleService(
        IEmployeeService employeeService,
        ITableService tableService,
        ITableAssignmentService tableAssignmentService, IClusterService clusterService)
    {
        _employeeService = employeeService;
        _tableService = tableService;
        _tableAssignmentService = tableAssignmentService;
        _clusterService = clusterService;
    }

    private readonly Random _rng = new Random();

    [Obsolete]
    public List<TableAssignment> GenerateSchedule_Kath()
    {
        List<Table> tables = _tableService.GetAll();
        List<Employee> employees = _employeeService.GetAllDealers();

        var startDate = new DateTime(2024, 01, 01);
        var endDate = new DateTime(2024, 01, 14);
        var totalDays = (endDate - startDate).TotalDays;

        //TODO: Normalize TableAssignments further. (AssignmentHeader and AssignmentDetails)
        List<TableAssignment> masterAssignments = new();
        foreach (var table in tables)
        {
            //Filter employees that are qualified to deal
            var qualifiedDealers = employees
                .Where(e => e.Skills.Any(c => c.Game == table.Game
                    && c.Proficiency >= table.RequiredProficiency));

            // if no dealers meet current qualification
            // ask them to adjust table required proficiency

            List<TableAssignment> prevAssignment;
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
                        prevAssignment = masterAssignments
                            .Where(a => a.ScheduleDate == startDate.AddDays(day - 1)
                                && a.Hours.ShiftClass == operatingShift.ShiftClass)
                            .ToList();
                    }

                    var prevAssignmentShift = prevAssignment.FirstOrDefault(p => p.Hours == operatingShift);
                    shiftMatchedDealers = shiftMatchedDealers.Where(e => e.Id != prevAssignmentShift?.Employee.Id).ToList();

                    if (shiftMatchedDealers.Count != 0)
                    {
                        var theChosenOne = shiftMatchedDealers[ThreadSafeRandomizer.ThreadRandom.Next(0, shiftMatchedDealers.Count)];
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

    public List<Cluster> GenerateRelieverSchedule(ref List<Employee> employees)
    {
        List<Cluster> clusters = _clusterService.GetAll();
        
        //filter employees skills to the most skilled
        var relieverPool = employees.Where(s => s.Skills.Count > 18).ToList();
        foreach (var cluster in clusters)
        {
            var skillRequirement = cluster.TableGames
                .GroupBy(p => p.Game.Name)
                .Select(g => g.OrderByDescending(p => p.RequiredProficiency).First())
                .ToDictionary(p => p.Game.Name, p => p.RequiredProficiency);
            var filteredPool = relieverPool.Where(e => skillRequirement
                    .All(sr => e.Skills.Any(skill => skill.Game.Name == sr.Key && skill.Proficiency >= sr.Value)))
                .ToList();

            if (filteredPool.Count == 0)
                continue;
                
            var selectedReliever = filteredPool[ThreadSafeRandomizer.ThreadRandom.Next(0, filteredPool.Count)];
            cluster.Reliever = selectedReliever;
            cluster.RelieverId = selectedReliever.Id;

            employees.Remove(selectedReliever);
        }
        
        return clusters;
    }

    public (List<Cluster> clusterReliever, List<TableAssignment> tableDealers) Generate()
    {
        var employees = _employeeService.GetAllDealers();
        
        var clustersWithRelievers = GenerateRelieverSchedule(ref employees);
        var tableAssignments = GenerateDealerSchedule(employees);

        return (clustersWithRelievers, tableAssignments);
    }

    public List<TableAssignment> GenerateDealerSchedule(List<Employee> employees)
    {
        List<Table> tables = _tableService.GetAll();

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
                    .Where(e => e.Skills.Any(c => c.Game == table.Game
                        && c.Proficiency >= table.RequiredProficiency));

                foreach (var operatingShift in table.OperatingShifts)
                {
                    TableAssignment assignment = new();
                    assignment.ScheduleDate = currentDate;

                    // This removes the dealer that was assigned to the same table and shift yesterday
                    if (masterAssignments.Count() != 0)
                    {
                        var exclude = masterAssignments
                            .Where(a => a.ScheduleDate == startDate.AddDays(day - 1)
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
                        var theChosenOne = shiftMatchedDealers[ThreadSafeRandomizer.ThreadRandom.Next(0, shiftMatchedDealers.Count)];
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