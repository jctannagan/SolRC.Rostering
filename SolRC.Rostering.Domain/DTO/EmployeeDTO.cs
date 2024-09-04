using SolRC.Rostering.Domain.Models;

namespace SolRC.Rostering.Domain.DTO;

public class EmployeeDTO
{
    public Guid? Id { get; set; }
    public string Name { get; set; }
    public string Skills { get; set; }
}