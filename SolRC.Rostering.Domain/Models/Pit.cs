using OfficeOpenXml.FormulaParsing.Excel.Functions.Text;

namespace SolRC.Rostering.Domain.Models;

public record Pit
{
    public Guid Id { get; set; }
    public string Name { get; set; }
    public Guid GamingFloorId { get; set; }
    public GamingFloor GamingFloor { get; set; }
    public List<Cluster> Clusters { get; set; }
    public List<Employee>? Supervisor { get; set; }
}