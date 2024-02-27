using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace SolRC.Rostering.Infrastructure.Migrations
{
    /// <inheritdoc />
    public partial class ClusterReliever : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Clusters_Employees_RelieverId",
                table: "Clusters");

            migrationBuilder.DropForeignKey(
                name: "FK_TableAssignments_Tables_TableId",
                table: "TableAssignments");

            migrationBuilder.AlterColumn<Guid>(
                name: "RelieverId",
                table: "Clusters",
                type: "uniqueidentifier",
                nullable: true,
                oldClrType: typeof(Guid),
                oldType: "uniqueidentifier");

            migrationBuilder.AddForeignKey(
                name: "FK_Clusters_Employees_RelieverId",
                table: "Clusters",
                column: "RelieverId",
                principalTable: "Employees",
                principalColumn: "Id");

            migrationBuilder.AddForeignKey(
                name: "FK_TableAssignments_Tables_TableId",
                table: "TableAssignments",
                column: "TableId",
                principalTable: "Tables",
                principalColumn: "Id");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Clusters_Employees_RelieverId",
                table: "Clusters");

            migrationBuilder.DropForeignKey(
                name: "FK_TableAssignments_Tables_TableId",
                table: "TableAssignments");

            migrationBuilder.AlterColumn<Guid>(
                name: "RelieverId",
                table: "Clusters",
                type: "uniqueidentifier",
                nullable: false,
                defaultValue: new Guid("00000000-0000-0000-0000-000000000000"),
                oldClrType: typeof(Guid),
                oldType: "uniqueidentifier",
                oldNullable: true);

            migrationBuilder.AddForeignKey(
                name: "FK_Clusters_Employees_RelieverId",
                table: "Clusters",
                column: "RelieverId",
                principalTable: "Employees",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_TableAssignments_Tables_TableId",
                table: "TableAssignments",
                column: "TableId",
                principalTable: "Tables",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }
    }
}
