using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace SolRC.Rostering.Infrastructure.Migrations
{
    /// <inheritdoc />
    public partial class RelieverMovedInAssignments : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Clusters_Employees_RelieverId",
                table: "Clusters");

            migrationBuilder.DropTable(
                name: "TableAssignments");

            migrationBuilder.DropIndex(
                name: "IX_Clusters_RelieverId",
                table: "Clusters");

            migrationBuilder.DropColumn(
                name: "RelieverId",
                table: "Clusters");

            migrationBuilder.CreateTable(
                name: "Assignments",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    BatchId = table.Column<int>(type: "int", nullable: false),
                    ScheduleDate = table.Column<DateTime>(type: "datetime2", nullable: false),
                    HoursId = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    TableId = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    DealerId = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    ClusterId = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    RelieverId = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    IsPublished = table.Column<bool>(type: "bit", nullable: false),
                    PublishedDate = table.Column<DateTime>(type: "datetime2", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Assignments", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Assignments_Clusters_ClusterId",
                        column: x => x.ClusterId,
                        principalTable: "Clusters",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_Assignments_Employees_DealerId",
                        column: x => x.DealerId,
                        principalTable: "Employees",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_Assignments_Employees_RelieverId",
                        column: x => x.RelieverId,
                        principalTable: "Employees",
                        principalColumn: "Id");
                    table.ForeignKey(
                        name: "FK_Assignments_Tables_TableId",
                        column: x => x.TableId,
                        principalTable: "Tables",
                        principalColumn: "Id");
                    table.ForeignKey(
                        name: "FK_Assignments_Times_HoursId",
                        column: x => x.HoursId,
                        principalTable: "Times",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_Assignments_ClusterId",
                table: "Assignments",
                column: "ClusterId");

            migrationBuilder.CreateIndex(
                name: "IX_Assignments_DealerId",
                table: "Assignments",
                column: "DealerId");

            migrationBuilder.CreateIndex(
                name: "IX_Assignments_HoursId",
                table: "Assignments",
                column: "HoursId");

            migrationBuilder.CreateIndex(
                name: "IX_Assignments_RelieverId",
                table: "Assignments",
                column: "RelieverId");

            migrationBuilder.CreateIndex(
                name: "IX_Assignments_TableId",
                table: "Assignments",
                column: "TableId");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Assignments");

            migrationBuilder.AddColumn<Guid>(
                name: "RelieverId",
                table: "Clusters",
                type: "uniqueidentifier",
                nullable: true);

            migrationBuilder.CreateTable(
                name: "TableAssignments",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    EmployeeId = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    HoursId = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    TableId = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    BatchId = table.Column<int>(type: "int", nullable: false),
                    IsPublished = table.Column<bool>(type: "bit", nullable: false),
                    PublishedDate = table.Column<DateTime>(type: "datetime2", nullable: false),
                    ScheduleDate = table.Column<DateTime>(type: "datetime2", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_TableAssignments", x => x.Id);
                    table.ForeignKey(
                        name: "FK_TableAssignments_Employees_EmployeeId",
                        column: x => x.EmployeeId,
                        principalTable: "Employees",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_TableAssignments_Tables_TableId",
                        column: x => x.TableId,
                        principalTable: "Tables",
                        principalColumn: "Id");
                    table.ForeignKey(
                        name: "FK_TableAssignments_Times_HoursId",
                        column: x => x.HoursId,
                        principalTable: "Times",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_Clusters_RelieverId",
                table: "Clusters",
                column: "RelieverId");

            migrationBuilder.CreateIndex(
                name: "IX_TableAssignments_EmployeeId",
                table: "TableAssignments",
                column: "EmployeeId");

            migrationBuilder.CreateIndex(
                name: "IX_TableAssignments_HoursId",
                table: "TableAssignments",
                column: "HoursId");

            migrationBuilder.CreateIndex(
                name: "IX_TableAssignments_TableId",
                table: "TableAssignments",
                column: "TableId");

            migrationBuilder.AddForeignKey(
                name: "FK_Clusters_Employees_RelieverId",
                table: "Clusters",
                column: "RelieverId",
                principalTable: "Employees",
                principalColumn: "Id");
        }
    }
}
