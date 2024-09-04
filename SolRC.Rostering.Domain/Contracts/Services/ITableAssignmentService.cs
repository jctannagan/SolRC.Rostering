using SolRC.Rostering.Domain.Models;

namespace SolRC.Rostering.Domain.Contracts.Services;

public interface ITableAssignmentService
{
    IList<Assignments> GetAll();

    IList<Assignments> Get(DateTime dateTime);

}
