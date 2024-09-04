using System.Drawing;
using System.Net.Mime;
using SolRC.Rostering.Domain.Models;
using OfficeOpenXml;
using OfficeOpenXml.Style;
using SolRC.Rostering.Domain.Contracts.Services;
using SolRC.Rostering.Domain.DTO;

namespace SolRC.Rostering.Domain.Services;

public class ExcelFileService : IExcelFileService
{
    private readonly IEmployeeService _employeeService;
    private string _baseDir = Path.Combine(Directory.GetCurrentDirectory(), "reports");
    private Color _headerBgColor = ColorTranslator.FromHtml("#FFC000");

    public ExcelFileService(IEmployeeService employeeService)
    {
        _employeeService = employeeService;
    }

    public string ListToExcel(List<Assignments> tableAssignments, Guid?[] relievers)
    {
        var allEmployees = _employeeService.GetAllDealers()
            .Where(f => !relievers.Contains(f.Id))
            .OrderBy(e => e.EmployeeNumber).ToList();

        using (var package = new ExcelPackage())
        {
            var dates = tableAssignments.Select(p => p.ScheduleDate).Distinct();
            var minDate = dates.Min();
            var maxDate = dates.Max();

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
            worksheet.Cells[2, 1].Style.Fill.BackgroundColor.SetColor(_headerBgColor);
            worksheet.Cells[2, 1].Style.Border.Bottom.Style = ExcelBorderStyle.Medium;
            worksheet.Cells[2, 1].Style.Border.Top.Style = ExcelBorderStyle.Thin;
            worksheet.Cells[2, 1].Style.Border.Left.Style = ExcelBorderStyle.Thin;
            worksheet.Cells[2, 1].Style.Border.Right.Style = ExcelBorderStyle.Thin;
            worksheet.Column(1).Width = 12;

            worksheet.Cells[2, 2].Value = "Name";
            worksheet.Cells[2, 2].Style.Font.Bold = true;
            worksheet.Cells[2, 2].Style.Fill.PatternType = ExcelFillStyle.Solid;
            worksheet.Cells[2, 2].Style.Fill.BackgroundColor.SetColor(_headerBgColor);
            worksheet.Cells[2, 2].Style.Border.Bottom.Style = ExcelBorderStyle.Medium;
            worksheet.Cells[2, 2].Style.Border.Top.Style = ExcelBorderStyle.Thin;
            worksheet.Cells[2, 2].Style.Border.Left.Style = ExcelBorderStyle.Thin;
            worksheet.Cells[2, 2].Style.Border.Right.Style = ExcelBorderStyle.Thin;
            worksheet.Column(2).Width = 25;

            var distinctDates = tableAssignments.Select(t => t.ScheduleDate)
                .Distinct().OrderBy(t => t.Date).ToList();
            var column = 3;

            for (int x = 0; x < distinctDates.Count; x++)
            {
                // worksheet.Cells[2, column, 2, column + 1].Merge = true;
                worksheet.Cells[2, column].Value = distinctDates[x].ToString("ddd d");
                worksheet.Cells[2, column].Style.HorizontalAlignment =
                    OfficeOpenXml.Style.ExcelHorizontalAlignment.Center;
                worksheet.Cells[2, column].Style.Font.Bold = true;
                worksheet.Cells[2, column].Style.Fill.PatternType = ExcelFillStyle.Solid;
                worksheet.Cells[2, column].Style.Fill.BackgroundColor.SetColor(_headerBgColor);
                worksheet.Cells[2, column].Style.Border.Bottom.Style = ExcelBorderStyle.Medium;
                // worksheet.Cells[2, column + 1].Style.Border.Bottom.Style = ExcelBorderStyle.Medium;
                worksheet.Cells[2, column].Style.Border.Top.Style = ExcelBorderStyle.Thin;
                // worksheet.Cells[2, column + 1].Style.Border.Top.Style = ExcelBorderStyle.Thin;
                worksheet.Cells[2, column].Style.Border.Left.Style = ExcelBorderStyle.Thin;
                // worksheet.Cells[2, column + 1].Style.Border.Right.Style = ExcelBorderStyle.Thin;
                worksheet.Column(column).Width = 16;

                var row = 3;
                for (int y = 0; y < allEmployees.Count; y++)
                {
                    worksheet.Cells[row, 1].Value = allEmployees[y].EmployeeNumber;
                    worksheet.Cells[row, 1].Style.VerticalAlignment = ExcelVerticalAlignment.Center;
                    
                    var fullName = $"{allEmployees[y].FirstName} {allEmployees[y].LastName}";
                    worksheet.Cells[row, 2].Value = fullName;
                    worksheet.Cells[row, 2].Style.VerticalAlignment = ExcelVerticalAlignment.Center;
                    // worksheet.Cells[row, column, row + 1, column + 1].Merge = true;
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
                                        && t.Dealer?.Id == allEmployees[y].Id).ToList();
                        if (employeeAssignment.Count > 0)
                        {
                            string pitAssignment = string.IsNullOrEmpty(employeeAssignment[0].Table.Cluster?.Pit.Name)
                                ? "\nNo Pit/Area Assigned"
                                : $"\nPit {employeeAssignment[0].Table.Cluster?.Pit.Name} | {employeeAssignment[0].Table.Cluster?.Pit.GamingFloor.Name}";
                            var tableShift =
                                $"{employeeAssignment[0].Table.Name} | {employeeAssignment[0].Hours.Open.Hour}-{employeeAssignment[0].Hours.Close.Hour}"
                                + pitAssignment;
                            worksheet.Cells[row, column].Value = tableShift;
                        }
                        else
                        {
                            worksheet.Cells[row, column].Value = "Not Assigned";
                        }
                    }

                    worksheet.Row(row).Height = 42;
                    row++;
                }

                column++;
            }

