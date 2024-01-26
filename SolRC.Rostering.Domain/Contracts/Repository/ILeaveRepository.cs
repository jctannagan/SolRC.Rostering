using SolRC.Rostering.Domain.Models;

namespace SolRC.Rostering.Domain.Repository;

public interface ILeaveRepository
{
    void Add(Leave leave);
    void AddRange(List<Leave> leaves);
}