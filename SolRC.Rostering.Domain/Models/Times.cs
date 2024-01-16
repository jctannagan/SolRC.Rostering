using SolRC.Rostering.Domain.Common.Enums;

namespace SolRC.Rostering.Domain.Models;

public record Times(ShiftEnum ShiftClass, DateTime StartTime, DateTime EndTime, int Demand);