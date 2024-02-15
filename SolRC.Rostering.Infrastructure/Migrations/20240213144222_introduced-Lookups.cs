using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace SolRC.Rostering.Infrastructure.Migrations
{
    /// <inheritdoc />
    public partial class introducedLookups : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.RenameColumn(
                name: "ShiftClass",
                table: "Times",
                newName: "ShiftClassId");

            migrationBuilder.RenameColumn(
                name: "Game",
                table: "Tables",
                newName: "GameId");

            migrationBuilder.RenameColumn(
                name: "Game",
                table: "Skills",
                newName: "GameId");

            migrationBuilder.RenameColumn(
                name: "Status",
                table: "Employees",
                newName: "StatusId");

            migrationBuilder.AddColumn<Guid>(
                name: "PitId",
                table: "Employees",
                type: "uniqueidentifier",
                nullable: true);

            migrationBuilder.CreateTable(
                name: "Lookups",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Code = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Desc = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Lookups", x => x.Id);
                });

            migrationBuilder.CreateIndex(
                name: "IX_Times_ShiftClassId",
                table: "Times",
                column: "ShiftClassId");

            migrationBuilder.CreateIndex(
                name: "IX_Tables_GameId",
                table: "Tables",
                column: "GameId");

            migrationBuilder.CreateIndex(
                name: "IX_Skills_GameId",
                table: "Skills",
                column: "GameId");

            migrationBuilder.CreateIndex(
                name: "IX_Employees_PitId",
                table: "Employees",
                column: "PitId");

            migrationBuilder.CreateIndex(
                name: "IX_Employees_StatusId",
                table: "Employees",
                column: "StatusId");

            migrationBuilder.AddForeignKey(
                name: "FK_Employees_Lookups_StatusId",
                table: "Employees",
                column: "StatusId",
                principalTable: "Lookups",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_Employees_Pits_PitId",
                table: "Employees",
                column: "PitId",
                principalTable: "Pits",
                principalColumn: "Id");

            migrationBuilder.AddForeignKey(
                name: "FK_Skills_Lookups_GameId",
                table: "Skills",
                column: "GameId",
                principalTable: "Lookups",
                principalColumn: "Id");

            migrationBuilder.AddForeignKey(
                name: "FK_Tables_Lookups_GameId",
                table: "Tables",
                column: "GameId",
                principalTable: "Lookups",
                principalColumn: "Id");

            migrationBuilder.AddForeignKey(
                name: "FK_Times_Lookups_ShiftClassId",
                table: "Times",
                column: "ShiftClassId",
                principalTable: "Lookups",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Employees_Lookups_StatusId",
                table: "Employees");

            migrationBuilder.DropForeignKey(
                name: "FK_Employees_Pits_PitId",
                table: "Employees");

            migrationBuilder.DropForeignKey(
                name: "FK_Skills_Lookups_GameId",
                table: "Skills");

            migrationBuilder.DropForeignKey(
                name: "FK_Tables_Lookups_GameId",
                table: "Tables");

            migrationBuilder.DropForeignKey(
                name: "FK_Times_Lookups_ShiftClassId",
                table: "Times");

            migrationBuilder.DropTable(
                name: "Lookups");

            migrationBuilder.DropIndex(
                name: "IX_Times_ShiftClassId",
                table: "Times");

            migrationBuilder.DropIndex(
                name: "IX_Tables_GameId",
                table: "Tables");

            migrationBuilder.DropIndex(
                name: "IX_Skills_GameId",
                table: "Skills");

            migrationBuilder.DropIndex(
                name: "IX_Employees_PitId",
                table: "Employees");

            migrationBuilder.DropIndex(
                name: "IX_Employees_StatusId",
                table: "Employees");

            migrationBuilder.DropColumn(
                name: "PitId",
                table: "Employees");

            migrationBuilder.RenameColumn(
                name: "ShiftClassId",
                table: "Times",
                newName: "ShiftClass");

            migrationBuilder.RenameColumn(
                name: "GameId",
                table: "Tables",
                newName: "Game");

            migrationBuilder.RenameColumn(
                name: "GameId",
                table: "Skills",
                newName: "Game");

            migrationBuilder.RenameColumn(
                name: "StatusId",
                table: "Employees",
                newName: "Status");
        }
    }
}
