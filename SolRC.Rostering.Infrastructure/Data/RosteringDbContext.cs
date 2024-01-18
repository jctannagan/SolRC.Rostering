﻿using System.Reflection;
using Microsoft.EntityFrameworkCore;
using SolRC.Rostering.Domain.Models;

namespace SolRC.Rostering.Infrastructure.Data;

public class RosteringDbContext : DbContext
{
    public DbSet<Employee> Employees { get; set; }
    public DbSet<Table> Tables { get; set; }
    public DbSet<TableAssignment> TableAssignments { get; set; }
    public DbSet<Times> Times { get; set; }
    public DbSet<Skill> Skills { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
    {
        optionsBuilder.UseSqlServer(@"Server=LEGION-WS-JEFF;Database=RosteringDBv1;TrustServerCertificate=True;Trusted_Connection=True;Integrated Security=True;");
    }
 
    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.ApplyConfigurationsFromAssembly(Assembly.GetExecutingAssembly());
    }
}