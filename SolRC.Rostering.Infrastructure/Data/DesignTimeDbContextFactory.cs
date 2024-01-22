using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Design;

namespace SolRC.Rostering.Infrastructure.Data;

public class RosteringDbContextFactory : IDesignTimeDbContextFactory<RosteringDbContext>
{
    public RosteringDbContext CreateDbContext(string[] args)
    {
        var optionsBuilder = new DbContextOptionsBuilder<RosteringDbContext>();
        optionsBuilder.UseSqlServer(@"Server=LEGION-WS-JEFF;Database=RosteringDBv1;TrustServerCertificate=True;Trusted_Connection=True;Integrated Security=True;");

        return new RosteringDbContext(optionsBuilder.Options);
    }
}