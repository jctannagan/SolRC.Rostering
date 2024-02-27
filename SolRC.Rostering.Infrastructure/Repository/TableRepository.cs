using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Internal;
using SolRC.Rostering.Domain.Repository;
using SolRC.Rostering.Infrastructure.Data;
using Table = SolRC.Rostering.Domain.Models.Table;

namespace SolRC.Rostering.Infrastructure;

public class TableRepository: ITableRepository
{
    private readonly RosteringDbContext _dbContext;
    public TableRepository(RosteringDbContext dbContext)
    {
        _dbContext = dbContext;
    }
    
    public List<Table> GetAll()
    {
        return _dbContext.Tables
            .Include(t => t.OperatingShifts)
            .Include(t => t.Game)
            .Include(t => t.Cluster).ThenInclude(c => c.Pit)
            .Where(t => t.OperatingShifts.Any())
            .ToList();
    }
}