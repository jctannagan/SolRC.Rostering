using SolRC.Rostering.Domain.Contracts.Repository;
using SolRC.Rostering.Domain.Models;
using SolRC.Rostering.Infrastructure.Data;

namespace SolRC.Rostering.Infrastructure.Repository
{
    public class TableAssignmentRepository : ITableAssignmentRepository
    {
        private readonly RosteringDbContext _dbContext;

        public TableAssignmentRepository(RosteringDbContext dbContext)
        {
            _dbContext = dbContext;
        }

        public IList<TableAssignment> Get(DateTime dateTime)
        {
            return _dbContext.TableAssignments
                .Where(t => t.ScheduleDate == dateTime).ToList();
        }

        public IList<TableAssignment> GetAll()
        {
            return _dbContext.TableAssignments.ToList();
        }
    }
}
