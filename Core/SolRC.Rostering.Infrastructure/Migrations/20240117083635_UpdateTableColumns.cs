using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace SolRC.Rostering.Infrastructure.Migrations
{
    /// <inheritdoc />
    public partial class UpdateTableColumns : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.RenameColumn(
                name: "TableName",
                table: "Tables",
                newName: "Name");

            migrationBuilder.RenameColumn(
                name: "TableGame",
                table: "Tables",
                newName: "Game");

            migrationBuilder.RenameColumn(
                name: "TableCode",
                table: "Tables",
                newName: "Code");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.RenameColumn(
                name: "Name",
                table: "Tables",
                newName: "TableName");

            migrationBuilder.RenameColumn(
                name: "Game",
                table: "Tables",
                newName: "TableGame");

            migrationBuilder.RenameColumn(
                name: "Code",
                table: "Tables",
                newName: "TableCode");
        }
    }
}
