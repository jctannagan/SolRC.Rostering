using SolRC.Rostering.Domain.Models;
using OfficeOpenXml;
using SolRC.Rostering.Domain.Contracts.Services;

namespace SolRC.Rostering.Domain.Services;

public class ExcelFileService : IExcelFileService
{
    public void ListToExcel(List<TableAssignment> tableAssignments)
    {
        // Create a new Excel package
        using (var package = new ExcelPackage())
        {
            // Add a new worksheet to the empty workbook
            var worksheet = package.Workbook.Worksheets.Add("Sheet1");

            // Load data into the worksheet, starting from cell A1
            for (int i = 0; i < tableAssignments.Count; i++)
            {
                worksheet.Cells[i + 1, 1].Value = tableAssignments[i];
            }

            // Define the file name
            var fileName = "ExportedData.xlsx";
            var fileInfo = new FileInfo(fileName);

            // Save the Excel package
            package.SaveAs(fileInfo);

            Console.WriteLine($"File saved to {fileInfo.FullName}");
        }
    }
}
