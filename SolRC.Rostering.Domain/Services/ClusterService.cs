using SolRC.Rostering.Domain.Contracts.Repository;
using SolRC.Rostering.Domain.Contracts.Services;
using SolRC.Rostering.Domain.Models;

namespace SolRC.Rostering.Domain.Services;

public class ClusterService : IClusterService
{
    private readonly IClusterRepository _clusterRepository;
    public ClusterService(IClusterRepository clusterRepository)
    {
        _clusterRepository = clusterRepository;
    }
    
    public List<Cluster> GetAll()
    {
        return _clusterRepository.GetAll();
    }
}