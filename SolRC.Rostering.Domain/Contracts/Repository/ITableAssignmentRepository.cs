using SolRC.Rostering.Domain.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SolRC.Rostering.Domain.Contracts.Repository
{
    public interface ITableAssignmentRepository
    {
        IList<TableAssignment> GetAll();

        IList<TableAssignment> Get(DateTime dateTime);
    }
}
