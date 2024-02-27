using System.Drawing;
using SolRC.Rostering.Domain.Models;
using OfficeOpenXml;
using OfficeOpenXml.Style;
using SolRC.Rostering.Domain.Contracts.Services;
using SolRC.Rostering.Domain.DTO;

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
                worksheet.Cells[2, column].Style.HorizontalAlignment =
                    OfficeOpenXml.Style.ExcelHorizontalAlignment.Center;
                worksheet.Cells[2, column].Style.Font.Bold = true;
                worksheet.Cells[2, column].Style.Fill.PatternType = ExcelFillStyle.Solid;
                worksheet.Cells[2, column].Style.Fill.BackgroundColor.SetColor(headerBgColor);
                worksheet.Cells[2, column].Style.Border.Bottom.Style = ExcelBorderStyle.Medium;
                worksheet.Cells[2, column + 1].Style.Border.Bottom.Style = ExcelBorderStyle.Medium;
                worksheet.Cells[2, column].Style.Border.Top.Style = ExcelBorderStyle.Thin;
                worksheet.Cells[2, column + 1].Style.Border.Top.Style = ExcelBorderStyle.Thin;
                worksheet.Cells[2, column].Style.Border.Left.Style = ExcelBorderStyle.Thin;
                worksheet.Cells[2, column + 1].Style.Border.Right.Style = ExcelBorderStyle.Thin;

                var allEmployees = _employeeService.GetAllDealers().OrderBy(e => e.EmployeeNumber).ToList();
                var row = 3;
                for (int y = 0; y < allEmployees.Count; y++)
                {
                    worksheet.Cells[row, 1].Value = allEmployees[y].EmployeeNumber;

                    var fullName = $"{allEmployees[y].FirstName} {allEmployees[y].LastName}";
                    worksheet.Cells[row, 2].Value = fullName;
                    worksheet.Cells[row, column, row + 1, column + 1].Merge = true;
                    worksheet.Cells[row, column].Style.WrapText = true;
                    worksheet.Cells[row, column].Style.HorizontalAlignment =
                        OfficeOpenXml.Style.ExcelHorizontalAlignment.Center;
                    worksheet.Cells[row, column].Style.VerticalAlignment =
                        OfficeOpenXml.Style.ExcelVerticalAlignment.Center;

                    var isOnLeave = allEmployees[y].Leaves.Any(l => l.Date.Date == distinctDates[x].Date);
                    if (isOnLeave)
                    {
                        worksheet.Cells[row, column].Value = "On Leave";
                    }
                    else
                    {
                        var employeeAssignment = tableAssignments
                            .Where(t => t.ScheduleDate == distinctDates[x]
                                        && t.Employee.Id == allEmployees[y].Id).ToList();
                        if (employeeAssignment.Count > 0)
                        {
                            var tableShift =
                                $"{employeeAssignment[0].Table.Name} | {employeeAssignment[0].Hours.Open.Hour}-{employeeAssignment[0].Hours.Close.Hour}"
                                + $"\nPit {employeeAssignment[0].Table.Cluster?.Pit.Name}";
                            worksheet.Cells[row, column].Value = tableShift;
                        }
                        else
                        {
                            worksheet.Cells[row, column].Value = "Not Assigned";
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

    public List<string> TableViewExcelByDate(List<TableAssignment> tableAssignments, List<Cluster> tableClusters,
        DateTime xDate)
    {
        List<string> fileList = new();
        var dates = tableAssignments.Select(d => d.ScheduleDate).Distinct().ToList();
        foreach (var date in dates)
        {
            using (var ep = new ExcelPackage())
            {
                var wb = ep.Workbook;

                IEnumerable<MasterListDTO> masterList = tableAssignments.Where(t => t.ScheduleDate.Date == date)
                    .Select(ta => new
                    {
                        TableAssignment = ta,
                        ClusterInfo =
                            tableClusters.FirstOrDefault(tc => tc.Id == ta.Table.ClusterId), // Joining on ClusterId
                        GamingFloorId = ta.Table.Cluster?.Pit?.GamingFloor?.Id ?? Guid.Empty,
                        GamingFloorName = ta.Table.Cluster?.Pit?.GamingFloor?.Name ?? "No Area",
                        PitId = ta.Table.Cluster?.Pit?.Id ?? Guid.Empty,
                        PitName = ta.Table.Cluster?.Pit?.Name ?? "No Pit",
                    })
                    .GroupBy(x => new { x.GamingFloorId, x.GamingFloorName, x.PitId, x.PitName })
                    .Select(g => new MasterListDTO()
                    {
                        GamingFloorId = g.Key.GamingFloorId,
                        GamingFloorName = g.Key.GamingFloorName,
                        PitId = g.Key.PitId,
                        PitName = g.Key.PitName,
                        Assignments = g.Select(x => new AssignmentsDTO()
                        {
                            Id = x.TableAssignment.Id,
                            BatchId = x.TableAssignment.BatchId,
                            ScheduleDate = x.TableAssignment.ScheduleDate,
                            Hours = x.TableAssignment.Hours,
                            Employee = new EmployeeDTO()
                            {
                                Id = x.TableAssignment.Employee.Id,
                                FirstName = x.TableAssignment.Employee.FirstName
                            },
                            Table = x.TableAssignment.Table != null
                                ? new TableDTO
                                {
                                    Id = x.TableAssignment.Table.Id,
                                    Name = x.TableAssignment.Table.Name,
                                    Code = x.TableAssignment.Table.Code,
                                    ClusterName = x.ClusterInfo?.Name ?? "No Cluster",
                                    RelieverName = x.ClusterInfo?.Reliever?.FirstName ?? "UNFILLED",
                                    OperatingShifts = x.TableAssignment.Table.OperatingShifts
                                }
                                : null
                        }).ToList()
                    });

                foreach (var groupedArea in masterList.GroupBy(p => p.GamingFloorName))
                {
                    var ws = wb.Worksheets.Add($"{groupedArea.Key} PIT SHEETS DAY {date:MMM-dd}");

                    int row = 1;
                    foreach (var area in groupedArea)
                    {
                        ws.Cells[row, 1].Value = $"Pit {area.PitName}";
                        ws.Cells[row, 1, row, 3].Merge = true;
                        row += 2;
                        
                        //Note
                        ws.Cells[row, 1].Value = $"This report displays tables in location Pit {area.PitName} with" +
                                                 $"a shift class of --- on {date.ToString("dddd, MMM ddm, yyy")}";
                        ws.Cells[row, 1, row, 3].Merge = true;
                        row++;
                        
                        //Header for Pit (Table, Dealer, Dealer(Brk))
                        ws.Cells[row, 1].Value = "Table";
                        ws.Cells[row, 2].Value = "Dealer";
                        ws.Cells[row, 3].Value = "Dealer(Brk)";
                        row++;

                        var assignmentCount = area.Assignments.Count;
                        for (int i = 0; i < area.Assignments.Count; i++)
                        {
                            ws.Cells[row + i, 1].Value = area.Assignments[i].Table.Name;
                            ws.Cells[row + i, 2].Value = area.Assignments[i].Employee.FirstName;
                            ws.Cells[row + i, 3].Value = area.Assignments[i].Table.RelieverName;
                        }

                        row += assignmentCount + 1;
                    }
                }

                var fileName = $"Pit Sheet {date.ToString("MMddyyyy")}.xlsx";
                var fileInfo = new FileInfo(fileName);

                ep.SaveAs(fileInfo);

                fileList.Add(fileInfo.FullName);
            }
        }

        return fileList;
    }
}