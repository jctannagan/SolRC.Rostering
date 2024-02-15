using SolRC.Rostering.Domain.Common.Enums;

namespace SolRC.Rostering.Domain.Models;

public record Skill
{
    public Guid Id { get; init; }
    public Lookup Game { get; init; }
    
    private readonly int _proficiencyLevel;
    
    public int Proficiency
    {
        get => _proficiencyLevel;
        init
        {
            if (value is < 0 or > 100)
                throw new ArgumentOutOfRangeException(nameof(Proficiency));
            _proficiencyLevel = value;
        }
    }
    
    public string Remarks { get; init; }
    
    public Employee Employee { get; set; }
};