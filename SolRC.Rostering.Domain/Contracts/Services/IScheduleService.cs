using SolRC.Rostering.Domain.Models;

namespace SolRC.Rostering.Domain.Contracts.Services;

public interface IScheduleService
{
    (List<Cluster> clusterReliever, List<Assignments> tableDealers) Generate();
    // List<TableAssignment> GenerateDealerSchedule();
    // List<Cluster> GenerateRelieverSchedule();
}