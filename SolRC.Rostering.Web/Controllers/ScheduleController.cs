using System.IO.Compression;
using System.Text;
using Microsoft.AspNetCore.Mvc;
using SolRC.Rostering.Domain.Contracts.Services;
using SolRC.Rostering.Domain.Models;

namespace SolRC.Rostering.Web.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ScheduleController : ControllerBase
    {
        private readonly IExcelFileService excelFileService;
        private readonly IScheduleService scheduleService;

        public ScheduleController(IScheduleService scheduleService, IExcelFileService excelFileService)
        {
            this.scheduleService = scheduleService;
            this.excelFileService = excelFileService;
        }

        [HttpGet("generate")]
        public IActionResult Index()
        {
            var result = scheduleService.Generate();
            Guid[] relieverArr = result.tableDealers
                .Where(f => f.RelieverId != null)
                .Select(f => f.RelieverId).ToArray();
            var fileLoc = this.excelFileService.ListToExcel(result.tableDealers, relieverArr);
            var fileTableView = this.excelFileService.TableViewExcelByDate(result.tableDealers, result.clusterReliever, DateTime.Parse("01/01/2024"));
            fileTableView.Add(fileLoc);
            return DownloadMultipleFiles(fileTableView.ToArray());
        }

        [HttpGet("post")]
        public IActionResult Post()
        {
            return Ok();
        }
        
        private FileResult DownloadMultipleFiles(string[] filePaths)
        {
            Dictionary<string,byte[]> byteArrayDict = new();
            for (int i = 0; i < filePaths.Length; i++)
            {
                byteArrayDict.Add(filePaths[i], System.IO.File.ReadAllBytes(filePaths[i]));
            }
            
            var zipName = $"RosteringReportFiles-{DateTime.Now.ToString("yyyy_MM_dd-HH_mm_ss")}.zip";
            using MemoryStream ms = new MemoryStream();
            using (var archive = new ZipArchive(ms, ZipArchiveMode.Create, true))
            {
                foreach (var file in byteArrayDict)
                {
                    var entry = archive.CreateEntry(Path.GetFileName(file.Key), CompressionLevel.Fastest);
                    using var zipStream = entry.Open();
                    zipStream.Write(file.Value, 0, file.Value.Length);
                }
            }
            return File(ms.ToArray(), "application/zip", zipName);
        } 
    }
}
