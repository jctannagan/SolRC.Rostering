using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Design;

namespace SolRC.Rostering.Infrastructure.Data;

public class RosteringDbContextFactory: IDesignTimeDbContextFactory<RosteringDbContext>
{
    public RosteringDbContext CreateDbContext(string[] args)
    {
        var optionBuilder = new DbContextOptionsBuilder();
        optionBuilder.UseSqlServer(
            @"Server=LEGION-WS-JEFF;Database=TGRMainDB;TrustServerCertificate=True;Trusted_Connection=True;Integrated Security=True;");

        return new RosteringDbContext(optionBuilder.Options);
    }
}