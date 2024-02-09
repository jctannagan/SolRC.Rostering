using Microsoft.AspNetCore.Mvc;

namespace SolRC.Rostering.Web.Controllers;

[Route("api/[Controller]")]
[ApiController]
public class TableGameController : ControllerBase
{
    public TableGameController()
    {
        
    }

    [HttpPost("upload-table-games")]
    public IActionResult Upload()
    {
        return Ok();
    }
}