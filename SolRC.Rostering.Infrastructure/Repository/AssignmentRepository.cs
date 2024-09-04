using SolRC.Rostering.Domain.Contracts.Repository;
using SolRC.Rostering.Domain.Models;
using SolRC.Rostering.Infrastructure.Data;

namespace SolRC.Rostering.Infrastructure.Repository
{
    public class AssignmentRepository : ITableAssignmentRepository
    {
        private readonly RosteringDbContext _dbContext;

        public AssignmentRepository(RosteringDbContext dbContext)
        {
            _dbContext = dbContext;
        }

        public IList<Assignments> Get(DateTime dateTime)
        {
            return _dbContext.Assignments
                .Where(t => t.ScheduleDate == dateTime).ToList();
        }

        public IList<Assignments> GetAll()
        {
            return _dbContext.Assignments.ToList();
        }
    }
}
