using SolRC.Rostering.Domain.Common;

namespace SolRC.Rostering.Domain.Models;

public record Times(Shift ShiftClass, DateTime StartTime, DateTime EndTime, int Demand);