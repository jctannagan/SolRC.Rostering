using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace SolRC.Rostering.Infrastructure.Migrations
{
    /// <inheritdoc />
    public partial class InitialCreate : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "GamingFloor",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    Name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Code = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Details = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_GamingFloor", x => x.Id);
                });

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

            migrationBuilder.CreateTable(
                name: "Pits",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    Name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    GamingFloorId = table.Column<Guid>(type: "uniqueidentifier", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Pits", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Pits_GamingFloor_GamingFloorId",
                        column: x => x.GamingFloorId,
                        principalTable: "GamingFloor",
                        principalColumn: "Id");
                });

            migrationBuilder.CreateTable(
                name: "Employees",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    EmployeeNumber = table.Column<int>(type: "int", nullable: false),
                    FirstName = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    LastName = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    Email = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    StatusId = table.Column<int>(type: "int", nullable: false),
                    ShiftStart = table.Column<DateTime>(type: "datetime2", nullable: false),
                    ShiftEnd = table.Column<DateTime>(type: "datetime2", nullable: false),
                    Role = table.Column<int>(type: "int", nullable: true),
                    PitId = table.Column<Guid>(type: "uniqueidentifier", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Employees", x => x.Id);
                    table.UniqueConstraint("AK_Employees_EmployeeNumber", x => x.EmployeeNumber);
                    table.ForeignKey(
                        name: "FK_Employees_Lookups_StatusId",
                        column: x => x.StatusId,
                        principalTable: "Lookups",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_Employees_Pits_PitId",
                        column: x => x.PitId,
                        principalTable: "Pits",
                        principalColumn: "Id");
                });

            migrationBuilder.CreateTable(
                name: "Clusters",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    Name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    RelieverId = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    PitId = table.Column<Guid>(type: "uniqueidentifier", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Clusters", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Clusters_Employees_RelieverId",
                        column: x => x.RelieverId,
                        principalTable: "Employees",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_Clusters_Pits_PitId",
                        column: x => x.PitId,
                        principalTable: "Pits",
                        principalColumn: "Id");
                });

            migrationBuilder.CreateTable(
                name: "Leaves",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    EmployeeNumber = table.Column<int>(type: "int", nullable: false),
                    Date = table.Column<DateTime>(type: "datetime2", nullable: false),
                    EmployeeId = table.Column<Guid>(type: "uniqueidentifier", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Leaves", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Leaves_Employees_EmployeeId",
                        column: x => x.EmployeeId,
                        principalTable: "Employees",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_Leaves_Employees_EmployeeNumber",
                        column: x => x.EmployeeNumber,
                        principalTable: "Employees",
                        principalColumn: "EmployeeNumber");
                });

            migrationBuilder.CreateTable(
                name: "Skills",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    GameId = table.Column<int>(type: "int", nullable: false),
                    Proficiency = table.Column<int>(type: "int", nullable: false),
                    Remarks = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    EmployeeId = table.Column<Guid>(type: "uniqueidentifier", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Skills", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Skills_Employees_EmployeeId",
                        column: x => x.EmployeeId,
                        principalTable: "Employees",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_Skills_Lookups_GameId",
                        column: x => x.GameId,
                        principalTable: "Lookups",
                        principalColumn: "Id");
                });

            migrationBuilder.CreateTable(
                name: "Tables",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    Name = table.Column<string>(type: "varchar(50)", unicode: false, maxLength: 50, nullable: false),
                    Code = table.Column<string>(type: "varchar(50)", unicode: false, maxLength: 50, nullable: false),
                    GameId = table.Column<int>(type: "int", nullable: true),
                    ClusterId = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    RequiredProficiency = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Tables", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Tables_Clusters_ClusterId",
                        column: x => x.ClusterId,
                        principalTable: "Clusters",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_Tables_Lookups_GameId",
                        column: x => x.GameId,
                        principalTable: "Lookups",
                        principalColumn: "Id");
                });

            migrationBuilder.CreateTable(
                name: "Times",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    ShiftClassId = table.Column<int>(type: "int", nullable: true),
                    Open = table.Column<DateTime>(type: "datetime2", nullable: false),
                    Close = table.Column<DateTime>(type: "datetime2", nullable: false),
                    Demand = table.Column<int>(type: "int", nullable: false),
                    TableId = table.Column<Guid>(type: "uniqueidentifier", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Times", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Times_Lookups_ShiftClassId",
                        column: x => x.ShiftClassId,
                        principalTable: "Lookups",
                        principalColumn: "Id");
                    table.ForeignKey(
                        name: "FK_Times_Tables_TableId",
                        column: x => x.TableId,
                        principalTable: "Tables",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "TableAssignments",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    BatchId = table.Column<int>(type: "int", nullable: false),
                    ScheduleDate = table.Column<DateTime>(type: "datetime2", nullable: false),
                    TableId = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    HoursId = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    EmployeeId = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    IsPublished = table.Column<bool>(type: "bit", nullable: false),
                    PublishedDate = table.Column<DateTime>(type: "datetime2", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_TableAssignments", x => x.Id);
                    table.ForeignKey(
                        name: "FK_TableAssignments_Employees_EmployeeId",
                        column: x => x.EmployeeId,
                        principalTable: "Employees",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.NoAction);
                    table.ForeignKey(
                        name: "FK_TableAssignments_Tables_TableId",
                        column: x => x.TableId,
                        principalTable: "Tables",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.NoAction);
                    table.ForeignKey(
                        name: "FK_TableAssignments_Times_HoursId",
                        column: x => x.HoursId,
                        principalTable: "Times",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.NoAction);
                });

            migrationBuilder.CreateIndex(
                name: "IX_Clusters_PitId",
                table: "Clusters",
                column: "PitId");

            migrationBuilder.CreateIndex(
                name: "IX_Clusters_RelieverId",
                table: "Clusters",
                column: "RelieverId");

            migrationBuilder.CreateIndex(
                name: "IX_Employees_PitId",
                table: "Employees",
                column: "PitId");

            migrationBuilder.CreateIndex(
                name: "IX_Employees_StatusId",
                table: "Employees",
                column: "StatusId");

            migrationBuilder.CreateIndex(
                name: "IX_Leaves_EmployeeId",
                table: "Leaves",
                column: "EmployeeId");

            migrationBuilder.CreateIndex(
                name: "IX_Leaves_EmployeeNumber",
                table: "Leaves",
                column: "EmployeeNumber");

            migrationBuilder.CreateIndex(
                name: "IX_Pits_GamingFloorId",
                table: "Pits",
                column: "GamingFloorId");

            migrationBuilder.CreateIndex(
                name: "IX_Skills_EmployeeId",
                table: "Skills",
                column: "EmployeeId");

            migrationBuilder.CreateIndex(
                name: "IX_Skills_GameId",
                table: "Skills",
                column: "GameId");

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

            migrationBuilder.CreateIndex(
                name: "IX_Tables_ClusterId",
                table: "Tables",
                column: "ClusterId");

            migrationBuilder.CreateIndex(
                name: "IX_Tables_GameId",
                table: "Tables",
                column: "GameId");

            migrationBuilder.CreateIndex(
                name: "IX_Times_ShiftClassId",
                table: "Times",
                column: "ShiftClassId");

            migrationBuilder.CreateIndex(
                name: "IX_Times_TableId",
                table: "Times",
                column: "TableId");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Leaves");

            migrationBuilder.DropTable(
                name: "Skills");

            migrationBuilder.DropTable(
                name: "TableAssignments");

            migrationBuilder.DropTable(
                name: "Times");

            migrationBuilder.DropTable(
                name: "Tables");

            migrationBuilder.DropTable(
                name: "Clusters");

            migrationBuilder.DropTable(
                name: "Employees");

            migrationBuilder.DropTable(
                name: "Lookups");

            migrationBuilder.DropTable(
                name: "Pits");

            migrationBuilder.DropTable(
                name: "GamingFloor");
        }
    }
}
