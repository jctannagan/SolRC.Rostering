﻿using SolRC.Rostering.Domain.Models;
using OfficeOpenXml;
using SolRC.Rostering.Domain.Contracts.Services;

namespace SolRC.Rostering.Domain.Services;

public class ExcelFileService : IExcelFileService
{
    public void ListToExcel(List<TableAssignment> tableAssignments)
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

            var fileName = "ExportedData.xlsx";
            var fileInfo = new FileInfo(fileName);

            package.SaveAs(fileInfo);

            Console.WriteLine($"File saved to {fileInfo.FullName}");
        }
    }

    //public void ListToExcel(List<TableAssignment> tableAssignments)
    //{
    //    using (var package = new ExcelPackage())
    //    {
    //        var worksheet = package.Workbook.Worksheets.Add("Sheet1");

    //        var distinctDates = tableAssignments.Select(t => t.ScheduleDate)
    //            .Distinct().OrderBy(t => t.Date).ToList();
    //        for (int x = 0; x < distinctDates.Count; x++)
    //        {
    //            // date will be the headers
    //            worksheet.Cells[1, x + 2].Value = distinctDates[x].ToString();

    //            var dateFilteredTableAssignments = tableAssignments
    //                .Where(t => t.ScheduleDate == distinctDates[x]).ToList();

    //            for (int y = 0; y < dateFilteredTableAssignments.Count; y++)
    //            {
    //                var employeeName = $"{dateFilteredTableAssignments[y].Employee.FirstName} {dateFilteredTableAssignments[y].Employee.LastName}";
    //                worksheet.Cells[y + 2, 1].Value = employeeName;

    //                var tableShift = $"{dateFilteredTableAssignments[y].Table.Name} {dateFilteredTableAssignments[y].Hours.ShiftClass}";
    //                worksheet.Cells[y + 2, x + 2].Value = tableShift;
    //            }
    //        }

    //        var fileName = "ExportedData.xlsx";
    //        var fileInfo = new FileInfo(fileName);

    //        package.SaveAs(fileInfo);

    //        Console.WriteLine($"File saved to {fileInfo.FullName}");
    //    }
    //}
}