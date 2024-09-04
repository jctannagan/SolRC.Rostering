using Microsoft.Identity.Client.Extensibility;
using SolRC.Rostering.Domain.Models;

namespace SolRC.Rostering.Domain.DTO
{
	public class AssignmentsClusterDTO
	{
		public AssignmentsClusterDTO(Guid clusterId, DateTime assignmentDate, DateTime open, DateTime close, Employee reliever)
		{
			ClusterId = clusterId;
			AssignmentDate = assignmentDate;
			OpenTime = open;
			CloseTime = close;
			Reliever = reliever;
		}
		public Guid ClusterId { get; set; }
		public DateTime AssignmentDate { get; set; }
		public DateTime OpenTime { get; set; }
		public DateTime CloseTime { get; set; }
		public Employee? Reliever { get; set; }
	}
}
