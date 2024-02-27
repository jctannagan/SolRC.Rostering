using SolRC.Rostering.Domain.Models;

namespace SolRC.Rostering.Domain.Contracts.Services;

public interface IClusterService
{
    List<Cluster> GetAll();
}