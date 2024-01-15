using SolRC.Rostering.Domain.Common;

namespace SolRC.Rostering.Domain.Models;

public record Table(string TableName,
                    string TableCode,
                    Game TableGame,
                    string Location,
                    IEnumerable<Times> OperatingTimes);
