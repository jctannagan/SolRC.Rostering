using SolRC.Rostering.Domain.Models;
using OfficeOpenXml;
using SolRC.Rostering.Domain.Contracts.Services;

namespace SolRC.Rostering.Domain.Services;

public class ExcelFileService : IExcelFileService
{
    private readonly IEmployeeService _employeeService;

    public ExcelFileService(IEmployeeService employeeService)
    {
        _employeeService = employeeService;
    }

    public string ListToExcelTable(List<TableAssignment> tableAssignments)
    {
        using (var package = new ExcelPackage())
        {
            var worksheet = package.Workbook.Worksheets.Add("Sheet1");

            var filth = tableAssignments.Select(t => t)
                .Distinct().OrderBy(t => (t.ScheduleDate, t.Employee.FirstName, t.Employee.LastName)).ToList();

            for (int x = 0; x < filth.Count; x++)
            {
                // date will be the headers
                worksheet.Cells[x + 1, 1].Value = filth[x].ScheduleDate.ToString();

                var employeeName = $"{filth[x].Employee.FirstName} {filth[x].Employee.LastName}";
                worksheet.Cells[x + 1, 2].Value = employeeName;

                var tableShift = $"{filth[x].Table.Name} {filth[x].Hours.ShiftClass}";
                worksheet.Cells[x + 1, 3].Value = tableShift;

            }

            var fileName = "ExportedDataTable.xlsx";
            var fileInfo = new FileInfo(fileName);

            package.SaveAs(fileInfo);

            return fileInfo.FullName;
        }
    }

    public string ListToExcel(List<TableAssignment> tableAssignments)
    {
        using (var package = new ExcelPackage())
        {
            var worksheet = package.Workbook.Worksheets.Add("Sheet1");
            worksheet.Cells[1, 1].Value = "EmpNumber";
            worksheet.Cells[1, 2].Value = "Name";
            var distinctDates = tableAssignments.Select(t => t.ScheduleDate)
                .Distinct().OrderBy(t => t.Date).ToList();
            for (int x = 0; x < distinctDates.Count; x++)
            {
                // date will be the headers
                worksheet.Cells[1, x + 3].Value = distinctDates[x].ToShortDateString();

                var allEmployees = _employeeService.GetAll().OrderBy(e => e.Number).ToList();

                for (int y = 0; y < allEmployees.Count; y++)
                {
                    worksheet.Cells[y + 2, 1].Value = allEmployees[y].Number;

                    var fullName = $"{allEmployees[y].FirstName} {allEmployees[y].LastName}";
                    worksheet.Cells[y + 2, 2].Value = fullName;

                    var isOnLeave = allEmployees[y].Leaves.Any(l => l.Date.Date == distinctDates[x].Date);
                    if (isOnLeave)
                    {
                        worksheet.Cells[y + 2, x + 3].Value = "On Leave";
                    }
                    else
                    {
                        var employeeAssignment = tableAssignments
                            .Where(t => t.ScheduleDate == distinctDates[x]
                                && t.Employee.Id == allEmployees[y].Id).ToList();
                        if (employeeAssignment.Count > 0)
                        {
                            var tableShift = $"{employeeAssignment[0].Table.Name} | {employeeAssignment[0].Hours.ShiftClass}";
                            worksheet.Cells[y + 2, x + 3].Value = tableShift;
                        }
                        else
                        {
                            worksheet.Cells[y + 2, x + 3].Value = "Not Assigned";
                        }
                    }
                }
            }

            var fileName = "ExportedData.xlsx";
            var fileInfo = new FileInfo(fileName);

            package.SaveAs(fileInfo);

            return fileInfo.FullName;
        }
    }
}
