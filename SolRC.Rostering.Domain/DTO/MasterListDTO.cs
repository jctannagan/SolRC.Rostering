using SolRC.Rostering.Domain.Models;

namespace SolRC.Rostering.Domain.DTO;

public class MasterListDTO
{
    public Guid GamingFloorId { get; set; }
    public string GamingFloorName { get; set; }
    public Guid PitId { get; set; }
    public string PitName { get; set; }
    public List<AssignmentsDTO> Assignments { get; set; }
}

