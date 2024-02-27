using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace SolRC.Rostering.Infrastructure.Migrations
{
    /// <inheritdoc />
    public partial class EmployeeRoles : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Clusters_Pits_PitId",
                table: "Clusters");

            migrationBuilder.RenameColumn(
                name: "Role",
                table: "Employees",
                newName: "RoleId");

            migrationBuilder.AlterColumn<Guid>(
                name: "PitId",
                table: "Clusters",
                type: "uniqueidentifier",
                nullable: false,
                defaultValue: new Guid("00000000-0000-0000-0000-000000000000"),
                oldClrType: typeof(Guid),
                oldType: "uniqueidentifier",
                oldNullable: true);

            migrationBuilder.CreateIndex(
                name: "IX_Employees_RoleId",
                table: "Employees",
                column: "RoleId");

            migrationBuilder.AddForeignKey(
                name: "FK_Clusters_Pits_PitId",
                table: "Clusters",
                column: "PitId",
                principalTable: "Pits",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_Employees_Lookups_RoleId",
                table: "Employees",
                column: "RoleId",
                principalTable: "Lookups",
                principalColumn: "Id");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Clusters_Pits_PitId",
                table: "Clusters");

            migrationBuilder.DropForeignKey(
                name: "FK_Employees_Lookups_RoleId",
                table: "Employees");

            migrationBuilder.DropIndex(
                name: "IX_Employees_RoleId",
                table: "Employees");

            migrationBuilder.RenameColumn(
                name: "RoleId",
                table: "Employees",
                newName: "Role");

            migrationBuilder.AlterColumn<Guid>(
                name: "PitId",
                table: "Clusters",
                type: "uniqueidentifier",
                nullable: true,
                oldClrType: typeof(Guid),
                oldType: "uniqueidentifier");

            migrationBuilder.AddForeignKey(
                name: "FK_Clusters_Pits_PitId",
                table: "Clusters",
                column: "PitId",
                principalTable: "Pits",
                principalColumn: "Id");
        }
    }
}
