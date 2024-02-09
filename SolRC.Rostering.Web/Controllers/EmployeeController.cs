using Microsoft.AspNetCore.Mvc;
using SolRC.Rostering.Domain.Contracts.Services;

namespace SolRC.Rostering.Web.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class EmployeeController : ControllerBase
    {
        private readonly IEmployeeService _employeeService;

        public EmployeeController(IEmployeeService employeeService)
        {
            _employeeService = employeeService;
        }

        public EmployeeController()
        {
        }

        [HttpPost("upload-employee-csv")]
        public IActionResult Upload([FromForm] IFormFileCollection file)
        {
            _employeeService.ReadEmployeesCsv(file[0].OpenReadStream());

            return Ok("Upload successful");
        }

        [HttpPost("upload-leaves")]
        public IActionResult UploadLeaves([FromForm] IFormFileCollection file)
        {
            return Ok();
        }

        [HttpPost("upload-skills")]
        public IActionResult UploadSkills()
        {
            return Ok();
        }
    }
}