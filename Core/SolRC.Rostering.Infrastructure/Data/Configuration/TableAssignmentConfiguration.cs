using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using SolRC.Rostering.Domain.Models;

namespace SolRC.Rostering.Infrastructure.Data.Configuration;

public class TableAssignmentConfiguration : IEntityTypeConfiguration<TableAssignment>
{
    public void Configure(EntityTypeBuilder<TableAssignment> builder)
    {
        builder.HasKey(e => e.Id);
    }
}