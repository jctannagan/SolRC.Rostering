﻿using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using SolRC.Rostering.Domain.Models;

namespace SolRC.Rostering.Infrastructure.Data.Configuration;

public class ClusterConfiguration: IEntityTypeConfiguration<Cluster>
{
    public void Configure(EntityTypeBuilder<Cluster> builder)
    {
        builder.HasKey(e => e.Id);
    }
}