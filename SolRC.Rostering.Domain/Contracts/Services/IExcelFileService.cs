using SolRC.Rostering.Domain.Models;

namespace SolRC.Rostering.Domain.Contracts.Services
{
    public interface IExcelFileService
    {
        void ListToExcel(List<TableAssignment> tableAssignments);
        void ListToExcelTable(List<TableAssignment> tableAssignments);
    }
}
