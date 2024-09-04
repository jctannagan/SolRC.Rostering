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
builder.Services.AddScoped<ITableAssignmentRepository, AssignmentRepository>();
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

app.MapControllers();

app.Run();
