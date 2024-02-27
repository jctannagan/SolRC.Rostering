using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using SolRC.Rostering.Domain.Models;

namespace SolRC.Rostering.Infrastructure.Data.Configuration;

public class TableConfiguration : IEntityTypeConfiguration<Table>
{
    public void Configure(EntityTypeBuilder<Table> table)
    {
        table.HasKey(e => e.Id);
        table.Property(e => e.Name)
            .IsRequired()
            .IsUnicode(false)
            .HasMaxLength(50);
        table.Property(e => e.Code)
            .IsRequired()
            .IsUnicode(false)
            .HasMaxLength(50);
        table.HasOne(l => l.Game)
            .WithMany().OnDelete(DeleteBehavior.NoAction);
        table.HasMany(t => t.OperatingShifts)
            .WithOne(o => o.Table)
            .HasForeignKey(o => o.TableId);
        table.HasOne<Cluster>(p => p.Cluster)
            .WithMany(p => p.TableGames)
            .HasForeignKey(p => p.ClusterId);
    }
}