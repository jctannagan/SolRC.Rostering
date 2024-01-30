using SolRC.Rostering.Domain.Models;

namespace SolRC.Rostering.Domain.Contracts.Services;

public interface IScheduleService
{
    List<TableAssignment> GenerateSchedule();
    List<TableAssignment> GenerateScheduleV2();
}