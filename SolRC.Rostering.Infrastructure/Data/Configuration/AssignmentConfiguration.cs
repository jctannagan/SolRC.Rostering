using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using SolRC.Rostering.Domain.Models;

namespace SolRC.Rostering.Infrastructure.Data.Configuration;

public class AssignmentConfiguration : IEntityTypeConfiguration<Assignments>
{
    public void Configure(EntityTypeBuilder<Assignments> builder)
    {
        builder.HasKey(e => e.Id);
        builder.HasOne(l => l.Table)
            .WithMany().OnDelete(DeleteBehavior.NoAction);
        builder.HasOne(l => l.Reliever)
            .WithMany().OnDelete(DeleteBehavior.NoAction);
    }
}