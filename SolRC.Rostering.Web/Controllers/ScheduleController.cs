using Microsoft.AspNetCore.Mvc;
using SolRC.Rostering.Domain.Contracts.Services;

namespace SolRC.Rostering.Web.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ScheduleController : ControllerBase
    {
        private readonly IScheduleService scheduleService;
        private readonly IExcelFileService excelFileService;

        public ScheduleController(IScheduleService scheduleService, IExcelFileService excelFileService)
        {
            this.scheduleService = scheduleService;
            this.excelFileService = excelFileService;
        }

        [HttpGet("download")]
        public IActionResult Index()
        {
            var tableAssignments = scheduleService.GenerateScheduleV2();
            var fileLoc = this.excelFileService.ListToExcel(tableAssignments);
            excelFileService.ListToExcelTable(tableAssignments);

            // Define the path to the file
            // var filePath = Path.Combine(Directory.GetCurrentDirectory(), "ExportedData.xlsx");

            // Check if the file exists
            if (System.IO.File.Exists(fileLoc))
            {
                // Read the file into a FileStream
                var fileStream = new FileStream(fileLoc, FileMode.Open, FileAccess.Read);

                // Return the file with a MIME type for .xlsx files
                return File(fileStream, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet", Path.GetFileName(fileLoc));
            }

            return NotFound();
        }
    }
}
