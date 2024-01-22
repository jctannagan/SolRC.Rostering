using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using SolRC.Rostering.Domain.Models;

namespace SolRC.Rostering.Infrastructure.Data.Configuration;

public class LeavesConfiguration : IEntityTypeConfiguration<Leaves>
{
    public void Configure(EntityTypeBuilder<Leaves> builder)
    {
        builder.HasOne(l => l.Employee)
            .WithMany().OnDelete(DeleteBehavior.NoAction)
            .HasPrincipalKey(l => l.Number)
            .HasForeignKey(l => l.EmployeeNumber);
    }
}