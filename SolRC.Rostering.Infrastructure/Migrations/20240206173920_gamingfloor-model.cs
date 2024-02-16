using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace SolRC.Rostering.Infrastructure.Migrations
{
    /// <inheritdoc />
    public partial class gamingfloormodel : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<Guid>(
                name: "ClusterId",
                table: "Tables",
                type: "uniqueidentifier",
                nullable: true);

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

            migrationBuilder.CreateIndex(
                name: "IX_Tables_ClusterId",
                table: "Tables",
                column: "ClusterId");

            migrationBuilder.CreateIndex(
                name: "IX_Clusters_PitId",
                table: "Clusters",
                column: "PitId");

            migrationBuilder.CreateIndex(
                name: "IX_Clusters_RelieverId",
                table: "Clusters",
                column: "RelieverId");

            migrationBuilder.CreateIndex(
                name: "IX_Pits_GamingFloorId",
                table: "Pits",
                column: "GamingFloorId");

            migrationBuilder.AddForeignKey(
                name: "FK_Tables_Clusters_ClusterId",
                table: "Tables",
                column: "ClusterId",
                principalTable: "Clusters",
                principalColumn: "Id");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Tables_Clusters_ClusterId",
                table: "Tables");

            migrationBuilder.DropTable(
                name: "Clusters");

            migrationBuilder.DropTable(
                name: "Pits");

            migrationBuilder.DropTable(
                name: "GamingFloor");

            migrationBuilder.DropIndex(
                name: "IX_Tables_ClusterId",
                table: "Tables");

            migrationBuilder.DropColumn(
                name: "ClusterId",
                table: "Tables");
        }
    }
}
