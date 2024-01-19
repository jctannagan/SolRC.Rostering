﻿using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using SolRC.Rostering.Domain.Models;

namespace SolRC.Rostering.Infrastructure.Data.Configuration;

public class EmployeeConfiguration : IEntityTypeConfiguration<Employee>
{
    public void Configure(EntityTypeBuilder<Employee> builder)
    {
        builder.HasKey(e => e.Id);
        builder.Property(e => e.Code)
            .HasMaxLength(50);
        builder.Property(e => e.FirstName)
            .IsRequired()
            .HasMaxLength(50);
        builder.Property(e => e.LastName)
            .IsRequired()
            .HasMaxLength(50);
    }
}