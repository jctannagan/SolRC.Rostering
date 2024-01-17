using SolRC.Rostering.Domain.Common.Enums;

namespace SolRC.Rostering.Domain.Models;

public record Times(int Id, ShiftEnum ShiftClass, DateTime StartTime, DateTime EndTime, int Demand);