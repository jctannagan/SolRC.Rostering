﻿using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace SolRC.Rostering.Infrastructure.Migrations
{
    /// <inheritdoc />
    public partial class updatetiomes : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Times_Tables_TableId",
                table: "Times");

            migrationBuilder.AlterColumn<Guid>(
                name: "TableId",
                table: "Times",
                type: "uniqueidentifier",
                nullable: false,
                defaultValue: new Guid("00000000-0000-0000-0000-000000000000"),
                oldClrType: typeof(Guid),
                oldType: "uniqueidentifier",
                oldNullable: true);

            migrationBuilder.AddForeignKey(
                name: "FK_Times_Tables_TableId",
                table: "Times",
                column: "TableId",
                principalTable: "Tables",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Times_Tables_TableId",
                table: "Times");

            migrationBuilder.AlterColumn<Guid>(
                name: "TableId",
                table: "Times",
                type: "uniqueidentifier",
                nullable: true,
                oldClrType: typeof(Guid),
                oldType: "uniqueidentifier");

            migrationBuilder.AddForeignKey(
                name: "FK_Times_Tables_TableId",
                table: "Times",
                column: "TableId",
                principalTable: "Tables",
                principalColumn: "Id");
        }
    }
}
