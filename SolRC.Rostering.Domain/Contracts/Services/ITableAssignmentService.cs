using SolRC.Rostering.Domain.Models;

namespace SolRC.Rostering.Domain.Contracts.Services;

public interface ITableAssignmentService
{
    IList<TableAssignment> GetAll();

    IList<TableAssignment> Get(DateTime dateTime);

}
