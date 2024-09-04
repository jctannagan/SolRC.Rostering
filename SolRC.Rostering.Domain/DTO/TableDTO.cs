using SolRC.Rostering.Domain.Models;

namespace SolRC.Rostering.Domain.DTO;

public class TableDTO
{
    public Guid Id { get; set; }
    public string Name { get; set; }
    public string Code { get; set; }
    public string GameCode { get; set; }
    public int RequiredProficiency { get; set; }
    public string ClusterName { get; set; }
    public string RelieverName { get; set; }
    public string RelieverSkills { get; set; }
    public List<Time> OperatingShifts { get; set; }
}