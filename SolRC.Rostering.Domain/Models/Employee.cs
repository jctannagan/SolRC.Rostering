using SolRC.Rostering.Domain.Common.Enums;

namespace SolRC.Rostering.Domain.Models;

public record Employee(string FirstName, string LastName, List<Skill> Skill, RoleEnum Role);