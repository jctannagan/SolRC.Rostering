using SolRC.Rostering.Domain.Common.Enums;

namespace SolRC.Rostering.Domain.Models;

public record Skill(string Code, GameEnum Game, int Proficiency, string Remarks)
{
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
};