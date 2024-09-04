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

    public (List<AssignmentsClusterDTO> clusterReliever, List<Assignments> tableDealers) Generate()
    {
        DateTime startDate = new DateTime(2024, 01, 01);
        DateTime endDate = new DateTime(2024, 01, 14);
        var employees = _employeeService.GetAllDealers();
        
        List<Cluster> clusters = new();
		var assignedRelievers = GenerateRelieverSchedule(startDate, endDate, ref employees, out clusters);
        var tableAssignments = GenerateDealerSchedule(startDate, endDate, employees);

        var totalDays = (endDate - startDate).TotalDays;
        for (int day = 0; day <= totalDays; day++)
        {
	        var currentDate = startDate.AddDays(day);
	        var dailyTableAssignments = tableAssignments.Where(p => p.ScheduleDate == currentDate).ToList();
			foreach (var assignedReliever in assignedRelievers.Where(x => x.AssignmentDate == currentDate).ToList())
			{
				dailyTableAssignments.Where(f => f.Cluster?.Id == assignedReliever.ClusterId)
					.Where(o => o.Hours.Open.Hour == assignedReliever.OpenTime.Hour && o.Hours.Close.Hour == assignedReliever.CloseTime.Hour)
					.ToList()
					.ForEach(x =>
						{
							x.Reliever = assignedReliever.Reliever;
                            x.RelieverId = assignedReliever.Reliever.Id;
						}
					);

			}
		}

		return (assignedRelievers, tableAssignments);
    }

    public List<AssignmentsClusterDTO> GenerateRelieverSchedule(DateTime startDate, DateTime endDate, ref List<Employee> employees, out List<Cluster> clusters)
    {
        List<AssignmentsClusterDTO> relieverTuples = new();
        clusters = _clusterService.GetAll();

        var skillsCount = 18; // arbitrary number of skills for a reliever
        // filter employees with the most number of skills
        var skilledPool = employees.Where(s => s.Skills.Count > skillsCount).ToList();

		var totalDays = (endDate - startDate).TotalDays;
        for (int day = 0; day <= totalDays; day++)
        {
	        var currentDate = startDate.AddDays(day);
            var availableSkilledPool = skilledPool
				.Where(e => e.Leaves == null
	                        || e.Leaves.All(l => l.Date.Date != currentDate))
	            .ToList();

			foreach (var cluster in clusters)
	        {
				var schedules = cluster.TableGames.SelectMany(t => t.OperatingShifts)
			        .Select(s => new { s.Open, s.Close })
			        .Distinct()
			        .ToList();

		        foreach (var schedule in schedules)
		        {
			        var skillRequirement = cluster.TableGames
				        .GroupBy(p => p.Game.Name)
				        .Select(g => g.OrderByDescending(p => p.RequiredProficiency).First())
				        .ToDictionary(p => p.Game.Name, p => p.RequiredProficiency);

			        var relieverPool = availableSkilledPool.Where(e => skillRequirement
					        .All(sr => e.Skills.Any(skill => skill.Game.Name == sr.Key && skill.Proficiency >= sr.Value)))
				        .ToList();

			        var shiftMatchedRelievers = relieverPool
						.Where(q => q.ShiftStart == schedule.Open
				                    && q.ShiftEnd == schedule.Close)
				        .Select(s => s)
				        .ToList();

			        if (shiftMatchedRelievers.Count == 0)
				        continue;

			        var selectedReliever = shiftMatchedRelievers[ThreadSafeRandomizer.ThreadRandom.Next(0, shiftMatchedRelievers.Count)];
			        relieverTuples.Add(new AssignmentsClusterDTO(cluster.Id, currentDate, schedule.Open, schedule.Close, selectedReliever));

			        employees.Remove(selectedReliever);
		        }
	        }
		}

        return relieverTuples;
    }

    public List<Assignments> GenerateDealerSchedule(DateTime startDate, DateTime endDate, List<Employee> employees)
    {
        List<Table> tables = _tableService.GetAll();

        var totalDays = (endDate - startDate).TotalDays;

        //TODO: Normalize TableAssignments further. (AssignmentHeader and AssignmentDetails)
        List<Assignments> masterAssignments = new();
        for (int day = 0; day <= totalDays; day++)
        {
            var currentDate = startDate.AddDays(day);
            foreach (var table in tables)
            {
                var availableEmployees = employees
                    .Where(e => e.Leaves == null
                                || e.Leaves.All(l => l.Date.Date != currentDate))
                    .ToList();

                var assignedToday = masterAssignments
                    .Where(s => s.ScheduleDate == currentDate)
                    .AsEnumerable();

                if (assignedToday.Any())
                {
                    var exclude = assignedToday.Select(p => p.Dealer?.Id).Distinct().ToArray();
                    availableEmployees = availableEmployees.Where(a => !exclude.Contains(a.Id)).ToList();
                }

                //Filter employees that are qualified to deal
                var qualifiedDealers = availableEmployees
                    .Where(e => e.Skills.Any(c => c.Game == table.Game
                                                  && c.Proficiency >= table.RequiredProficiency));

                foreach (var operatingShift in table.OperatingShifts)
                {
                    Assignments assignment = new();
                    assignment.ScheduleDate = currentDate;

                    // This removes the dealer that was assigned to the same table and shift yesterday
                    if (masterAssignments.Count() != 0)
                    {
                        var exclude = masterAssignments
                            .Where(a => a.ScheduleDate == startDate.AddDays(day - 1)
                                        && a.Table.Name == operatingShift.Table.Name)
                            .Select(p => p.Dealer?.Id)
                            .Distinct()
                            .ToArray();
                        qualifiedDealers = qualifiedDealers.Where(a => !exclude.Contains(a.Id)).ToList();
                    }

					//given an operating hour (9-6)
					//open hour should be within/equals to qualified dealer's shift
					//added 15 minutes buffer for dealer shifts to be qualified to man a table game
					var shiftMatchedDealers = qualifiedDealers
                        .Where(q => q.ShiftStart == operatingShift.Open
                                    && q.ShiftEnd == operatingShift.Close)
                        .Select(s => s)
                        .ToList();

					assignment.Cluster = table.Cluster;
					assignment.Table = operatingShift.Table;
					assignment.Hours = operatingShift;

					if (shiftMatchedDealers.Count != 0)
                    {
                        var selectedDealer =
                            shiftMatchedDealers[ThreadSafeRandomizer.ThreadRandom.Next(0, shiftMatchedDealers.Count)];
                        assignment.DealerId = selectedDealer.Id;
                        assignment.Dealer = selectedDealer;
                    }

                    masterAssignments.Add(assignment);
				}
            }

            // if unable to assign, ask user to adjust required skills ??
            // who assigns substitute on days where an employee is on VL 
            // SL == manual assignment?
        }

        return masterAssignments;
    }

    public void GeneratePitSupervisorSchedule()
    {

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