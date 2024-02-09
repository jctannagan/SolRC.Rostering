using System.Drawing;
using SolRC.Rostering.Domain.Models;
using OfficeOpenXml;
using OfficeOpenXml.Style;
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
            var dates = tableAssignments.Select(p => p.ScheduleDate).Distinct();
            var minDate = dates.Min();
            var maxDate = dates.Max();
            
            Color headerBgColor = ColorTranslator.FromHtml("#FFC000");
            
            var worksheet = package.Workbook.Worksheets.Add("Sheet1");
            worksheet.Cells[1, 3, 1, 4].Merge = true;
            string dateHeader = string.Empty;
            if (minDate.Month == maxDate.Month)
                dateHeader = $"{minDate.Day}-{maxDate.Day} {maxDate.ToString("MMMM, yyy")}";
            else
                dateHeader = $"{minDate.ToString("d MMM")}-{maxDate.ToString("d MMM, yyy")}";
            
            worksheet.Cells[1, 3].Value = dateHeader;
            worksheet.Cells[1, 3].Style.Font.Bold = true;
            
            worksheet.Cells[2, 1].Value = "EmpNumber";
            worksheet.Cells[2, 1].Style.Font.Bold = true;
            worksheet.Cells[2, 1].Style.Fill.PatternType = ExcelFillStyle.Solid;
            worksheet.Cells[2, 1].Style.Fill.BackgroundColor.SetColor(headerBgColor);
            worksheet.Cells[2, 1].Style.Border.Bottom.Style = ExcelBorderStyle.Medium;
            worksheet.Cells[2, 1].Style.Border.Top.Style = ExcelBorderStyle.Thin;
            worksheet.Cells[2, 1].Style.Border.Left.Style = ExcelBorderStyle.Thin;
            worksheet.Cells[2, 1].Style.Border.Right.Style = ExcelBorderStyle.Thin;
            
            worksheet.Cells[2, 2].Value = "Name";
            worksheet.Cells[2, 2].Style.Font.Bold = true;
            worksheet.Cells[2, 2].Style.Fill.PatternType = ExcelFillStyle.Solid;
            worksheet.Cells[2, 2].Style.Fill.BackgroundColor.SetColor(headerBgColor);
            worksheet.Cells[2, 2].Style.Border.Bottom.Style = ExcelBorderStyle.Medium;
            worksheet.Cells[2, 2].Style.Border.Top.Style = ExcelBorderStyle.Thin;
            worksheet.Cells[2, 2].Style.Border.Left.Style = ExcelBorderStyle.Thin;
            worksheet.Cells[2, 2].Style.Border.Right.Style = ExcelBorderStyle.Thin;

            var distinctDates = tableAssignments.Select(t => t.ScheduleDate)
                .Distinct().OrderBy(t => t.Date).ToList();
            var column = 3;
            
            for (int x = 0; x < distinctDates.Count; x++)
            {
                // date will be the headers
                worksheet.Cells[2, column, 2, column + 1].Merge = true;
                worksheet.Cells[2, column].Value = distinctDates[x].ToString("ddd d");
                worksheet.Cells[2, column].Style.HorizontalAlignment = OfficeOpenXml.Style.ExcelHorizontalAlignment.Center;
                worksheet.Cells[2, column].Style.Font.Bold = true;
                worksheet.Cells[2, column].Style.Fill.PatternType = ExcelFillStyle.Solid;
                worksheet.Cells[2, column].Style.Fill.BackgroundColor.SetColor(headerBgColor);
                worksheet.Cells[2, column].Style.Border.Bottom.Style = ExcelBorderStyle.Medium;
                worksheet.Cells[2, column + 1].Style.Border.Bottom.Style = ExcelBorderStyle.Medium;
                worksheet.Cells[2, column].Style.Border.Top.Style = ExcelBorderStyle.Thin;
                worksheet.Cells[2, column + 1].Style.Border.Top.Style = ExcelBorderStyle.Thin;
                worksheet.Cells[2, column].Style.Border.Left.Style = ExcelBorderStyle.Thin;
                worksheet.Cells[2, column + 1].Style.Border.Right.Style = ExcelBorderStyle.Thin;

                var allEmployees = _employeeService.GetAll().OrderBy(e => e.Number).ToList();
                var row = 3;
                for (int y = 0; y < allEmployees.Count; y++)
                {
                    worksheet.Cells[row, 1].Value = allEmployees[y].Number;

                    var fullName = $"{allEmployees[y].FirstName} {allEmployees[y].LastName}";
                    worksheet.Cells[row, 2].Value = fullName;
                    worksheet.Cells[row, column, row + 1, column + 1].Merge = true;
                    worksheet.Cells[row, column].Style.WrapText = true;
                    worksheet.Cells[row, column].Style.HorizontalAlignment = OfficeOpenXml.Style.ExcelHorizontalAlignment.Center;
                    worksheet.Cells[row, column].Style.VerticalAlignment = OfficeOpenXml.Style.ExcelVerticalAlignment.Center;

                    var isOnLeave = allEmployees[y].Leaves.Any(l => l.Date.Date == distinctDates[x].Date);
                    if (isOnLeave)
                    {
                        worksheet.Cells[row, column].Value = "On Leave";
                       // worksheet.Cells[row, column].Value = $"{row}-{column}";
                    }
                    else
                    {
                        var employeeAssignment = tableAssignments
                            .Where(t => t.ScheduleDate == distinctDates[x]
                                && t.Employee.Id == allEmployees[y].Id).ToList();
                        if (employeeAssignment.Count > 0)
                        {
                            var tableShift = $"{employeeAssignment[0].Table.Name} | {employeeAssignment[0].Hours.ShiftClass}" +
                                $"\n{employeeAssignment[0].Table.Location}";
                            worksheet.Cells[row, column].Value = tableShift;
                            // worksheet.Cells[row, column].Value = $"{row}-{column}";
                        }
                        else
                        {
                            worksheet.Cells[row, column].Value = "Not Assigned";
                            // worksheet.Cells[row, column].Value = $"{row}-{column}";
                        }
                    }
                    row += 2;
                }
                column += 2;
            }

            var fileName = "ExportedData.xlsx";
            var fileInfo = new FileInfo(fileName);

            package.SaveAs(fileInfo);

            return fileInfo.FullName;
        }
    }
}
