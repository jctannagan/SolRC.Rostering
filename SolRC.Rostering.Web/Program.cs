using Microsoft.EntityFrameworkCore;
using SolRC.Rostering.Domain.Contracts.Repository;
using SolRC.Rostering.Domain.Contracts.Services;
using SolRC.Rostering.Domain.Repository;
using SolRC.Rostering.Domain.Services;
using SolRC.Rostering.Infrastructure;
using SolRC.Rostering.Infrastructure.Data;
using SolRC.Rostering.Infrastructure.Repository;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

builder.Services.AddControllers();

builder.Services.AddDbContext<RosteringDbContext>(options =>
    options.UseSqlServer(builder.Configuration.GetConnectionString("DefaultConnection"), optionsBuilder =>
    {
        optionsBuilder.CommandTimeout(340);
    })
    );

builder.Services.AddScoped<IClusterService, ClusterService>();
builder.Services.AddScoped<IClusterRepository, ClusterRepository>();
builder.Services.AddScoped<ITableService, TableService>();
builder.Services.AddScoped<ITableRepository, TableRepository>();
builder.Services.AddScoped<IEmployeeService, EmployeeService>();
builder.Services.AddScoped<IEmployeeRepository, EmployeeRepository>();
builder.Services.AddScoped<IScheduleService, ScheduleService>();
builder.Services.AddScoped<ITableAssignmentService, TableAssignmentService>();
builder.Services.AddScoped<ITableAssignmentRepository, TableAssignmentRepository>();
builder.Services.AddScoped<IExcelFileService,ExcelFileService>();

builder.Services.AddCors(options =>
{
    options.AddDefaultPolicy(
        builder =>
        {

            //you can configure your custom policy
            builder.AllowAnyOrigin()
                .AllowAnyHeader()
                .AllowAnyMethod();
        });
});

var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseCors();

app.UseHttpsRedirection();

// app.MapGet("/api/test", (IScheduleService scheduleService, IExcelFileService excelFileService) =>
// {
    // var employees = employeeService.ReadEmployees(@"..\Data\ZohoEmployeeList.csv");
    // var employeeLeaves = employeeService.ReadEmployeeLeaves(@"..\Data\EmployeeLeaves.csv");
    //     
    // employees.ForEach(x =>
    // {
    //     x.Leaves = new();
    //     x.Leaves.AddRange(employeeLeaves.Where(p => p.EmployeeNumber == x.Number).ToList());
    // });
    //
    // employeeService.AddBulk(employees);

//     var tableAssignments = scheduleService.GenerateScheduleV2();
//     excelFileService.ListToExcel(tableAssignments);
//     excelFileService.ListToExcelTable(tableAssignments);
//     return Results.Ok("Good");
// });

//app.MapGet("/api/download", (IScheduleService scheduleService, IExcelFileService excelFileService) =>
//{
//    // Define the path to the file
//    var filePath = Path.Combine(Directory.GetCurrentDirectory(), "Files", "example.xlsx");

//    // Check if the file exists
//    if (!File.Exists(filePath))
//    {
//        return Results.NotFound();
//    }

//    // Read the file into a FileStream
//    var fileStream = new FileStream(filePath, FileMode.Open, FileAccess.Read);

//    // Return the file with a MIME type for .xlsx files
//    return File(fileStream, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet", Path.GetFileName(filePath));
//});

app.MapControllers();

app.Run();
