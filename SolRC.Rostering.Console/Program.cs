using SolRC.Rostering.Domain.Common;
using SolRC.Rostering.Domain.Common.Enums;
using SolRC.Rostering.Domain.Models;
using Shift = SolRC.Rostering.Domain.Models.Shift;

namespace SolRC.Rostering.Console;

using System;
class Program
{
    static void Main(string[] args)
    {
        var crapsTable = new Table(
            "Craps Table 1",
            "CT-001",
            GameEnum.Craps,
            "Casino Floor",
            new GameProficiency(70,100),
            //The operating shift must be connected with staff assignments.
            new List<Times>
            {
                new Times(ShiftEnum.Day, new DateTime(2024, 1, 17, 8, 0, 0), new DateTime(2024, 1, 17, 16, 0, 0), 2), // Day shift requires 2 staff
                // other shifts ?
            },
            //This is the part where we randomly assign staff to table based on Schedule and Skills (Table and Personnel).
            //Also consider other roles assigned here as well such as Floor Supervisors, Relievers, etc... 
            new List<TableAssignment>
            {
                new TableAssignment(
                    new Employee("John", "Doe", new List<Skill> { /* John's skills */ }, RoleEnum.Dealer),
                    new Shift(new DateTime(2024, 1, 17, 8, 0, 0), new DateTime(2024, 1, 17, 16, 0, 0)) // Assigning John to Day shift
                ),
                new TableAssignment(
                    new Employee("Jane", "Smith", new List<Skill> { /* Jane's skills */ }, RoleEnum.Dealer),
                    new Shift(new DateTime(2024, 1, 17, 8, 0, 0), new DateTime(2024, 1, 17, 16, 0, 0)) // Assigning Jane to Day shift
                ),
                // Add more assignments as per demand
            }
        );
    }
}