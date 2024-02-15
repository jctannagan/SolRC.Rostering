using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using SolRC.Rostering.Domain.Models;

namespace SolRC.Rostering.Infrastructure.Data.Configuration;

public class TableConfiguration : IEntityTypeConfiguration<Table>
{
    public void Configure(EntityTypeBuilder<Table> builder)
    {
        builder.HasKey(e => e.Id);
        builder.Property(e => e.Name)
            .IsRequired()
            .IsUnicode(false)
            .HasMaxLength(50);
        builder.Property(e => e.Code)
            .IsRequired()
            .IsUnicode(false)
            .HasMaxLength(50);
        builder.HasOne(l => l.Game)
            .WithMany().OnDelete(DeleteBehavior.NoAction);
    }
}