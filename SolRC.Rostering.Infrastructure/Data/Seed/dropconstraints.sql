USE [RosteringDBv1]
GO

ALTER TABLE [dbo].[Clusters] DROP CONSTRAINT [FK_Clusters_Employees_RelieverId]
GO

ALTER TABLE [dbo].[Clusters] DROP CONSTRAINT [FK_Clusters_Pits_PitId]
GO

ALTER TABLE [dbo].[Employees] DROP CONSTRAINT [FK_Employees_Lookups_StatusId]
GO

ALTER TABLE [dbo].[Employees] DROP CONSTRAINT [FK_Employees_Pits_PitId]
GO

ALTER TABLE [dbo].[Leaves] DROP CONSTRAINT [FK_Leaves_Employees_EmployeeId]
GO

ALTER TABLE [dbo].[Leaves] DROP CONSTRAINT [FK_Leaves_Employees_EmployeeNumber]
GO

ALTER TABLE [dbo].[Pits] DROP CONSTRAINT [FK_Pits_GamingFloor_GamingFloorId]
GO

/****** Object:  Index [AK_Employees_Number]    Script Date: 15/02/2024 8:43:20 pm ******/
ALTER TABLE [dbo].[Employees] DROP CONSTRAINT [AK_Employees_EmployeeNumber]
GO

ALTER TABLE [dbo].[Skills] DROP CONSTRAINT [FK_Skills_Employees_EmployeeId]
GO

ALTER TABLE [dbo].[Skills] DROP CONSTRAINT [FK_Skills_Lookups_GameId]
GO

ALTER TABLE [dbo].[TableAssignments] DROP CONSTRAINT [FK_TableAssignments_Employees_EmployeeId]
GO

ALTER TABLE [dbo].[TableAssignments] DROP CONSTRAINT [FK_TableAssignments_Tables_TableId]
GO

ALTER TABLE [dbo].[TableAssignments] DROP CONSTRAINT [FK_TableAssignments_Times_HoursId]
GO

ALTER TABLE [dbo].[Tables] DROP CONSTRAINT [FK_Tables_Clusters_ClusterId]
GO

ALTER TABLE [dbo].[Times] DROP CONSTRAINT [FK_Times_Lookups_ShiftClassId]
GO

ALTER TABLE [dbo].[Times] DROP CONSTRAINT [FK_Times_Tables_TableId]
GO