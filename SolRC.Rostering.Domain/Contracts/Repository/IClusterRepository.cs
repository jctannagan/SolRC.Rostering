using SolRC.Rostering.Domain.Models;

namespace SolRC.Rostering.Domain.Contracts.Repository;

public interface IClusterRepository
{
    List<Cluster> GetAll();
}