using SolRC.Rostering.Domain.Contracts.Services;
using SolRC.Rostering.Domain.Models;
using SolRC.Rostering.Domain.Repository;

namespace SolRC.Rostering.Domain.Services;

public class TableService : ITableService
{
    private readonly ITableRepository _tableRepository;
    
    public TableService(ITableRepository tableRepository)
    {
        _tableRepository = tableRepository;
    }

    public List<Table> GetAll()
    {
        return _tableRepository.GetAll();
    }
}