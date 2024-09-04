using SolRC.Rostering.Domain.DTO;
using SolRC.Rostering.Domain.Models;

namespace SolRC.Rostering.Domain.Contracts.Services;

public interface IScheduleService
{
    (List<AssignmentsClusterDTO> clusterReliever, List<Assignments> tableDealers) Generate();
}