            var fileName = Path.Combine(_baseDir, "DealerSchedule.xlsx");
            using (Stream stream = File.Create(fileName))
                package.SaveAs(stream);

            return fileName;
        }
    }

    public List<string> TableViewExcelByDate(List<Assignments> tableAssignments, DateTime xDate)
    {
        List<string> fileList = new();
        var dates = tableAssignments.Select(d => d.ScheduleDate).Distinct().ToList();
        foreach (var date in dates)
        {
            using (var ep = new ExcelPackage())
            {
                var wb = ep.Workbook;

                IEnumerable<MasterListDTO> masterList = tableAssignments
                    .Where(t => t.ScheduleDate.Date == date)
                    .Select(ta => new
                    {
                        TableAssignment = ta,
                        GamingFloorId = ta.Table.Cluster?.Pit?.GamingFloor?.Id ?? Guid.Empty,
                        GamingFloorName = ta.Table.Cluster?.Pit?.GamingFloor?.Name ?? "No Area",
                        PitId = ta.Table.Cluster?.Pit?.Id ?? Guid.Empty,
                        PitName = ta.Table.Cluster?.Pit?.Name ?? "- Not Available",
                    })
                    .GroupBy(x => new { x.GamingFloorId, x.GamingFloorName, x.PitId, x.PitName })
                    .Select(g => new MasterListDTO
                    {
                        GamingFloorId = g.Key.GamingFloorId,
                        GamingFloorName = g.Key.GamingFloorName,
                        PitId = g.Key.PitId,
                        PitName = g.Key.PitName,
                        Assignments = g.Select(x => new AssignmentsDTO
                        {
                            Id = x.TableAssignment.Id,
                            BatchId = x.TableAssignment.BatchId,
                            ScheduleDate = x.TableAssignment.ScheduleDate,
                            Hours = x.TableAssignment.Hours,
                            Dealer = new EmployeeDTO
                            {
                                Id = x.TableAssignment.DealerId,
                                Name = x.TableAssignment.DealerId != null ? 
	                                $"{x.TableAssignment.Dealer?.LastName}, {x.TableAssignment.Dealer?.FirstName}"
                                    : "< UNFILLED >",
                                Skills = x.TableAssignment.DealerId != null ?
									$"{string.Join(" " , x.TableAssignment.Dealer!.Skills.Select(s => s.Game.Name + s.Proficiency).ToArray())}"
									: string.Empty
							},
                            Table = new TableDTO
                            {
	                            Id = x.TableAssignment.Table.Id,
	                            Name = x.TableAssignment.Table.Name,
	                            Code = x.TableAssignment.Table.Code,
	                            GameCode = x.TableAssignment.Table.Game?.Name ?? "No Game",
	                            RequiredProficiency = x.TableAssignment.Table.RequiredProficiency,
	                            ClusterName = x.TableAssignment.Table.Cluster?.Name ?? "No Cluster",
	                            RelieverName = x.TableAssignment.Reliever != null
		                            ? $"{x.TableAssignment.Reliever.LastName}, {x.TableAssignment.Reliever.FirstName}"
		                            : "< UNFILLED >",
                                RelieverSkills = x.TableAssignment.RelieverId != null ?
	                                $"{string.Join(" ", x.TableAssignment.Reliever!.Skills.Select(s => s.Game.Name + s.Proficiency).ToArray())}"
	                                : string.Empty,
	                            OperatingShifts = x.TableAssignment.Table.OperatingShifts
                            }
                        }).ToList()
                    }).ToList();

                foreach (var groupedArea in masterList.GroupBy(p => p.GamingFloorName))
                {
                    var ws = wb.Worksheets.Add($"{groupedArea.Key} PIT SHEETS DAY {date:MMM-dd}");

                    int row = 1;
                    foreach (var area in groupedArea)
                    {
                        ws.Column(1).Width = 30;
                        ws.Column(2).Width = 30;
                        ws.Column(3).Width = 30;

                        ws.Cells[row, 1].Value = $"Pit {area.PitName}";
                        ws.Cells[row, 1].Style.Font.Bold = true;
                        ws.Cells[row, 1].Style.Font.Size = 12;
                        ws.Cells[row, 1, row, 3].Merge = true;
                        ws.Cells[row, 1].Style.HorizontalAlignment =
                            OfficeOpenXml.Style.ExcelHorizontalAlignment.Center;
                        row++;

                        //Note
                        ws.Cells[row, 1].Value = $"This report displays tables in location Pit {area.PitName} with" +
                                                 $" all shift classes on {date.ToString("dddd, MMM dd, yyy")}";
                        ws.Row(row).Height = 70;
                        ws.Cells[row, 1].Style.WrapText = true;
                        ws.Cells[row, 1].Style.VerticalAlignment = ExcelVerticalAlignment.Center;
                        row++;

                        //Header for Pit (Table, Dealer, Dealer(Brk))
                        ws.Cells[row, 1].Value = "Table";
                        ws.Cells[row, 2].Value = "Dealer";
                        ws.Cells[row, 3].Value = "Dealer(Brk)";
                        ws.Cells[row, 1, row, 3].Style.Fill.PatternType = ExcelFillStyle.Solid;
                        ws.Cells[row, 1, row, 3].Style.Fill.BackgroundColor.SetColor(_headerBgColor);
                        row++;

                        var assignmentCount = area.Assignments.Count;
                        for (int i = 0; i < area.Assignments.Count; i++)
                        {
                            ws.Cells[row + i, 1].Value =
                                $"{area.Assignments[i].Table.Name} \n{area.Assignments[i].Table.GameCode}{area.Assignments[i].Table.RequiredProficiency}+";
                            ws.Cells[row + i, 2].Value = $"{area.Assignments[i].Dealer.Name} " +
                                                         $"\n{area.Assignments[i].Dealer.Skills}" +
                                                         $"\n\n{area.Assignments[i].Hours.Open.Hour} - {area.Assignments[i].Hours.Close.Hour}" +
                                                         $"\n{area.Assignments[i].Table.Code}";
                            ws.Cells[row + i, 3].Value = $"{area.Assignments[i].Table.RelieverName} " +
                                                         $"\n{area.Assignments[i].Table.RelieverSkills}" +
														 $"\n\n{area.Assignments[i].Hours.Open.Hour} - {area.Assignments[i].Hours.Close.Hour}" +
                                                         $"\n{area.Assignments[i].Table.ClusterName}";

                            ws.Cells[row + i, 1].Style.WrapText = true;
                            ws.Cells[row + i, 2].Style.WrapText = true;
                            ws.Cells[row + i, 3].Style.WrapText = true;

                            ws.Cells[row + i, 1].Style.VerticalAlignment = ExcelVerticalAlignment.Top;
                            ws.Cells[row + i, 2].Style.VerticalAlignment = ExcelVerticalAlignment.Top;
                            ws.Cells[row + i, 3].Style.VerticalAlignment = ExcelVerticalAlignment.Top;
						}

                        row += assignmentCount + 1;
                    }
                }

                var fileName = Path.Combine(_baseDir, $"Pit Sheet {date.ToString("MMddyyyy")}.xlsx");
                using (Stream stream = File.Create(fileName))
                    ep.SaveAs(stream);

                fileList.Add(fileName);
            }
        }

        return fileList;
    }


    #region "Unused"

    public string ListToExcelTable(List<Assignments> tableAssignments)
    {
        using (var package = new ExcelPackage())
        {
            var worksheet = package.Workbook.Worksheets.Add("Sheet1");

            var filth = tableAssignments.Select(t => t)
                .Distinct().OrderBy(t => (t.ScheduleDate, t.Dealer.FirstName, t.Dealer.LastName)).ToList();

            for (int x = 0; x < filth.Count; x++)
            {
                // date will be the headers
                worksheet.Cells[x + 1, 1].Value = filth[x].ScheduleDate.ToString();

                var employeeName = $"{filth[x].Dealer.FirstName} {filth[x].Dealer.LastName}";
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

    #endregion
}