namespace SolRC.Rostering.Domain.Models;

public record TableAssignment(int Id,
                              int BatchId,
                              DateTime Schedule,
                              Table Table,
                              Employee Employee,
                              DateTime PublishedDate);