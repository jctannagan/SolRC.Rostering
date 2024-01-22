using SolRC.Rostering.Domain.Models;

namespace SolRC.Rostering.Domain.Services;

public class ScheduleService
{
    private readonly Random _rng = new Random();
    
    public TableAssignment Generate()
    {
        return new TableAssignment();
    }
}