using SolRC.Rostering.Domain.Models;

namespace SolRC.Rostering.Domain.Contracts.Services
{
    public interface IExcelFileService
    {
        string ListToExcel(List<TableAssignment> tableAssignments, Guid[] relievers);
        string ListToExcelTable(List<TableAssignment> tableAssignments);
        List<string> TableViewExcelByDate(List<TableAssignment> tableAssignments, List<Cluster> tableClusters, DateTime date);
    }
}
