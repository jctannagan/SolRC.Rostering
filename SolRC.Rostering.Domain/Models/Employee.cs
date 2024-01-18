using SolRC.Rostering.Domain.Common.Enums;

namespace SolRC.Rostering.Domain.Models;

public record Employee(int Id, int Code, string FirstName, string LastName, Shift Shift, List<Skill> Skill, RoleEnum Role);