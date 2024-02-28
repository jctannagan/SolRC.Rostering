using SolRC.Rostering.Domain.Models;

namespace SolRC.Rostering.Domain.Contracts.Services
{
    public interface IExcelFileService
    {
        string ListToExcel(List<Assignments> tableAssignments, Guid[] relievers);
        string ListToExcelTable(List<Assignments> tableAssignments);
        List<string> TableViewExcelByDate(List<Assignments> tableAssignments, List<Cluster> tableClusters, DateTime date);
    }
}
