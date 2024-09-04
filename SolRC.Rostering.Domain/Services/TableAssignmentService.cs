using SolRC.Rostering.Domain.Contracts.Repository;
using SolRC.Rostering.Domain.Contracts.Services;
using SolRC.Rostering.Domain.Models;

namespace SolRC.Rostering.Domain.Services
{
    public class TableAssignmentService : ITableAssignmentService
    {
        private readonly ITableAssignmentRepository _tableAssignmentRepository;

        public TableAssignmentService(ITableAssignmentRepository tableAssignmentRepository)
        {
            _tableAssignmentRepository = tableAssignmentRepository;
        }

        public IList<Assignments> Get(DateTime dateTime)
        {
            return _tableAssignmentRepository.Get(dateTime);
        }

        public IList<Assignments> GetAll()
        {
            return _tableAssignmentRepository.GetAll();
        }
    }
}
