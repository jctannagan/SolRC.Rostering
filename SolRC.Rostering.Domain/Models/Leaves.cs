﻿namespace SolRC.Rostering.Domain.Models;

public class Leave
{
    public Leave()
    {
        Id = Guid.NewGuid();
    }
    
    public Guid Id { get; init; }
    public int EmployeeNumber { get; init; }
    public DateTime Date { get; init; }
    public Employee Employee { get; set; }
}