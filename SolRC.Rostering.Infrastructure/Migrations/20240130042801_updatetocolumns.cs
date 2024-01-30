using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace SolRC.Rostering.Infrastructure.Migrations
{
    /// <inheritdoc />
    public partial class updatetocolumns : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "IsAvailable",
                table: "Leaves");

            migrationBuilder.RenameColumn(
                name: "Schedule",
                table: "TableAssignments",
                newName: "ScheduleDate");

            migrationBuilder.AddColumn<Guid>(
                name: "HoursId",
                table: "TableAssignments",
                type: "uniqueidentifier",
                nullable: false,
                defaultValue: new Guid("00000000-0000-0000-0000-000000000000"));

            migrationBuilder.CreateIndex(
                name: "IX_TableAssignments_HoursId",
                table: "TableAssignments",
                column: "HoursId");

            migrationBuilder.AddForeignKey(
                name: "FK_TableAssignments_Times_HoursId",
                table: "TableAssignments",
                column: "HoursId",
                principalTable: "Times",
                principalColumn: "Id",
                onDelete: ReferentialAction.NoAction);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_TableAssignments_Times_HoursId",
                table: "TableAssignments");

            migrationBuilder.DropIndex(
                name: "IX_TableAssignments_HoursId",
                table: "TableAssignments");

            migrationBuilder.DropColumn(
                name: "HoursId",
                table: "TableAssignments");

            migrationBuilder.RenameColumn(
                name: "ScheduleDate",
                table: "TableAssignments",
                newName: "Schedule");

            migrationBuilder.AddColumn<bool>(
                name: "IsAvailable",
                table: "Leaves",
                type: "bit",
                nullable: false,
                defaultValue: false);
        }
    }
}
