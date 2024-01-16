using SolRC.Rostering.Domain.Common.Enums;

namespace SolRC.Rostering.Domain.Models;

public record Table(string TableName,
                    string TableCode,
                    GameEnum TableGame,
                    string Location,
                    GameProficiency RequiredProficiency,
                    List<Times> OperatingShift,
                    List<TableAssignment> StaffAssignment
                    );