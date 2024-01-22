namespace SolRC.Rostering.Domain.Common;

public abstract class BaseAuditableEntities
{
    public DateTimeOffset Created { get; set; }
    public string? CreatedBy { get; set; }
    public DateTimeOffset LastModified { get; set; }
    public string? LastModifiedBy { get; set; }
}