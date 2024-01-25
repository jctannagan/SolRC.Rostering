using Microsoft.EntityFrameworkCore;
using Serilog;
using SolRc.Rostering.Application;
using SolRC.Rostering.Domain.Contracts.Services;
using SolRC.Rostering.Domain.Repository;
using SolRC.Rostering.Domain.Services;
using SolRC.Rostering.Infrastructure;
using SolRC.Rostering.Infrastructure.Data;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

builder.Host.UseSerilog((context, configuration) =>
    configuration
        .ReadFrom
        .Configuration(context.Configuration));
builder.Services.AddDbContext<RosteringDbContext>(options =>
    options.UseSqlServer(builder.Configuration.GetConnectionString("DefaultConnection")));

builder.Services
    .AddApplication()
    .AddInfrastructure();
builder.Services.AddScoped<IEmployeeService, EmployeeService>();
builder.Services.AddScoped<IEmployeeRepository, EmployeeRepository>();

var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseSerilogRequestLogging();

app.UseHttpsRedirection();

app.MapGet("/test", (IEmployeeService employeeService) =>
{
    var employees = employeeService.ReadEmployees(@"..\Data\ZohoEmployeeList.csv");
    var employeeLeaves = employeeService.ReadEmployeeLeaves(@"..\Data\EmployeeLeaves.csv");
        
    employees.ForEach(x =>
    {
        x.Leaves = new();
        x.Leaves.AddRange(employeeLeaves.Where(p => p.EmployeeNumber == x.Number).ToList());
    });
    
    employeeService.Add(employees.First());
    
    return Results.Ok("Good");
});

app.Run();
