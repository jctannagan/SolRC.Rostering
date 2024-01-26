using Microsoft.EntityFrameworkCore.Metadata.Internal;
using Table = SolRC.Rostering.Domain.Models.Table;

namespace SolRC.Rostering.Domain.Repository;

public interface ITableRepository
{
    List<Table> GetAll();
}