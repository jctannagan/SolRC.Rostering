using Microsoft.EntityFrameworkCore;
using SolRC.Rostering.Domain.Contracts.Repository;
using SolRC.Rostering.Domain.Models;
using SolRC.Rostering.Infrastructure.Data;

namespace SolRC.Rostering.Infrastructure.Repository;

public class ClusterRepository : IClusterRepository
{
    private readonly RosteringDbContext _dbContext;
    public ClusterRepository(RosteringDbContext context, RosteringDbContext dbContext)
    {
        _dbContext = dbContext;
    }
    
    public List<Cluster> GetAll()
    {
        return _dbContext.Clusters
            .Include(p => p.Pit)
                .ThenInclude(p => p.GamingFloor)
            .Include(p => p.TableGames)
                .ThenInclude(p => p.Game)
            .Include(p => p.TableGames)
				.ThenInclude(p => p.OperatingShifts)
			.ToList();
    }
}