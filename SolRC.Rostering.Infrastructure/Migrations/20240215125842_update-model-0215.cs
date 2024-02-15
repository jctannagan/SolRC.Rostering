using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace SolRC.Rostering.Infrastructure.Migrations
{
    /// <inheritdoc />
    public partial class updatemodel0215 : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Leaves_Employees_EmployeeNumber",
                table: "Leaves");
            
            migrationBuilder.DropUniqueConstraint(
                name: "AK_Employees_Number",
                table: "Employees");

            migrationBuilder.DropColumn(
                name: "Location",
                table: "Tables");

            migrationBuilder.DropColumn(
                name: "MaxRequiredProficiency",
                table: "Tables");

            migrationBuilder.RenameColumn(
                name: "MinRequiredProficiency",
                table: "Tables",
                newName: "RequiredProficiency");

            migrationBuilder.RenameColumn(
                name: "Number",
                table: "Employees",
                newName: "EmployeeNumber");

            migrationBuilder.AddColumn<Guid>(
                name: "LocationId",
                table: "Tables",
                type: "uniqueidentifier",
                nullable: false,
                defaultValue: new Guid("00000000-0000-0000-0000-000000000000"));

            migrationBuilder.AddUniqueConstraint(
                name: "AK_Employees_EmployeeNumber",
                table: "Employees",
                column: "EmployeeNumber");

            migrationBuilder.CreateIndex(
                name: "IX_Tables_LocationId",
                table: "Tables",
                column: "LocationId");

            migrationBuilder.AddForeignKey(
                name: "FK_Tables_Pits_LocationId",
                table: "Tables",
                column: "LocationId",
                principalTable: "Pits",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
            
            migrationBuilder.AddForeignKey(
                name: "FK_Leaves_Employees_EmployeeNumber",
                table: "Leaves",
                column: "EmployeeNumber",
                principalTable: "Employees",
                principalColumn: "EmployeeNumber");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Tables_Pits_LocationId",
                table: "Tables");

            migrationBuilder.DropIndex(
                name: "IX_Tables_LocationId",
                table: "Tables");

            migrationBuilder.DropUniqueConstraint(
                name: "AK_Employees_EmployeeNumber",
                table: "Employees");

            migrationBuilder.DropColumn(
                name: "LocationId",
                table: "Tables");

            migrationBuilder.RenameColumn(
                name: "RequiredProficiency",
                table: "Tables",
                newName: "MinRequiredProficiency");

            migrationBuilder.RenameColumn(
                name: "EmployeeNumber",
                table: "Employees",
                newName: "Number");

            migrationBuilder.AddColumn<string>(
                name: "Location",
                table: "Tables",
                type: "varchar(50)",
                unicode: false,
                maxLength: 50,
                nullable: false,
                defaultValue: "");

            migrationBuilder.AddColumn<int>(
                name: "MaxRequiredProficiency",
                table: "Tables",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddUniqueConstraint(
                name: "AK_Employees_Number",
                table: "Employees",
                column: "Number");
        }
    }
}
