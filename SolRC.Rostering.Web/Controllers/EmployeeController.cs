using Microsoft.AspNetCore.Mvc;

namespace SolRC.Rostering.Web.Controllers;

[Route("api/[controller]")]
[ApiController]
public class EmployeeController : ControllerBase
{
    public EmployeeController()
    {
        
    }

    [HttpPost("/UploadEmployees")]
    public IActionResult Upload()
    {
        return Ok();
    }
    
    [HttpPost("/UploadLeaves")]
    public IActionResult UploadLeaves()
    {
        return Ok();
    }
    
    [HttpPost("/UploadSkills")]
    public IActionResult UploadSkills()
    {
        return Ok();
    }
}