using Microsoft.EntityFrameworkCore.Migrations;

namespace webapi_sqlserver.Migrations
{
    public partial class InitialMigration : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Commands",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    HowTo = table.Column<string>(maxLength: 250, nullable: false),
                    Line = table.Column<string>(nullable: false),
                    Platform = table.Column<string>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Commands", x => x.Id);
                });

            migrationBuilder.InsertData(
                table: "Commands",
                columns: new[] { "Id", "HowTo", "Line", "Platform" },
                values: new object[] { 1, "Boil an egg", "Boil water", "Kettle & Pan" });

            migrationBuilder.InsertData(
                table: "Commands",
                columns: new[] { "Id", "HowTo", "Line", "Platform" },
                values: new object[] { 2, "Cut bread", "Get a knife", "Knife & chopping board" });

            migrationBuilder.InsertData(
                table: "Commands",
                columns: new[] { "Id", "HowTo", "Line", "Platform" },
                values: new object[] { 3, "Make cup of tea", "Place teabag in cup", "Kettle & Pan" });
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Commands");
        }
    }
}
