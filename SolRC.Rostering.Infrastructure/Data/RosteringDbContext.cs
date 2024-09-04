using System.Reflection;
using Microsoft.EntityFrameworkCore;
using SolRC.Rostering.Domain.Models;

namespace SolRC.Rostering.Infrastructure.Data;

public class RosteringDbContext : DbContext
{
    public DbSet<Employee> Employees { get; set; }
    public DbSet<Table> Tables { get; set; }
    public DbSet<Assignments> Assignments { get; set; }
    public DbSet<Time> Times { get; set; }
    public DbSet<Skill> Skills { get; set; }
    public DbSet<Leave> Leaves { get; set; }
    public DbSet<GamingFloor> GamingFloor { get; set; }
    public DbSet<Pit> Pits { get; set; }
    public DbSet<Cluster> Clusters { get; set; }
    public DbSet<Lookup> Lookups { get; set; }

    public RosteringDbContext(DbContextOptions options) : base(options)
    {
        
    }
    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.ApplyConfigurationsFromAssembly(Assembly.GetExecutingAssembly());
    }
}