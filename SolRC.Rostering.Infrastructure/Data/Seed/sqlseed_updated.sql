-- SOLIARE SAMPLE DATA
--===============================================================
--===============================================================
---- INSERT GAMING FLOOR SAMPLE DATA
--===============================================================
--===============================================================

insert into GamingFloor (Id, Name, Code, Details)
values
(NEWID(), 'MASS', 'MASS', 'Mass Gaming'),
(NEWID(), 'HIGHLIMIT', 'HIGHLIMIT', 'High Limit'),
(NEWID(), 'VIP', 'VIP', 'VIP Club'),
(NEWID(), 'BRB', 'BRB', 'Baccarat Room & Bar'),
(NEWID(), 'ETG', 'ETG', 'Electronic Table Game'),
(NEWID(), 'SC', 'SC', 'Solaire Club'),
(NEWID(), 'BAY', 'BAY', 'Bay')



--===============================================================
--===============================================================
---- INSERT PIT SAMPLE DATA
--===============================================================
--===============================================================

INSERT INTO PITS (Id, Name, GamingFloorId)
VALUES
(NEWID(), '1', (SELECT Id FROM GamingFloor WHERE Code = 'MASS')),
(NEWID(), '2', (SELECT Id FROM GamingFloor WHERE Code = 'MASS')),
(NEWID(), '3', (SELECT Id FROM GamingFloor WHERE Code = 'MASS')),
(NEWID(), '7', (SELECT Id FROM GamingFloor WHERE Code = 'MASS')),
(NEWID(), '8', (SELECT Id FROM GamingFloor WHERE Code = 'MASS')),
(NEWID(), '9', (SELECT Id FROM GamingFloor WHERE Code = 'MASS')),
(NEWID(), '13', (SELECT Id FROM GamingFloor WHERE Code = 'MASS')),
(NEWID(), '15', (SELECT Id FROM GamingFloor WHERE Code = 'MASS')),
(NEWID(), '17', (SELECT Id FROM GamingFloor WHERE Code = 'MASS')),
(NEWID(), '28', (SELECT Id FROM GamingFloor WHERE Code = 'MASS')),
(NEWID(), '30', (SELECT Id FROM GamingFloor WHERE Code = 'MASS')),
(NEWID(), '56', (SELECT Id FROM GamingFloor WHERE Code = 'MASS')),
(NEWID(), '51', (SELECT Id FROM GamingFloor WHERE Code = 'BAY')),
(NEWID(), '52', (SELECT Id FROM GamingFloor WHERE Code = 'BRB')),
(NEWID(), '55', (SELECT Id FROM GamingFloor WHERE Code = 'ETG')),
(NEWID(), '16', (SELECT Id FROM GamingFloor WHERE Code = 'HIGHLIMIT')),
(NEWID(), '57', (SELECT Id FROM GamingFloor WHERE Code = 'SC')),
(NEWID(), '58', (SELECT Id FROM GamingFloor WHERE Code = 'SC')),
(NEWID(), '59', (SELECT Id FROM GamingFloor WHERE Code = 'SC')),
(NEWID(), '18', (SELECT Id FROM GamingFloor WHERE Code = 'VIP')),
(NEWID(), '19', (SELECT Id FROM GamingFloor WHERE Code = 'VIP')),
(NEWID(), '20', (SELECT Id FROM GamingFloor WHERE Code = 'VIP')),
(NEWID(), '21', (SELECT Id FROM GamingFloor WHERE Code = 'VIP')),
(NEWID(), '22', (SELECT Id FROM GamingFloor WHERE Code = 'VIP')),
(NEWID(), '23', (SELECT Id FROM GamingFloor WHERE Code = 'VIP')),
(NEWID(), '24', (SELECT Id FROM GamingFloor WHERE Code = 'VIP')),
(NEWID(), '25', (SELECT Id FROM GamingFloor WHERE Code = 'VIP')),
(NEWID(), '26', (SELECT Id FROM GamingFloor WHERE Code = 'VIP')),
(NEWID(), '27', (SELECT Id FROM GamingFloor WHERE Code = 'VIP')),
(NEWID(), '29', (SELECT Id FROM GamingFloor WHERE Code = 'VIP')),
(NEWID(), '31', (SELECT Id FROM GamingFloor WHERE Code = 'VIP')),
(NEWID(), '32', (SELECT Id FROM GamingFloor WHERE Code = 'VIP')),
(NEWID(), '33', (SELECT Id FROM GamingFloor WHERE Code = 'VIP')),
(NEWID(), '34', (SELECT Id FROM GamingFloor WHERE Code = 'VIP')),
(NEWID(), '35', (SELECT Id FROM GamingFloor WHERE Code = 'VIP')),
(NEWID(), '36', (SELECT Id FROM GamingFloor WHERE Code = 'VIP')),
(NEWID(), '37', (SELECT Id FROM GamingFloor WHERE Code = 'VIP')),
(NEWID(), '39', (SELECT Id FROM GamingFloor WHERE Code = 'VIP')),
(NEWID(), '50', (SELECT Id FROM GamingFloor WHERE Code = 'VIP'))



--==============================================================================================================================
--==============================================================================================================================
---- INSERT TABLE GAMES SAMPLE DATA
---- NOTE: THERE ARE MISSING GAMES NOT IN THE LOOKUPS TABLE
---- NOTE: REQUIRED GAME PROFICIENCY IS SET TO 50 BY DEFAULT, MULTI-SKILL FOR A GAME NOT HANDLED YET
--==============================================================================================================================
--==============================================================================================================================

insert into Tables(Id, Name, Code, GameId, RequiredProficiency, ClusterId, LocationId)
values
(NEWID(), 'SDB138', 'SDB138', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '1')),
(NEWID(), 'SDB139', 'SDB139', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '1')),
(NEWID(), 'SDB140', 'SDB140', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '1')),
(NEWID(), 'SDB141', 'SDB141', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '1')),
(NEWID(), 'SDB142', 'SDB142', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '1')),
(NEWID(), 'SDB143', 'SDB143', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '1')),
(NEWID(), 'SDB144', 'SDB144', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '1')),
(NEWID(), 'SDB145', 'SDB145', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '1')),
(NEWID(), 'SDB146', 'SDB146', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '1')),
(NEWID(), 'SSM130', 'SSM130', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '1')),
(NEWID(), 'SSM131', 'SSM131', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '1')),
(NEWID(), 'SSM132', 'SSM132', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '1')),
(NEWID(), 'SSM133', 'SSM133', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '1')),
(NEWID(), 'SSM134', 'SSM134', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '1')),
(NEWID(), 'SSM135', 'SSM135', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '1')),
(NEWID(), 'SSM136', 'SSM136', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '1')),
(NEWID(), 'SSM137', 'SSM137', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '1')),
(NEWID(), 'SNN149', 'SNN149', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '1')),
(NEWID(), 'SNN150', 'SNN150', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '1')),
(NEWID(), 'SSM201', 'SSM201', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '2')),
(NEWID(), 'SSM202', 'SSM202', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '2')),
(NEWID(), 'SSM203', 'SSM203', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '2')),
(NEWID(), 'SSM204', 'SSM204', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '2')),
(NEWID(), 'SSM205', 'SSM205', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '2')),
(NEWID(), 'SSM206', 'SSM206', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '2')),
(NEWID(), 'SSM207', 'SSM207', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '2')),
(NEWID(), 'SSM208', 'SSM208', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '2')),
(NEWID(), 'SSM209', 'SSM209', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '2')),
(NEWID(), 'SSM210', 'SSM210', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '2')),
(NEWID(), 'SSM211', 'SSM211', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '2')),
(NEWID(), 'SSM212', 'SSM212', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '2')),
(NEWID(), 'SSM213', 'SSM213', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '2')),
(NEWID(), 'SSM214', 'SSM214', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '2')),
(NEWID(), 'SSM215', 'SSM215', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '2')),
(NEWID(), 'CRM222', 'CRM222', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'CRM'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '2')),
(NEWID(), 'SSM238', 'SSM238', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '2')),
(NEWID(), 'SSM367', 'SSM367', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '3')),
(NEWID(), 'SSM368', 'SSM368', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '3')),
(NEWID(), 'SSM369', 'SSM369', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '3')),
(NEWID(), 'SSM370', 'SSM370', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '3')),
(NEWID(), 'SSM371', 'SSM371', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '3')),
(NEWID(), 'SSM372', 'SSM372', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '3')),
(NEWID(), 'SSM373', 'SSM373', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '3')),
(NEWID(), 'SSM374', 'SSM374', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '3')),
(NEWID(), 'SSM375', 'SSM375', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '3')),
(NEWID(), 'SNN376', 'SNN376', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SNN'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '3')),
(NEWID(), 'SNN377', 'SNN377', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SNN'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '3')),
(NEWID(), 'SSM701', 'SSM701', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '7')),
(NEWID(), 'SSM702', 'SSM702', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '7')),
(NEWID(), 'SSM703', 'SSM703', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '7')),
(NEWID(), 'SSM704', 'SSM704', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '7')),
(NEWID(), 'SSM705', 'SSM705', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '7')),
(NEWID(), 'SSM706', 'SSM706', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '7')),
(NEWID(), 'SSM707', 'SSM707', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '7')),
(NEWID(), 'SSM708', 'SSM708', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '7')),
(NEWID(), 'SSM709', 'SSM709', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '7')),
(NEWID(), 'SSM710', 'SSM710', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '7')),
(NEWID(), 'SSM711', 'SSM711', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '7')),
(NEWID(), 'SSM712', 'SSM712', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '7')),
(NEWID(), 'SSM714', 'SSM714', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '7')),
(NEWID(), 'SSM715', 'SSM715', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '7')),
(NEWID(), 'SSM716', 'SSM716', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '7')),
(NEWID(), 'SSM717', 'SSM717', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '7')),
(NEWID(), 'SSM718', 'SSM718', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '7')),
(NEWID(), 'MW728', 'MW728', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MW'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '7')),
(NEWID(), 'MW746', 'MW746', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MW'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '7')),
(NEWID(), 'SB729', 'SB729', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SB'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '7')),
(NEWID(), 'SB730', 'SB730', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SB'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '7')),
(NEWID(), 'SB731', 'SB731', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SB'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '7')),
(NEWID(), 'CRP744', 'CRP744', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'CRP'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '7')),
(NEWID(), 'SSM745', 'SSM745', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SSM'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '7')),
(NEWID(), 'DBJ858', 'DBJ858', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'DBJ'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '8')),
(NEWID(), 'DBJ859', 'DBJ859', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'DBJ'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '8')),
(NEWID(), 'DBJ860', 'DBJ860', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'DBJ'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '8')),
(NEWID(), 'DBJ861', 'DBJ861', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'DBJ'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '8')),
(NEWID(), 'DBJ862', 'DBJ862', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'DBJ'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '8')),
(NEWID(), 'PTT863', 'PTT863', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'PTT'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '8')),
(NEWID(), 'PTT865', 'PTT865', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'PTT'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '8')),
(NEWID(), 'ZBJ864', 'ZBJ864', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'ZBJ'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '8')),
(NEWID(), 'RLB854', 'RLB854', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'RLB'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '8')),
(NEWID(), 'RDB855', 'RDB855', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'RDB'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '8')),
(NEWID(), 'RDB856', 'RDB856', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'RDB'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '8')),
(NEWID(), 'RDB857', 'RDB857', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'RDB'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '8')),
(NEWID(), 'SSM901', 'SSM901', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '9')),
(NEWID(), 'SSM902', 'SSM902', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '9')),
(NEWID(), 'SSM903', 'SSM903', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '9')),
(NEWID(), 'BT962', 'BT962', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'BT'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '9')),
(NEWID(), 'SSM974', 'SSM974', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '9')),
(NEWID(), 'SSM975', 'SSM975', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '9')),
(NEWID(), 'SSM976', 'SSM976', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '9')),
(NEWID(), 'SSM977', 'SSM977', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '9')),
(NEWID(), 'SSM978', 'SSM978', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '9')),
(NEWID(), 'SSM979', 'SSM979', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '9')),
(NEWID(), 'SSM980', 'SSM980', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '9')),
(NEWID(), 'SSM981', 'SSM981', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '9')),
(NEWID(), 'SSM1301', 'SSM1301', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '13')),
(NEWID(), 'SSM1302', 'SSM1302', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '13')),
(NEWID(), 'SSM1303', 'SSM1303', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '13')),
(NEWID(), 'SSM1304', 'SSM1304', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '13')),
(NEWID(), 'SSM1305', 'SSM1305', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '13')),
(NEWID(), 'SSM1306', 'SSM1306', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '13')),
(NEWID(), 'SS1308', 'SS1308', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '13')),
(NEWID(), 'SAB1397', 'SAB1397', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '13')),
(NEWID(), 'SS1307', 'SS1307', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '13')),
(NEWID(), 'SNN1321', 'SNN1321', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SNN'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '13')),
(NEWID(), 'SAB1389', 'SAB1389', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SAB'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '13')),
(NEWID(), 'PTT1397', 'PTT1397', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'PTT'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '13')),
(NEWID(), 'SSM1501', 'SSM1501', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '15')),
(NEWID(), 'SSM1502', 'SSM1502', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '15')),
(NEWID(), 'SSM1503', 'SSM1503', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '15')),
(NEWID(), 'SSM1504', 'SSM1504', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '15')),
(NEWID(), 'SSM1505', 'SSM1505', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '15')),
(NEWID(), 'SSM1506', 'SSM1506', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '15')),
(NEWID(), 'SSM1507', 'SSM1507', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '15')),
(NEWID(), 'SSM1508', 'SSM1508', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '15')),
(NEWID(), 'SSM1509', 'SSM1509', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '15')),
(NEWID(), 'SSM1510', 'SSM1510', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '15')),
(NEWID(), 'SSM1511', 'SSM1511', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '15')),
(NEWID(), 'SSM1512', 'SSM1512', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '15')),
(NEWID(), 'SSM1513', 'SSM1513', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '15')),
(NEWID(), 'SSM1514', 'SSM1514', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '15')),
(NEWID(), 'SSM1515', 'SSM1515', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '15')),
(NEWID(), 'SSM1516', 'SSM1516', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '15')),
(NEWID(), 'RLB1535', 'RLB1535', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'RLB'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '15')),
(NEWID(), 'RLB1540', 'RLB1540', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'RLB'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '15')),
(NEWID(), 'SSM1601', 'SSM1601', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'HIGHLIMIT' and p.Name = '16')),
(NEWID(), 'SXB1602', 'SXB1602', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'HIGHLIMIT' and p.Name = '16')),
(NEWID(), 'SSB1603', 'SSB1603', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'HIGHLIMIT' and p.Name = '16')),
(NEWID(), 'SSM1604', 'SSM1604', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'HIGHLIMIT' and p.Name = '16')),
(NEWID(), 'SSM1605', 'SSM1605', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'HIGHLIMIT' and p.Name = '16')),
(NEWID(), 'SSB1607', 'SSB1607', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'HIGHLIMIT' and p.Name = '16')),
(NEWID(), 'SSB1608', 'SSB1608', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'HIGHLIMIT' and p.Name = '16')),
(NEWID(), 'PSB1609', 'PSB1609', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'HIGHLIMIT' and p.Name = '16')),
(NEWID(), 'PSB1610', 'PSB1610', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'HIGHLIMIT' and p.Name = '16')),
(NEWID(), 'SSM1611', 'SSM1611', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'HIGHLIMIT' and p.Name = '16')),
(NEWID(), 'SSB1612', 'SSB1612', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'HIGHLIMIT' and p.Name = '16')),
(NEWID(), 'PSM1613', 'PSM1613', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'HIGHLIMIT' and p.Name = '16')),
(NEWID(), 'SSM1614', 'SSM1614', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'HIGHLIMIT' and p.Name = '16')),
(NEWID(), 'SSM1615', 'SSM1615', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'HIGHLIMIT' and p.Name = '16')),
(NEWID(), 'SSM1616', 'SSM1616', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'HIGHLIMIT' and p.Name = '16')),
(NEWID(), 'SSM1617', 'SSM1617', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'HIGHLIMIT' and p.Name = '16')),
(NEWID(), 'SSB1618', 'SSB1618', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'HIGHLIMIT' and p.Name = '16')),
(NEWID(), 'PSB1619', 'PSB1619', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'HIGHLIMIT' and p.Name = '16')),
(NEWID(), 'SXB1667', 'SXB1667', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'HIGHLIMIT' and p.Name = '16')),
(NEWID(), 'THB1621', 'THB1621', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'THB'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'HIGHLIMIT' and p.Name = '16')),
(NEWID(), 'DBJ1668', 'DBJ1668', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'DBJ'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'HIGHLIMIT' and p.Name = '16')),
(NEWID(), 'PTT1672', 'PTT1672', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'PTT'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'HIGHLIMIT' and p.Name = '16')),
(NEWID(), 'SSM1701', 'SSM1701', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '17')),
(NEWID(), 'SSM1702', 'SSM1702', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '17')),
(NEWID(), 'SSM1703', 'SSM1703', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '17')),
(NEWID(), 'SSM1704', 'SSM1704', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '17')),
(NEWID(), 'SSM1705', 'SSM1705', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '17')),
(NEWID(), 'SSM1706', 'SSM1706', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '17')),
(NEWID(), 'SSM1707', 'SSM1707', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '17')),
(NEWID(), 'SSM1708', 'SSM1708', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '17')),
(NEWID(), 'SSM1709', 'SSM1709', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '17')),
(NEWID(), 'SSM1710', 'SSM1710', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '17')),
(NEWID(), 'SSM1711', 'SSM1711', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '17')),
(NEWID(), 'SSM1712', 'SSM1712', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '17')),
(NEWID(), 'MD1805', 'MD1805', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '18')),
(NEWID(), 'MD1814', 'MD1814', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '18')),
(NEWID(), 'MD1815', 'MD1815', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '18')),
(NEWID(), 'MD1816', 'MD1816', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '18')),
(NEWID(), 'MD1817', 'MD1817', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '18')),
(NEWID(), 'MD1818', 'MD1818', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '18')),
(NEWID(), 'MD1819', 'MD1819', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '18')),
(NEWID(), 'MD1820', 'MD1820', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '18')),
(NEWID(), 'MD1821', 'MD1821', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '18')),
(NEWID(), 'MD1822', 'MD1822', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '18')),
(NEWID(), 'MD1823', 'MD1823', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '18')),
(NEWID(), 'MD1825', 'MD1825', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '18')),
(NEWID(), 'MD1827', 'MD1827', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '18')),
(NEWID(), 'MD1940', 'MD1940', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '19')),
(NEWID(), 'MD1941', 'MD1941', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '19')),
(NEWID(), 'MD1942', 'MD1942', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '19')),
(NEWID(), 'MD1943', 'MD1943', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '19')),
(NEWID(), 'MD1944', 'MD1944', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '19')),
(NEWID(), 'MD1945', 'MD1945', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '19')),
(NEWID(), 'MD1946', 'MD1946', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '19')),
(NEWID(), 'MD1947', 'MD1947', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '19')),
(NEWID(), 'MD1948', 'MD1948', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '19')),
(NEWID(), 'MD1949', 'MD1949', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '19')),
(NEWID(), 'MD1950', 'MD1950', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '19')),
(NEWID(), 'MD1951', 'MD1951', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '19')),
(NEWID(), 'MD2004', 'MD2004', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '20')),
(NEWID(), 'MD2016', 'MD2016', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '20')),
(NEWID(), 'MD2017', 'MD2017', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '20')),
(NEWID(), 'MD2018', 'MD2018', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '20')),
(NEWID(), 'MD2019', 'MD2019', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '20')),
(NEWID(), 'MD2116', 'MD2116', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '21')),
(NEWID(), 'MD2136', 'MD2136', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '21')),
(NEWID(), 'MD2143', 'MD2143', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '21')),
(NEWID(), 'MD2144', 'MD2144', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '21')),
(NEWID(), 'MD2145', 'MD2145', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '21')),
(NEWID(), 'MD2159', 'MD2159', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '21')),
(NEWID(), 'MD2160', 'MD2160', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '21')),
(NEWID(), 'MD2164', 'MD2164', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '21')),
(NEWID(), 'MD2165', 'MD2165', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '21')),
(NEWID(), 'MD2166', 'MD2166', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '21')),
(NEWID(), 'SS2169', 'SS2169', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '21')),
(NEWID(), 'SS2170', 'SS2170', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '21')),
(NEWID(), 'MD2204', 'MD2204', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '22')),
(NEWID(), 'MD2213', 'MD2213', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '22')),
(NEWID(), 'MD2284', 'MD2284', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '22')),
(NEWID(), 'MD2283', 'MD2283', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '22')),
(NEWID(), 'RL2219', 'RL2219', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'RL'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '22')),
(NEWID(), 'RL2225', 'RL2225', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'RL'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '22')),
(NEWID(), 'RL2290', 'RL2290', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'RL'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '22')),
(NEWID(), 'MD2245', 'MD2245', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '22')),
(NEWID(), 'MD2246', 'MD2246', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '22')),
(NEWID(), 'MD2277', 'MD2277', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '22')),
(NEWID(), 'MD2278', 'MD2278', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '22')),
(NEWID(), 'MD2286', 'MD2286', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '22')),
(NEWID(), 'MD2288', 'MD2288', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '22')),
(NEWID(), 'MD2287', 'MD2287', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '22')),
(NEWID(), 'MD2289', 'MD2289', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '22')),
(NEWID(), 'SS2280', 'SS2280', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '22')),
(NEWID(), 'MD2265', 'MD2265', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '22')),
(NEWID(), 'MD2279', 'MD2279', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '22')),
(NEWID(), 'MD2275', 'MD2275', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '22')),
(NEWID(), 'MD2301', 'MD2301', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '23')),
(NEWID(), 'MD2302', 'MD2302', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '23')),
(NEWID(), 'MD2303', 'MD2303', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '23')),
(NEWID(), 'MD2304', 'MD2304', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '23')),
(NEWID(), 'MD2407', 'MD2407', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '24')),
(NEWID(), 'MD2411', 'MD2411', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '24')),
(NEWID(), 'MD2409', 'MD2409', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '24')),
(NEWID(), 'MD2404', 'MD2404', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '24')),
(NEWID(), 'MD2410', 'MD2410', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '24')),
(NEWID(), 'MD2406', 'MD2406', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '24')),
(NEWID(), 'MD2504', 'MD2504', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '25')),
(NEWID(), 'MD2509', 'MD2509', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '25')),
(NEWID(), 'MD2510', 'MD2510', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '25')),
(NEWID(), 'MD2513', 'MD2513', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '25')),
(NEWID(), 'MD2514', 'MD2514', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '25')),
(NEWID(), 'MD2519', 'MD2519', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '25')),
(NEWID(), 'MD2523', 'MD2523', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '25')),
(NEWID(), 'PK2520', 'PK2520', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'PK'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '25')),
(NEWID(), 'PK2524', 'PK2524', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'PK'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '25')),
(NEWID(), 'MD2602', 'MD2602', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '26')),
(NEWID(), 'MD2603', 'MD2603', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '26')),
(NEWID(), 'MD 2620', 'MD 2620', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '26')),
(NEWID(), 'MD2619', 'MD2619', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '26')),
(NEWID(), 'MD2621', 'MD2621', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '26')),
(NEWID(), 'MD2607', 'MD2607', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '26')),
(NEWID(), 'MD2629', 'MD2629', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '26')),
(NEWID(), 'MD2608', 'MD2608', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '26')),
(NEWID(), 'MD2632', 'MD2632', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '26')),
(NEWID(), 'MD2633', 'MD2633', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '26')),
(NEWID(), 'MD2626', 'MD2626', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '26')),
(NEWID(), 'MD2637', 'MD2637', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '26')),
(NEWID(), 'MD2623', 'MD2623', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '26')),
(NEWID(), 'MD2622', 'MD2622', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '26')),
(NEWID(), 'MD2634', 'MD2634', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '26')),
(NEWID(), 'MD2635', 'MD2635', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '26')),
(NEWID(), 'MD2628', 'MD2628', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '26')),
(NEWID(), 'MD2702', 'MD2702', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '27')),
(NEWID(), 'MD2703', 'MD2703', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '27')),
(NEWID(), 'MD2704', 'MD2704', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '27')),
(NEWID(), 'MD2705', 'MD2705', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '27')),
(NEWID(), 'MD2706', 'MD2706', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '27')),
(NEWID(), 'MD2707', 'MD2707', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '27')),
(NEWID(), 'MD2708', 'MD2708', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '27')),
(NEWID(), 'MD2709', 'MD2709', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '27')),
(NEWID(), 'MD2716', 'MD2716', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '27')),
(NEWID(), 'MD2723', 'MD2723', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '27')),
(NEWID(), 'PK2725', 'PK2725', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'PK'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '27')),
(NEWID(), 'MD2726', 'MD2726', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '27')),
(NEWID(), 'MD2728', 'MD2728', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '27')),
(NEWID(), 'OSS2801', 'OSS2801', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'ONLINE'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '28')),
(NEWID(), 'OSS2802', 'OSS2802', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'ONLINE'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '28')),
(NEWID(), 'OSS2803', 'OSS2803', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'ONLINE'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '28')),
(NEWID(), 'OSS2804', 'OSS2804', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'ONLINE'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '28')),
(NEWID(), 'OMD2805', 'OMD2805', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'ONLINE'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '28')),
(NEWID(), 'OMD2806', 'OMD2806', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'ONLINE'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '28')),
(NEWID(), 'OSS2807', 'OSS2807', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'ONLINE'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '28')),
(NEWID(), 'OSS2808', 'OSS2808', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'ONLINE'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '28')),
(NEWID(), 'MD2919', 'MD2919', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '29')),
(NEWID(), 'MD2920', 'MD2920', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '29')),
(NEWID(), 'MD2916', 'MD2916', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '29')),
(NEWID(), 'PK2918', 'PK2918', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'PK'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '29')),
(NEWID(), 'ORS3007', 'ORS3007', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'ONLINE'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '30')),
(NEWID(), 'OSB3009', 'OSB3009', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'ONLINE'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '30')),
(NEWID(), 'OSS3001', 'OSS3001', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'ONLINE'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '30')),
(NEWID(), 'OSS3002', 'OSS3002', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'ONLINE'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '30')),
(NEWID(), 'OSS3003', 'OSS3003', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'ONLINE'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '30')),
(NEWID(), 'OSS3004', 'OSS3004', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'ONLINE'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '30')),
(NEWID(), 'OSS3005', 'OSS3005', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'ONLINE'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '30')),
(NEWID(), 'POM3006', 'POM3006', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'ONLINE'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '30')),
(NEWID(), 'OSB3010', 'OSB3010', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'ONLINE'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '30')),
(NEWID(), 'MD3109', 'MD3109', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '31')),
(NEWID(), 'MD3110', 'MD3110', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '31')),
(NEWID(), 'MD3111', 'MD3111', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '31')),
(NEWID(), 'MD3112', 'MD3112', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '31')),
(NEWID(), 'MD3119', 'MD3119', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '31')),
(NEWID(), 'MD3122', 'MD3122', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '31')),
(NEWID(), 'MD3123', 'MD3123', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '31')),
(NEWID(), 'MD3124', 'MD3124', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '31')),
(NEWID(), 'MD3209', 'MD3209', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '32')),
(NEWID(), 'MD3210', 'MD3210', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '32')),
(NEWID(), 'MD3211', 'MD3211', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '32')),
(NEWID(), 'MD3212', 'MD3212', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '32')),
(NEWID(), 'MD3221', 'MD3221', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '32')),
(NEWID(), 'MD3223', 'MD3223', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '32')),
(NEWID(), 'MD3224', 'MD3224', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '32')),
(NEWID(), 'MD3225', 'MD3225', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '32')),
(NEWID(), 'MD3301', 'MD3301', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '33')),
(NEWID(), 'MD3302', 'MD3302', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '33')),
(NEWID(), 'PK3308', 'PK3308', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'PK'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '33')),
(NEWID(), 'PK3310', 'PK3310', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'PK'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '33')),
(NEWID(), 'MD3313', 'MD3313', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '33')),
(NEWID(), 'MD3314', 'MD3314', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '33')),
(NEWID(), 'MD3401', 'MD3401', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '34')),
(NEWID(), 'MD3402', 'MD3402', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '34')),
(NEWID(), 'MD3403', 'MD3403', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '34')),
(NEWID(), 'MD3404', 'MD3404', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '34')),
(NEWID(), 'MD3405', 'MD3405', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '34')),
(NEWID(), 'MD3406', 'MD3406', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '34')),
(NEWID(), 'MD3512', 'MD3512', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '35')),
(NEWID(), 'MD3513', 'MD3513', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '35')),
(NEWID(), 'MD3517', 'MD3517', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '35')),
(NEWID(), 'MD3518', 'MD3518', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '35')),
(NEWID(), 'MD3519', 'MD3519', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '35')),
(NEWID(), 'MD3520', 'MD3520', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '35')),
(NEWID(), 'MD3523', 'MD3523', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '35')),
(NEWID(), 'MD3524', 'MD3524', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '35')),
(NEWID(), 'PK3525', 'PK3525', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'PK'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '35')),
(NEWID(), 'MD3526', 'MD3526', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '35')),
(NEWID(), 'MD3527', 'MD3527', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '35')),
(NEWID(), 'MD3605', 'MD3605', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '36')),
(NEWID(), 'MD3606', 'MD3606', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '36')),
(NEWID(), 'MD3608', 'MD3608', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '36')),
(NEWID(), 'MD3612', 'MD3612', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '36')),
(NEWID(), 'MD3615', 'MD3615', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '36')),
(NEWID(), 'MD3616', 'MD3616', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '36')),
(NEWID(), 'MD3617', 'MD3617', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '36')),
(NEWID(), 'MD3702', 'MD3702', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '37')),
(NEWID(), 'MD3704', 'MD3704', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '37')),
(NEWID(), 'MD3705', 'MD3705', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '37')),
(NEWID(), 'MD3707', 'MD3707', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '37')),
(NEWID(), 'MD3708', 'MD3708', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '37')),
(NEWID(), 'MD3711', 'MD3711', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '37')),
(NEWID(), 'MD3926', 'MD3926', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '39')),
(NEWID(), 'MD3927', 'MD3927', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '39')),
(NEWID(), 'MD3928', 'MD3928', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '39')),
(NEWID(), 'MD3920', 'MD3920', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '39')),
(NEWID(), 'MD3921', 'MD3921', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '39')),
(NEWID(), 'MD3922', 'MD3922', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '39')),
(NEWID(), 'MD3923', 'MD3923', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '39')),
(NEWID(), 'MD3924', 'MD3924', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '39')),
(NEWID(), 'MD3925', 'MD3925', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '39')),
(NEWID(), 'MD5004', 'MD5004', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '50')),
(NEWID(), 'MD5013', 'MD5013', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '50')),
(NEWID(), 'MD5014', 'MD5014', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '50')),
(NEWID(), 'MD5015', 'MD5015', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '50')),
(NEWID(), 'MD5016', 'MD5016', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '50')),
(NEWID(), 'PK5022', 'PK5022', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'PK'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '50')),
(NEWID(), 'MD5024', 'MD5024', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '50')),
(NEWID(), 'MD5025', 'MD5025', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'MD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'VIP' and p.Name = '50')),
(NEWID(), 'PMD5101', 'PMD5101', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'PMD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'BAY' and p.Name = '51')),
(NEWID(), 'PSS5104', 'PSS5104', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'PSS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'BAY' and p.Name = '51')),
(NEWID(), 'PMD5107', 'PMD5107', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'PMD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'BAY' and p.Name = '51')),
(NEWID(), 'PMD5109', 'PMD5109', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'PMD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'BAY' and p.Name = '51')),
(NEWID(), 'SSM5201', 'SSM5201', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'BRB' and p.Name = '52')),
(NEWID(), 'SSM5202', 'SSM5202', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'BRB' and p.Name = '52')),
(NEWID(), 'SSM5203', 'SSM5203', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'BRB' and p.Name = '52')),
(NEWID(), 'SSM5204', 'SSM5204', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'BRB' and p.Name = '52')),
(NEWID(), 'SSM5212', 'SSM5212', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'BRB' and p.Name = '52')),
(NEWID(), 'PSM5225', 'PSM5225', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'BRB' and p.Name = '52')),
(NEWID(), 'SBJ5213', 'SBJ5213', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SBJ'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'BRB' and p.Name = '52')),
(NEWID(), 'SBJ5214', 'SBJ5214', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SBJ'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'BRB' and p.Name = '52')),
(NEWID(), 'OSS5501', 'OSS5501', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'ETG' and p.Name = '55')),
(NEWID(), 'ORS5503', 'ORS5503', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'RL'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'ETG' and p.Name = '55')),
(NEWID(), 'OSS5505', 'OSS5505', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'ETG' and p.Name = '55')),
(NEWID(), 'ORD5507', 'ORD5507', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'RL'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'ETG' and p.Name = '55')),
(NEWID(), 'OSS5509', 'OSS5509', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'ETG' and p.Name = '55')),
(NEWID(), 'OSS5511', 'OSS5511', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'ETG' and p.Name = '55')),
(NEWID(), 'ORD5513', 'ORD5513', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'RL'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'ETG' and p.Name = '55')),
(NEWID(), 'OSS5515', 'OSS5515', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'S'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'ETG' and p.Name = '55')),
(NEWID(), 'OSS5717', 'OSS5717', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'ETG' and p.Name = '55')),
(NEWID(), 'OSS5519', 'OSS5519', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'ETG' and p.Name = '55')),
(NEWID(), 'SAB5608', 'SAB5608', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SAB'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '56')),
(NEWID(), 'SSM5609', 'SSM5609', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SSM'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '56')),
(NEWID(), 'ZBJ5619', 'ZBJ5619', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'ZBJ'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '56')),
(NEWID(), 'UTH5620', 'UTH5620', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'UTH'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '56')),
(NEWID(), 'UTH5622', 'UTH5622', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'UTH'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '56')),
(NEWID(), 'ZBJ5625', 'ZBJ5625', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'ZBJ'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '56')),
(NEWID(), 'ZBJ5626', 'ZBJ5626', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'ZBJ'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '56')),
(NEWID(), 'BR5628', 'BR5628', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'BR'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '56')),
(NEWID(), 'BR5629', 'BR5629', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'BR'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '56')),
(NEWID(), 'THB5630', 'THB5630', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'THB'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '56')),
(NEWID(), 'TCP5631', 'TCP5631', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'TCP'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '56')),
(NEWID(), 'THB5632', 'THB5632', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'THB'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '56')),
(NEWID(), 'LP5633', 'LP5633', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'LP'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '56')),
(NEWID(), 'TCP5634', 'TCP5634', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'TCP'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '56')),
(NEWID(), 'THB5635', 'THB5635', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'THB'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '56')),
(NEWID(), 'SSP5636', 'SSP5636', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'CSP'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'MASS' and p.Name = '56')),
(NEWID(), 'SSM5701', 'SSM5701', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SSM'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'SC' and p.Name = '57')),
(NEWID(), 'PSM5702', 'PSM5702', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'PSM'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'SC' and p.Name = '57')),
(NEWID(), 'SMS5703', 'SMS5703', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SMS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'SC' and p.Name = '57')),
(NEWID(), 'PSM5704', 'PSM5704', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'PSM'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'SC' and p.Name = '57')),
(NEWID(), 'SMS5705', 'SMS5705', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SMS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'SC' and p.Name = '57')),
(NEWID(), 'PSM5706', 'PSM5706', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'PSM'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'SC' and p.Name = '57')),
(NEWID(), 'RLB5709', 'RLB5709', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'RLB'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'SC' and p.Name = '57')),
(NEWID(), 'PSB5711', 'PSB5711', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'PSB'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'SC' and p.Name = '57')),
(NEWID(), 'SSB5712', 'SSB5712', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SSB'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'SC' and p.Name = '57')),
(NEWID(), 'SSM5801', 'SSM5801', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SSM'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'SC' and p.Name = '58')),
(NEWID(), 'SSM5804', 'SSM5804', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SSM'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'SC' and p.Name = '58')),
(NEWID(), 'SSM5805', 'SSM5805', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SSM'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'SC' and p.Name = '58')),
(NEWID(), 'SSM5808', 'SSM5808', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SMS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'SC' and p.Name = '58')),
(NEWID(), 'SSX5814', 'SSX5814', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SSX'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'SC' and p.Name = '58')),
(NEWID(), 'SSX5815', 'SSX5815', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SSX'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'SC' and p.Name = '58')),
(NEWID(), 'SSX5816', 'SSX5816', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SSX'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'SC' and p.Name = '58')),
(NEWID(), 'SSX5817', 'SSX5817', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SSX'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'SC' and p.Name = '58')),
(NEWID(), 'SSM5819', 'SSM5819', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SSM'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'SC' and p.Name = '58')),
(NEWID(), 'SSM5820', 'SSM5820', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SSM'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'SC' and p.Name = '58')),
(NEWID(), 'SSM5821', 'SSM5821', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SSM'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'SC' and p.Name = '58')),
(NEWID(), 'SSM5822', 'SSM5822', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SSM'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'SC' and p.Name = '58')),
(NEWID(), 'PSM5823', 'PSM5823', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'PSM'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'SC' and p.Name = '58')),
(NEWID(), 'PSM5824', 'PSM5824', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'PSM'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'SC' and p.Name = '58')),
(NEWID(), 'PSM5825', 'PSM5825', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'PSM'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'SC' and p.Name = '58')),
(NEWID(), 'PSM5826', 'PSM5826', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'PSM'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'SC' and p.Name = '58')),
(NEWID(), 'SSM5827', 'SSM5827', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SSM'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'SC' and p.Name = '58')),
(NEWID(), 'PSM5828', 'PSM5828', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'PSM'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'SC' and p.Name = '58')),
(NEWID(), 'SSM5829', 'SSM5829', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SSM'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'SC' and p.Name = '58')),
(NEWID(), 'PSB5830', 'PSB5830', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'PSB'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'SC' and p.Name = '58')),
(NEWID(), 'LP5818', 'LP5818', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'LP'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'SC' and p.Name = '58')),
(NEWID(), 'THB5809', 'THB5809', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'THB'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'SC' and p.Name = '58')),
(NEWID(), 'SBJ5812', 'SBJ5812', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SBJ'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'SC' and p.Name = '58')),
(NEWID(), 'THB5813', 'THB5813', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'THB'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'SC' and p.Name = '58')),
(NEWID(), 'PMD5901', 'PMD5901', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'PMD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'SC' and p.Name = '59')),
(NEWID(), 'PMD5902', 'PMD5902', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'PMD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'SC' and p.Name = '59')),
(NEWID(), 'PMD5903', 'PMD5903', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'PMD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'SC' and p.Name = '59')),
(NEWID(), 'PMD5904', 'PMD5904', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'PMD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'SC' and p.Name = '59')),
(NEWID(), 'PMD5905', 'PMD5905', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'PMD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'SC' and p.Name = '59')),
(NEWID(), 'PMD5906', 'PMD5906', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'PMD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'SC' and p.Name = '59')),
(NEWID(), 'PMD5907', 'PMD5907', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'PMD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'SC' and p.Name = '59')),
(NEWID(), 'PMD5908', 'PMD5908', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'PMD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'SC' and p.Name = '59')),
(NEWID(), 'PMD5909', 'PMD5909', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'PMD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'SC' and p.Name = '59')),
(NEWID(), 'PMD5910', 'PMD5910', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'PMD'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'SC' and p.Name = '59')),
(NEWID(), 'OSS5502', 'OSS5502', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'ETG' and p.Name = '55')),
(NEWID(), 'OSB5504', 'OSB5504', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SB'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'ETG' and p.Name = '55')),
(NEWID(), 'OSS5506', 'OSS5506', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'ETG' and p.Name = '55')),
(NEWID(), 'ORS5508', 'ORS5508', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'RL'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'ETG' and p.Name = '55')),
(NEWID(), 'OSS5510', 'OSS5510', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'ETG' and p.Name = '55')),
(NEWID(), 'OSS5512', 'OSS5512', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'ETG' and p.Name = '55')),
(NEWID(), 'OSB5514', 'OSB5514', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SB'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'ETG' and p.Name = '55')),
(NEWID(), 'OSS5516', 'OSS5516', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'ETG' and p.Name = '55')),
(NEWID(), 'OSS5718', 'OSS5718', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'ETG' and p.Name = '55')),
(NEWID(), 'OSS5520', 'OSS5520', (SELECT Id FROM [Lookups] WHERE Code = 'GAME' AND Name = 'SS'), 50, NULL, (SELECT p.Id FROM Pits p inner join GamingFloor a on p.GamingFloorId = a.Id where a.Code = 'ETG' and p.Name = '55'))



--===============================================================
--===============================================================
---- INSERT CLUSTERS
--===============================================================
--===============================================================

insert into Clusters (Id, Name, PitId)
values
(NEWID(), '11DRM.0001', (SELECT LocationId FROM Tables WHERE Code = 'SSM130')),
(NEWID(), '07DRM.0108 ', (SELECT LocationId FROM Tables WHERE Code = 'SDB139')),
(NEWID(), '07DRM.0102 ', (SELECT LocationId FROM Tables WHERE Code = 'SDB140')),
(NEWID(), '11DRM.0109 ', (SELECT LocationId FROM Tables WHERE Code = 'SDB145')),
(NEWID(), '07DRM.0208 ', (SELECT LocationId FROM Tables WHERE Code = 'SSM201')),
(NEWID(), '11DRM.0002.02', (SELECT LocationId FROM Tables WHERE Code = 'SSM204')),
(NEWID(), '11DRM.0002.01', (SELECT LocationId FROM Tables WHERE Code = 'SSM208')),
(NEWID(), '11DRM.0003.02', (SELECT LocationId FROM Tables WHERE Code = 'SSM367')),
(NEWID(), '11DRM.0003.01', (SELECT LocationId FROM Tables WHERE Code = 'SSM370')),
(NEWID(), '11DRM.0708.02 ', (SELECT LocationId FROM Tables WHERE Code = 'SSM701')),
(NEWID(), '11DRM.0708.01 ', (SELECT LocationId FROM Tables WHERE Code = 'SSM702')),
(NEWID(), '11DRM.0007.01', (SELECT LocationId FROM Tables WHERE Code = 'SSM709')),
(NEWID(), '11DRM.0708 ', (SELECT LocationId FROM Tables WHERE Code = 'MW728')),
(NEWID(), '11DRM.0009', (SELECT LocationId FROM Tables WHERE Code = 'SSM974')),
(NEWID(), '07DRM.1556 ', (SELECT LocationId FROM Tables WHERE Code = 'SSM1501')),
(NEWID(), '07DRM.15656 ', (SELECT LocationId FROM Tables WHERE Code = 'SSM1502')),
(NEWID(), '11DRM.0015', (SELECT LocationId FROM Tables WHERE Code = 'SSM1505')),
(NEWID(), '11DRM.1600 ', (SELECT LocationId FROM Tables WHERE Code = 'RLB1535')),
(NEWID(), '11DRM.1652 ', (SELECT LocationId FROM Tables WHERE Code = 'PSB1609')),
(NEWID(), '11DRM.0016', (SELECT LocationId FROM Tables WHERE Code = 'SSM1615')),
(NEWID(), '07DRV.1819 ', (SELECT LocationId FROM Tables WHERE Code = 'MD1805')),
(NEWID(), '09DRV.1819 ', (SELECT LocationId FROM Tables WHERE Code = 'MD1820')),
(NEWID(), '11DRV.1821 ', (SELECT LocationId FROM Tables WHERE Code = 'MD1817')),
(NEWID(), '07DRV.192124 ', (SELECT LocationId FROM Tables WHERE Code = 'MD1944')),
(NEWID(), '09DRV.2127 ', (SELECT LocationId FROM Tables WHERE Code = 'MD2143')),
(NEWID(), '07DRV.2456 ', (SELECT LocationId FROM Tables WHERE Code = 'MD2409')),
(NEWID(), '11DRV.2529 ', (SELECT LocationId FROM Tables WHERE Code = 'MD2510')),
(NEWID(), '07DRV.0026', (SELECT LocationId FROM Tables WHERE Code = 'MD2602')),
(NEWID(), '09DRV.0026', (SELECT LocationId FROM Tables WHERE Code = 'MD2607')),
(NEWID(), '11DRV.2627 ', (SELECT LocationId FROM Tables WHERE Code = 'MD2632')),
(NEWID(), '07DRV.0027', (SELECT LocationId FROM Tables WHERE Code = 'MD2702')),
(NEWID(), '07DRM.28.OSP.1', (SELECT LocationId FROM Tables WHERE Code = 'OSS2801')),
(NEWID(), '07DRM.28.OSP.2', (SELECT LocationId FROM Tables WHERE Code = 'OSS2803')),
(NEWID(), '07DRM.28.OSP.3', (SELECT LocationId FROM Tables WHERE Code = 'OMD2805')),
(NEWID(), '07DRV.0031', (SELECT LocationId FROM Tables WHERE Code = 'MD3109')),
(NEWID(), '11DRV.0031', (SELECT LocationId FROM Tables WHERE Code = 'MD3119')),
(NEWID(), '07DRV.0032', (SELECT LocationId FROM Tables WHERE Code = 'MD3209')),
(NEWID(), '11DRV.3335 ', (SELECT LocationId FROM Tables WHERE Code = 'MD3301')),
(NEWID(), '07DRV.3536 ', (SELECT LocationId FROM Tables WHERE Code = 'MD3512')),
(NEWID(), '09DRV.3539 ', (SELECT LocationId FROM Tables WHERE Code = 'MD3518')),
(NEWID(), '11DRV.0035', (SELECT LocationId FROM Tables WHERE Code = 'MD3523')),
(NEWID(), '11DRV.3739 ', (SELECT LocationId FROM Tables WHERE Code = 'MD3711')),
(NEWID(), '07DRV.3950 ', (SELECT LocationId FROM Tables WHERE Code = 'MD3921')),
(NEWID(), '07DRM.5558 ', (SELECT LocationId FROM Tables WHERE Code = 'OSS5501')),
(NEWID(), '11DRM.0055', (SELECT LocationId FROM Tables WHERE Code = 'OSS5515')),
(NEWID(), '09DRM.0055', (SELECT LocationId FROM Tables WHERE Code = 'OSS5505')),
(NEWID(), '11.DRM.5556 ', (SELECT LocationId FROM Tables WHERE Code = 'OSS5718')),
(NEWID(), '11DRM.0056', (SELECT LocationId FROM Tables WHERE Code = 'SAB5608')),
(NEWID(), '07DRM.5658 ', (SELECT LocationId FROM Tables WHERE Code = 'UTH5620')),
(NEWID(), '11DRM.0058.03', (SELECT LocationId FROM Tables WHERE Code = 'SSX5815')),
(NEWID(), '11DRM.0058.01', (SELECT LocationId FROM Tables WHERE Code = 'THB5809')),
(NEWID(), '11DRM.0058.02', (SELECT LocationId FROM Tables WHERE Code = 'SSM5819')),
(NEWID(), '07DRM.30.OSP.1', (SELECT LocationId FROM Tables WHERE Code = 'OSS3004')),
(NEWID(), '07DRM.30.OSP.2', (SELECT LocationId FROM Tables WHERE Code = 'OSS3001')),
(NEWID(), '07DRM.30.OSP.3', (SELECT LocationId FROM Tables WHERE Code = 'ORS3007'))


--===============================================================
--===============================================================
---- UPDATE TABLE GAMES WITH CLUSTER ID
--===============================================================
--===============================================================


update Tables set ClusterId = (select Id from Clusters where Name = '11DRM.0001') where Code = 'SSM130'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRM.0001') where Code = 'SSM131'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRM.0001') where Code = 'SSM132'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRM.0001') where Code = 'SSM133'
update Tables set ClusterId = (select Id from Clusters where Name = '07DRM.0108 ') where Code = 'SDB139'
update Tables set ClusterId = (select Id from Clusters where Name = '07DRM.0108 ') where Code = 'SDB141'
update Tables set ClusterId = (select Id from Clusters where Name = '07DRM.0102 ') where Code = 'SDB140'
update Tables set ClusterId = (select Id from Clusters where Name = '07DRM.0102 ') where Code = 'SDB142'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRM.0109 ') where Code = 'SDB145'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRM.0109 ') where Code = 'SDB146'
update Tables set ClusterId = (select Id from Clusters where Name = '07DRM.0102 ') where Code = 'SNN149'
update Tables set ClusterId = (select Id from Clusters where Name = '07DRM.0208 ') where Code = 'SSM201'
update Tables set ClusterId = (select Id from Clusters where Name = '07DRM.0102 ') where Code = 'SSM202'
update Tables set ClusterId = (select Id from Clusters where Name = '07DRM.0208 ') where Code = 'SSM203'
update Tables set ClusterId = (select Id from Clusters where Name = '07DRM.0208 ') where Code = 'SSM238'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRM.0002.02') where Code = 'SSM204'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRM.0002.02') where Code = 'SSM205'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRM.0002.02') where Code = 'SSM206'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRM.0002.02') where Code = 'SSM207'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRM.0002.01') where Code = 'SSM208'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRM.0002.01') where Code = 'SSM209'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRM.0002.01') where Code = 'SSM210'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRM.0002.01') where Code = 'SSM211'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRM.0003.02') where Code = 'SSM367'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRM.0003.02') where Code = 'SSM368'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRM.0003.02') where Code = 'SSM369'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRM.0003.01') where Code = 'SSM370'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRM.0003.01') where Code = 'SSM371'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRM.0003.01') where Code = 'SSM372'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRM.0003.01') where Code = 'SSM373'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRM.0708.02 ') where Code = 'SSM701'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRM.0708.01 ') where Code = 'SSM702'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRM.0708.01 ') where Code = 'SSM703'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRM.0708.01 ') where Code = 'SSM704'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRM.0007.01') where Code = 'SSM709'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRM.0007.01') where Code = 'SSM710'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRM.0007.01') where Code = 'SSM711'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRM.0007.01') where Code = 'SSM712'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRM.0708 ') where Code = 'MW728'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRM.0708 ') where Code = 'SB729'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRM.0708 ') where Code = 'SB730'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRM.0708 ') where Code = 'RDB856'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRM.0708.02 ') where Code = 'DBJ858'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRM.0708.02 ') where Code = 'DBJ859'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRM.0708.02 ') where Code = 'DBJ860'
update Tables set ClusterId = (select Id from Clusters where Name = '07DRM.0208 ') where Code = 'DBJ861'
update Tables set ClusterId = (select Id from Clusters where Name = '07DRM.0108 ') where Code = 'PTT863'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRM.0708.01 ') where Code = 'PTT865'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRM.0109 ') where Code = 'SSM901'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRM.0109 ') where Code = 'SSM903'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRM.0009') where Code = 'SSM974'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRM.0009') where Code = 'SSM976'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRM.0009') where Code = 'SSM978'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRM.0009') where Code = 'SSM980'
update Tables set ClusterId = (select Id from Clusters where Name = '07DRM.1556 ') where Code = 'SSM1501'
update Tables set ClusterId = (select Id from Clusters where Name = '07DRM.15656 ') where Code = 'SSM1502'
update Tables set ClusterId = (select Id from Clusters where Name = '07DRM.1556 ') where Code = 'SSM1503'
update Tables set ClusterId = (select Id from Clusters where Name = '07DRM.1556 ') where Code = 'SSM1504'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRM.0015') where Code = 'SSM1505'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRM.0015') where Code = 'SSM1506'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRM.0015') where Code = 'SSM1507'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRM.0015') where Code = 'SSM1508'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRM.1600 ') where Code = 'RLB1535'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRM.1652 ') where Code = 'PSB1609'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRM.1652 ') where Code = 'SSB1607'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRM.0016') where Code = 'SSM1615'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRM.1600 ') where Code = 'SSB1618'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRM.1600 ') where Code = 'SSM1616'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRM.0016') where Code = 'SSM1605'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRM.0016') where Code = 'SSB1603'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRM.0016') where Code = 'SSM1601'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRM.1600 ') where Code = 'SXB1667'
update Tables set ClusterId = (select Id from Clusters where Name = '07DRV.1819 ') where Code = 'MD1805'
update Tables set ClusterId = (select Id from Clusters where Name = '07DRV.1819 ') where Code = 'MD1821'
update Tables set ClusterId = (select Id from Clusters where Name = '09DRV.1819 ') where Code = 'MD1820'
update Tables set ClusterId = (select Id from Clusters where Name = '09DRV.1819 ') where Code = 'MD1827'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRV.1821 ') where Code = 'MD1817'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRV.1821 ') where Code = 'MD1818'
update Tables set ClusterId = (select Id from Clusters where Name = '07DRV.1819 ') where Code = 'MD1940'
update Tables set ClusterId = (select Id from Clusters where Name = '07DRV.192124 ') where Code = 'MD1944'
update Tables set ClusterId = (select Id from Clusters where Name = '07DRV.1819 ') where Code = 'MD1945'
update Tables set ClusterId = (select Id from Clusters where Name = '09DRV.1819 ') where Code = 'MD1946'
update Tables set ClusterId = (select Id from Clusters where Name = '09DRV.1819 ') where Code = 'MD1947'
update Tables set ClusterId = (select Id from Clusters where Name = '09DRV.2127 ') where Code = 'MD2143'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRV.1821 ') where Code = 'MD2145'
update Tables set ClusterId = (select Id from Clusters where Name = '07DRV.192124 ') where Code = 'MD2165'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRV.1821 ') where Code = 'SS2169'
update Tables set ClusterId = (select Id from Clusters where Name = '09DRV.2127 ') where Code = 'MD2204'
update Tables set ClusterId = (select Id from Clusters where Name = '07DRV.192124 ') where Code = 'MD2407'
update Tables set ClusterId = (select Id from Clusters where Name = '07DRV.2456 ') where Code = 'MD2409'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRV.2529 ') where Code = 'MD2510'
update Tables set ClusterId = (select Id from Clusters where Name = '07DRV.2456 ') where Code = 'MD2513'
update Tables set ClusterId = (select Id from Clusters where Name = '07DRV.2456 ') where Code = 'MD2514'
update Tables set ClusterId = (select Id from Clusters where Name = '07DRV.2456 ') where Code = 'MD2621'
update Tables set ClusterId = (select Id from Clusters where Name = '07DRV.0026') where Code = 'MD2602'
update Tables set ClusterId = (select Id from Clusters where Name = '07DRV.0026') where Code = 'MD2603'
update Tables set ClusterId = (select Id from Clusters where Name = '07DRV.0026') where Code = 'MD2619'
update Tables set ClusterId = (select Id from Clusters where Name = '09DRV.0026') where Code = 'MD2607'
update Tables set ClusterId = (select Id from Clusters where Name = '09DRV.0026') where Code = 'MD2608'
update Tables set ClusterId = (select Id from Clusters where Name = '09DRV.0026') where Code = 'MD2629'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRV.2627 ') where Code = 'MD2632'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRV.2627 ') where Code = 'MD2633'
update Tables set ClusterId = (select Id from Clusters where Name = '07DRV.0027') where Code = 'MD2702'
update Tables set ClusterId = (select Id from Clusters where Name = '07DRV.0027') where Code = 'MD2703'
update Tables set ClusterId = (select Id from Clusters where Name = '07DRV.0027') where Code = 'MD2704'
update Tables set ClusterId = (select Id from Clusters where Name = '07DRV.0027') where Code = 'MD2705'
update Tables set ClusterId = (select Id from Clusters where Name = '09DRV.2127 ') where Code = 'MD2706'
update Tables set ClusterId = (select Id from Clusters where Name = '09DRV.2127 ') where Code = 'MD2707'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRV.2627 ') where Code = 'MD2708'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRV.2627 ') where Code = 'MD2709'
update Tables set ClusterId = (select Id from Clusters where Name = '07DRM.28.OSP.1') where Code = 'OSS2801'
update Tables set ClusterId = (select Id from Clusters where Name = '07DRM.28.OSP.1') where Code = 'OSS2802'
update Tables set ClusterId = (select Id from Clusters where Name = '07DRM.28.OSP.2') where Code = 'OSS2803'
update Tables set ClusterId = (select Id from Clusters where Name = '07DRM.28.OSP.2') where Code = 'OSS2804'
update Tables set ClusterId = (select Id from Clusters where Name = '07DRM.28.OSP.2') where Code = 'OSS2808'
update Tables set ClusterId = (select Id from Clusters where Name = '07DRM.28.OSP.3') where Code = 'OMD2805'
update Tables set ClusterId = (select Id from Clusters where Name = '07DRM.28.OSP.3') where Code = 'OMD2806'
update Tables set ClusterId = (select Id from Clusters where Name = '07DRM.28.OSP.3') where Code = 'OSS2807'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRV.2529 ') where Code = 'MD2919'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRV.2529 ') where Code = 'MD2920'
update Tables set ClusterId = (select Id from Clusters where Name = '07DRV.0031') where Code = 'MD3109'
update Tables set ClusterId = (select Id from Clusters where Name = '07DRV.0031') where Code = 'MD3111'
update Tables set ClusterId = (select Id from Clusters where Name = '07DRV.0031') where Code = 'MD3110'
update Tables set ClusterId = (select Id from Clusters where Name = '07DRV.0031') where Code = 'MD3112'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRV.0031') where Code = 'MD3119'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRV.0031') where Code = 'MD3124'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRV.0031') where Code = 'MD3122'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRV.0031') where Code = 'MD3123'
update Tables set ClusterId = (select Id from Clusters where Name = '07DRV.0032') where Code = 'MD3209'
update Tables set ClusterId = (select Id from Clusters where Name = '07DRV.0032') where Code = 'MD3211'
update Tables set ClusterId = (select Id from Clusters where Name = '07DRV.0032') where Code = 'MD3210'
update Tables set ClusterId = (select Id from Clusters where Name = '07DRV.0032') where Code = 'MD3212'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRV.3335 ') where Code = 'MD3301'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRV.3335 ') where Code = 'PK3308'
update Tables set ClusterId = (select Id from Clusters where Name = '07DRV.3536 ') where Code = 'MD3512'
update Tables set ClusterId = (select Id from Clusters where Name = '07DRV.3536 ') where Code = 'MD3513'
update Tables set ClusterId = (select Id from Clusters where Name = '09DRV.3539 ') where Code = 'MD3518'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRV.0035') where Code = 'MD3523'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRV.0035') where Code = 'MD3524'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRV.3335 ') where Code = 'MD3526'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRV.0035') where Code = 'MD3527'
update Tables set ClusterId = (select Id from Clusters where Name = '07DRV.3536 ') where Code = 'MD3605'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRV.3739 ') where Code = 'MD3711'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRV.3739 ') where Code = 'MD3920'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRV.3739 ') where Code = 'MD3928'
update Tables set ClusterId = (select Id from Clusters where Name = '07DRV.3950 ') where Code = 'MD3921'
update Tables set ClusterId = (select Id from Clusters where Name = '07DRV.3950 ') where Code = 'MD3923'
update Tables set ClusterId = (select Id from Clusters where Name = '09DRV.3539 ') where Code = 'MD3926'
update Tables set ClusterId = (select Id from Clusters where Name = '09DRV.3539 ') where Code = 'MD3927'
update Tables set ClusterId = (select Id from Clusters where Name = '07DRV.3950 ') where Code = 'MD5013'
update Tables set ClusterId = (select Id from Clusters where Name = '07DRV.3950 ') where Code = 'MD5025'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRM.1652 ') where Code = 'SSM5201'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRM.1652 ') where Code = 'SSM5202'
update Tables set ClusterId = (select Id from Clusters where Name = '07DRM.5558 ') where Code = 'OSS5501'
update Tables set ClusterId = (select Id from Clusters where Name = '07DRM.5558 ') where Code = 'OSS5502'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRM.0055') where Code = 'OSS5515'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRM.0055') where Code = 'OSS5516'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRM.0055') where Code = 'ORD5513'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRM.0055') where Code = 'OSB5514'
update Tables set ClusterId = (select Id from Clusters where Name = '07DRM.5558 ') where Code = 'ORS5503'
update Tables set ClusterId = (select Id from Clusters where Name = '07DRM.5558 ') where Code = 'OSB5504'
update Tables set ClusterId = (select Id from Clusters where Name = '09DRM.0055') where Code = 'OSS5505'
update Tables set ClusterId = (select Id from Clusters where Name = '09DRM.0055') where Code = 'OSS5506'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRM.0055') where Code = 'OSS5511'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRM.0055') where Code = 'OSS5512'
update Tables set ClusterId = (select Id from Clusters where Name = '09DRM.0055') where Code = 'ORD5507'
update Tables set ClusterId = (select Id from Clusters where Name = '09DRM.0055') where Code = 'ORS5508'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRM.0055') where Code = 'OSS5509'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRM.0055') where Code = 'OSS5510'
update Tables set ClusterId = (select Id from Clusters where Name = '11.DRM.5556 ') where Code = 'OSS5718'
update Tables set ClusterId = (select Id from Clusters where Name = '11.DRM.5556 ') where Code = 'OSS5519'
update Tables set ClusterId = (select Id from Clusters where Name = '11.DRM.5556 ') where Code = 'OSS5520'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRM.0056') where Code = 'SAB5608'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRM.0056') where Code = 'SSM5609'
update Tables set ClusterId = (select Id from Clusters where Name = '07DRM.5658 ') where Code = 'UTH5620'
update Tables set ClusterId = (select Id from Clusters where Name = '11.DRM.5556 ') where Code = 'UTH5622'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRM.0056') where Code = 'BR5628'
update Tables set ClusterId = (select Id from Clusters where Name = '07DRM.15656 ') where Code = 'TCP5631'
update Tables set ClusterId = (select Id from Clusters where Name = '07DRM.1556 ') where Code = 'THB5630'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRM.0056') where Code = 'LP5633'
update Tables set ClusterId = (select Id from Clusters where Name = '11.DRM.5556 ') where Code = 'THB5632'
update Tables set ClusterId = (select Id from Clusters where Name = '07DRM.5658 ') where Code = 'SSM5801'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRM.0058.03') where Code = 'SSX5815'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRM.0058.03') where Code = 'SSM5804'
update Tables set ClusterId = (select Id from Clusters where Name = '07DRM.5658 ') where Code = 'SSX5814'
update Tables set ClusterId = (select Id from Clusters where Name = '07DRM.5658 ') where Code = 'SSM5805'
update Tables set ClusterId = (select Id from Clusters where Name = '07DRM.5558 ') where Code = 'SSX5816'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRM.0058.01') where Code = 'THB5809'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRM.0058.02') where Code = 'SSM5819'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRM.0058.02') where Code = 'SSM5820'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRM.0058.02') where Code = 'PSM5823'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRM.0058.02') where Code = 'PSM5824'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRM.0058.01') where Code = 'SSM5827'
update Tables set ClusterId = (select Id from Clusters where Name = '11DRM.0058.01') where Code = 'PSM5828'
update Tables set ClusterId = (select Id from Clusters where Name = '07DRM.30.OSP.1') where Code = 'OSS3004'
update Tables set ClusterId = (select Id from Clusters where Name = '07DRM.30.OSP.1') where Code = 'OSS3005'
update Tables set ClusterId = (select Id from Clusters where Name = '07DRM.30.OSP.1') where Code = 'POM3006'
update Tables set ClusterId = (select Id from Clusters where Name = '07DRM.30.OSP.2') where Code = 'OSS3001'
update Tables set ClusterId = (select Id from Clusters where Name = '07DRM.30.OSP.2') where Code = 'OSS3002'
update Tables set ClusterId = (select Id from Clusters where Name = '07DRM.30.OSP.2') where Code = 'OSS3003'
update Tables set ClusterId = (select Id from Clusters where Name = '07DRM.30.OSP.3') where Code = 'ORS3007'
update Tables set ClusterId = (select Id from Clusters where Name = '07DRM.30.OSP.3') where Code = 'OSB3009'
update Tables set ClusterId = (select Id from Clusters where Name = '07DRM.30.OSP.3') where Code = 'OSB3010'


--===============================================================
--===============================================================
---- LOOKUPS
--===============================================================
--===============================================================


insert into Lookups (Code, [Name], [Desc])
values
('SHIFT', 'Day', 'Day'),
('SHIFT', 'Swing', 'Swing'),
('SHIFT', 'Grave', 'Graveyard'),
('EMPSTAT', 'Active', 'Active'),
('EMPSTAT', 'Inactive', 'Inactive'),
('GAME', 'BBJ', ''),
('GAME', 'BJ', ''),
('GAME', 'BJP', ''),
('GAME', 'CG', ''),
('GAME', 'CP', ''),
('GAME', 'CS', ''),
('GAME', 'DBJ', ''),
('GAME', 'DBS', ''),
('GAME', 'ERL', ''),
('GAME', 'ETG', ''),
('GAME', 'GS', ''),
('GAME', 'LP', ''),
('GAME', 'MD', ''),
('GAME', 'MD3', ''),
('GAME', 'MNR', ''),
('GAME', 'MW', ''),
('GAME', 'OP', ''),
('GAME', 'OSMD', ''),
('GAME', 'OSSS', ''),
('GAME', 'PBJ', ''),
('GAME', 'PK', ''),
('GAME', 'PRG', ''),
('GAME', 'PS', ''),
('GAME', 'PT', ''),
('GAME', 'PTTR', ''),
('GAME', 'PW', ''),
('GAME', 'RB', ''),
('GAME', 'RDA', ''),
('GAME', 'RDS', ''),
('GAME', 'RL', ''),
('GAME', 'RLB', ''),
('GAME', 'RR', ''),
('GAME', 'SAB', ''),
('GAME', 'SB', ''),
('GAME', 'SC', ''),
('GAME', 'SCBJ', ''),
('GAME', 'SCCP', ''),
('GAME', 'SCCS', ''),
('GAME', 'SCLP', ''),
('GAME', 'SCMD', ''),
('GAME', 'SCPT', ''),
('GAME', 'SCRDA', ''),
('GAME', 'SCRDS', ''),
('GAME', 'SCRL', ''),
('GAME', 'SCSS', ''),
('GAME', 'SCTCP', ''),
('GAME', 'SCTHB', ''),
('GAME', 'SS', ''),
('GAME', 'TCP', ''),
('GAME', 'THB', ''),
('GAME', 'ZBJ', ''),
('GAME', 'APM', ''),
('GAME', 'CW', ''),
('GAME', 'Dealer', ''),
('GAME', 'DS', ''),
('GAME', 'F', ''),
('GAME', 'FPS', ''),
('GAME', 'HDGSM', ''),
('GAME', 'IRS', ''),
('GAME', 'M', ''),
('GAME', 'MGF', ''),
('GAME', 'NDR', ''),
('GAME', 'PPL', ''),
('GAME', 'PREG', ''),
('GAME', 'PSUP', ''),
('GAME', 'RLCB', ''),
('GAME', 'SIT', ''),
('GAME', 'SLT', ''),
('GAME', 'SNN', ''),
('GAME', 'STA', ''),
('GAME', 'TRN', ''),
('GAME', 'UTH', ''),
('GAME', 'VIP', '')



--===============================================================
--===============================================================
---- INSERT TABLE TIMES
--===============================================================
--===============================================================



insert into Times
(Id, [Open], [Close], Demand, TableId)
values
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'OSS5509')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'OSS5511')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'ORD5513')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'OSS5515')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'OSS5717')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'OSS5519')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'SAB5608')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'SSM5609')),
(NEWID(), '01/01/2024 7:00', '01/01/2024 15:00', 1, (SELECT Id from Tables Where Code = 'UTH5620')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'UTH5622')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'BR5628')),
(NEWID(), '01/01/2024 19:00', '01/01/2024 5:00', 1, (SELECT Id from Tables Where Code = 'BR5629')),
(NEWID(), '01/01/2024 7:00', '01/01/2024 15:00', 1, (SELECT Id from Tables Where Code = 'THB5630')),
(NEWID(), '01/01/2024 7:00', '01/01/2024 15:00', 1, (SELECT Id from Tables Where Code = 'TCP5631')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'THB5632')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'LP5633')),
(NEWID(), '01/01/2024 19:00', '01/01/2024 5:00', 1, (SELECT Id from Tables Where Code = 'TCP5634')),
(NEWID(), '01/01/2024 19:00', '01/01/2024 5:00', 1, (SELECT Id from Tables Where Code = 'THB5635')),
(NEWID(), '01/01/2024 19:00', '01/01/2024 5:00', 1, (SELECT Id from Tables Where Code = 'SSP5636')),
(NEWID(), '01/01/2024 7:00', '01/01/2024 15:00', 1, (SELECT Id from Tables Where Code = 'SSM5801')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'SSM5804')),
(NEWID(), '01/01/2024 7:00', '01/01/2024 15:00', 1, (SELECT Id from Tables Where Code = 'SSM5805')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'SSM5808')),
(NEWID(), '01/01/2024 7:00', '01/01/2024 15:00', 1, (SELECT Id from Tables Where Code = 'SSX5814')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'SSX5815')),
(NEWID(), '01/01/2024 7:00', '01/01/2024 15:00', 1, (SELECT Id from Tables Where Code = 'SSX5816')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'SSX5817')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'SSM5819')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'SSM5820')),
(NEWID(), '01/01/2024 19:00', '01/01/2024 5:00', 1, (SELECT Id from Tables Where Code = 'SSM5821')),
(NEWID(), '01/01/2024 19:00', '01/01/2024 5:00', 1, (SELECT Id from Tables Where Code = 'SSM5822')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'PSM5823')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'PSM5824')),
(NEWID(), '01/01/2024 19:00', '01/01/2024 5:00', 1, (SELECT Id from Tables Where Code = 'PSM5825')),
(NEWID(), '01/01/2024 19:00', '01/01/2024 5:00', 1, (SELECT Id from Tables Where Code = 'PSM5826')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'SSM5827')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'PSM5828')),
(NEWID(), '01/01/2024 19:00', '01/01/2024 5:00', 1, (SELECT Id from Tables Where Code = 'SSM5829')),
(NEWID(), '01/01/2024 19:00', '01/01/2024 5:00', 1, (SELECT Id from Tables Where Code = 'PSB5830')),
(NEWID(), '01/01/2024 19:00', '01/01/2024 5:00', 1, (SELECT Id from Tables Where Code = 'LP5818')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'THB5809')),
(NEWID(), '01/01/2024 7:00', '01/01/2024 15:00', 1, (SELECT Id from Tables Where Code = 'OSS5502')),
(NEWID(), '01/01/2024 7:00', '01/01/2024 15:00', 1, (SELECT Id from Tables Where Code = 'OSB5504')),
(NEWID(), '01/01/2024 9:00', '01/01/2024 5:00', 1, (SELECT Id from Tables Where Code = 'OSS5506')),
(NEWID(), '01/01/2024 9:00', '01/01/2024 5:00', 1, (SELECT Id from Tables Where Code = 'ORS5508')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'OSS5510')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'OSS5512')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'OSB5514')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'OSS5516')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'OSS5718')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'OSS5520')),
(NEWID(), '01/01/2024 7:00', '01/01/2024 15:00', 1, (SELECT Id from Tables Where Code = 'OSS2802')),
(NEWID(), '01/01/2024 7:00', '01/01/2024 15:00', 1, (SELECT Id from Tables Where Code = 'OSS2803')),
(NEWID(), '01/01/2024 7:00', '01/01/2024 15:00', 1, (SELECT Id from Tables Where Code = 'OSS2804')),
(NEWID(), '01/01/2024 7:00', '01/01/2024 15:00', 1, (SELECT Id from Tables Where Code = 'OMD2805')),
(NEWID(), '01/01/2024 7:00', '01/01/2024 15:00', 1, (SELECT Id from Tables Where Code = 'OMD2806')),
(NEWID(), '01/01/2024 7:00', '01/01/2024 15:00', 1, (SELECT Id from Tables Where Code = 'OSS2807')),
(NEWID(), '01/01/2024 7:00', '01/01/2024 15:00', 1, (SELECT Id from Tables Where Code = 'OSS2808')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'MD2919')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'MD2920')),
(NEWID(), '01/01/2024 7:00', '01/01/2024 15:00', 1, (SELECT Id from Tables Where Code = 'ORS3007')),
(NEWID(), '01/01/2024 7:00', '01/01/2024 15:00', 1, (SELECT Id from Tables Where Code = 'OSB3009')),
(NEWID(), '01/01/2024 7:00', '01/01/2024 15:00', 1, (SELECT Id from Tables Where Code = 'OSS3001')),
(NEWID(), '01/01/2024 7:00', '01/01/2024 15:00', 1, (SELECT Id from Tables Where Code = 'OSS3002')),
(NEWID(), '01/01/2024 7:00', '01/01/2024 15:00', 1, (SELECT Id from Tables Where Code = 'OSS3003')),
(NEWID(), '01/01/2024 7:00', '01/01/2024 15:00', 1, (SELECT Id from Tables Where Code = 'OSS3004')),
(NEWID(), '01/01/2024 7:00', '01/01/2024 15:00', 1, (SELECT Id from Tables Where Code = 'OSS3005')),
(NEWID(), '01/01/2024 7:00', '01/01/2024 15:00', 1, (SELECT Id from Tables Where Code = 'POM3006')),
(NEWID(), '01/01/2024 7:00', '01/01/2024 15:00', 1, (SELECT Id from Tables Where Code = 'OSB3010')),
(NEWID(), '01/01/2024 7:00', '01/01/2024 15:00', 1, (SELECT Id from Tables Where Code = 'OSB3009')),
(NEWID(), '01/01/2024 7:00', '01/01/2024 15:00', 1, (SELECT Id from Tables Where Code = 'MD3109')),
(NEWID(), '01/01/2024 7:00', '01/01/2024 15:00', 1, (SELECT Id from Tables Where Code = 'MD3110')),
(NEWID(), '01/01/2024 7:00', '01/01/2024 15:00', 1, (SELECT Id from Tables Where Code = 'MD3111')),
(NEWID(), '01/01/2024 7:00', '01/01/2024 15:00', 1, (SELECT Id from Tables Where Code = 'MD3112')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'MD3119')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'MD3122')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'MD3123')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'MD3124')),
(NEWID(), '01/01/2024 7:00', '01/01/2024 15:00', 1, (SELECT Id from Tables Where Code = 'MD3209')),
(NEWID(), '01/01/2024 7:00', '01/01/2024 15:00', 1, (SELECT Id from Tables Where Code = 'MD3210')),
(NEWID(), '01/01/2024 7:00', '01/01/2024 15:00', 1, (SELECT Id from Tables Where Code = 'MD3211')),
(NEWID(), '01/01/2024 7:00', '01/01/2024 15:00', 1, (SELECT Id from Tables Where Code = 'MD3212')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'MD3301')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'PK3308')),
(NEWID(), '01/01/2024 7:00', '01/01/2024 15:00', 1, (SELECT Id from Tables Where Code = 'MD3512')),
(NEWID(), '01/01/2024 7:00', '01/01/2024 15:00', 1, (SELECT Id from Tables Where Code = 'MD3513')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'MD3523')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'MD3524')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'MD3526')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'MD3527')),
(NEWID(), '01/01/2024 7:00', '01/01/2024 15:00', 1, (SELECT Id from Tables Where Code = 'MD3605')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'MD3711')),
(NEWID(), '01/01/2024 7:00', '01/01/2024 15:00', 1, (SELECT Id from Tables Where Code = 'SDB138')),
(NEWID(), '01/01/2024 7:00', '01/01/2024 15:00', 1, (SELECT Id from Tables Where Code = 'SDB139')),
(NEWID(), '01/01/2024 7:00', '01/01/2024 15:00', 1, (SELECT Id from Tables Where Code = 'SDB140')),
(NEWID(), '01/01/2024 7:00', '01/01/2024 15:00', 1, (SELECT Id from Tables Where Code = 'SDB141')),
(NEWID(), '01/01/2024 7:00', '01/01/2024 15:00', 1, (SELECT Id from Tables Where Code = 'SDB142')),
(NEWID(), '01/01/2024 19:00', '01/01/2024 5:00', 1, (SELECT Id from Tables Where Code = 'SDB143')),
(NEWID(), '01/01/2024 19:00', '01/01/2024 5:00', 1, (SELECT Id from Tables Where Code = 'SDB144')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'SDB145')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'SDB146')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'SSM130')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'SSM131')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'SSM132')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'SSM133')),
(NEWID(), '01/01/2024 21:00', '01/01/2024 7:00', 1, (SELECT Id from Tables Where Code = 'SSM134')),
(NEWID(), '01/01/2024 21:00', '01/01/2024 7:00', 1, (SELECT Id from Tables Where Code = 'SSM135')),
(NEWID(), '01/01/2024 21:00', '01/01/2024 7:00', 1, (SELECT Id from Tables Where Code = 'SSM136')),
(NEWID(), '01/01/2024 21:00', '01/01/2024 7:00', 1, (SELECT Id from Tables Where Code = 'SSM137')),
(NEWID(), '01/01/2024 7:00', '01/01/2024 15:00', 1, (SELECT Id from Tables Where Code = 'SNN149')),
(NEWID(), '01/01/2024 19:00', '01/01/2024 5:00', 1, (SELECT Id from Tables Where Code = 'SNN150')),
(NEWID(), '01/01/2024 7:00', '01/01/2024 15:00', 1, (SELECT Id from Tables Where Code = 'SSM201')),
(NEWID(), '01/01/2024 7:00', '01/01/2024 15:00', 1, (SELECT Id from Tables Where Code = 'SSM202')),
(NEWID(), '01/01/2024 7:00', '01/01/2024 15:00', 1, (SELECT Id from Tables Where Code = 'SSM203')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'SSM204')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'SSM205')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'SSM206')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'SSM207')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'SSM208')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'SSM209')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'SSM210')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'SSM211')),
(NEWID(), '01/01/2024 21:00', '01/01/2024 7:00', 1, (SELECT Id from Tables Where Code = 'SSM212')),
(NEWID(), '01/01/2024 21:00', '01/01/2024 7:00', 1, (SELECT Id from Tables Where Code = 'SSM213')),
(NEWID(), '01/01/2024 21:00', '01/01/2024 7:00', 1, (SELECT Id from Tables Where Code = 'SSM214')),
(NEWID(), '01/01/2024 21:00', '01/01/2024 7:00', 1, (SELECT Id from Tables Where Code = 'SSM215')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'CRM222')),
(NEWID(), '01/01/2024 7:00', '01/01/2024 15:00', 1, (SELECT Id from Tables Where Code = 'SSM238')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'SSM367')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'SSM368')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'SSM369')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'SSM370')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'SSM371')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'SSM372')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'SSM373')),
(NEWID(), '01/01/2024 19:00', '01/01/2024 5:00', 1, (SELECT Id from Tables Where Code = 'SSM374')),
(NEWID(), '01/01/2024 19:00', '01/01/2024 5:00', 1, (SELECT Id from Tables Where Code = 'SSM375')),
(NEWID(), '01/01/2024 19:00', '01/01/2024 5:00', 1, (SELECT Id from Tables Where Code = 'SNN376')),
(NEWID(), '01/01/2024 19:00', '01/01/2024 5:00', 1, (SELECT Id from Tables Where Code = 'SNN377')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'SSM701')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'SSM702')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'SSM703')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'SSM704')),
(NEWID(), '01/01/2024 21:00', '01/01/2024 7:00', 1, (SELECT Id from Tables Where Code = 'SSM705')),
(NEWID(), '01/01/2024 21:00', '01/01/2024 7:00', 1, (SELECT Id from Tables Where Code = 'SSM706')),
(NEWID(), '01/01/2024 21:00', '01/01/2024 7:00', 1, (SELECT Id from Tables Where Code = 'SSM707')),
(NEWID(), '01/01/2024 21:00', '01/01/2024 7:00', 1, (SELECT Id from Tables Where Code = 'SSM708')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'SSM709')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'SSM710')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'SSM711')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'SSM712')),
(NEWID(), '01/01/2024 19:00', '01/01/2024 5:00', 1, (SELECT Id from Tables Where Code = 'SSM714')),
(NEWID(), '01/01/2024 19:00', '01/01/2024 5:00', 1, (SELECT Id from Tables Where Code = 'SSM715')),
(NEWID(), '01/01/2024 19:00', '01/01/2024 5:00', 1, (SELECT Id from Tables Where Code = 'SSM716')),
(NEWID(), '01/01/2024 19:00', '01/01/2024 5:00', 1, (SELECT Id from Tables Where Code = 'SSM717')),
(NEWID(), '01/01/2024 19:00', '01/01/2024 5:00', 1, (SELECT Id from Tables Where Code = 'SSM718')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'MW728')),
(NEWID(), '01/01/2024 19:00', '01/01/2024 5:00', 1, (SELECT Id from Tables Where Code = 'MW746')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'SB729')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'SB730')),
(NEWID(), '01/01/2024 19:00', '01/01/2024 5:00', 1, (SELECT Id from Tables Where Code = 'SB731')),
(NEWID(), '01/01/2024 19:00', '01/01/2024 5:00', 1, (SELECT Id from Tables Where Code = 'CRP744')),
(NEWID(), '01/01/2024 19:00', '01/01/2024 5:00', 1, (SELECT Id from Tables Where Code = 'SSM745')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'DBJ858')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'DBJ859')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'DBJ860')),
(NEWID(), '01/01/2024 7:00', '01/01/2024 15:00', 1, (SELECT Id from Tables Where Code = 'DBJ861')),
(NEWID(), '01/01/2024 19:00', '01/01/2024 5:00', 1, (SELECT Id from Tables Where Code = 'DBJ862')),
(NEWID(), '01/01/2024 7:00', '01/01/2024 15:00', 1, (SELECT Id from Tables Where Code = 'PTT863')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'PTT865')),
(NEWID(), '01/01/2024 19:00', '01/01/2024 5:00', 1, (SELECT Id from Tables Where Code = 'ZBJ864')),
(NEWID(), '01/01/2024 21:00', '01/01/2024 7:00', 1, (SELECT Id from Tables Where Code = 'RLB854')),
(NEWID(), '01/01/2024 21:00', '01/01/2024 7:00', 1, (SELECT Id from Tables Where Code = 'RDB855')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'RDB856')),
(NEWID(), '01/01/2024 19:00', '01/01/2024 5:00', 1, (SELECT Id from Tables Where Code = 'RDB857')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'SSM901')),
(NEWID(), '01/01/2024 19:00', '01/01/2024 5:00', 1, (SELECT Id from Tables Where Code = 'SSM902')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'SSM903')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'SSM974')),
(NEWID(), '01/01/2024 19:00', '01/01/2024 5:00', 1, (SELECT Id from Tables Where Code = 'SSM975')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'SSM976')),
(NEWID(), '01/01/2024 19:00', '01/01/2024 5:00', 1, (SELECT Id from Tables Where Code = 'SSM977')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'SSM978')),
(NEWID(), '01/01/2024 19:00', '01/01/2024 5:00', 1, (SELECT Id from Tables Where Code = 'SSM979')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'SSM980')),
(NEWID(), '01/01/2024 19:00', '01/01/2024 5:00', 1, (SELECT Id from Tables Where Code = 'SSM981')),
(NEWID(), '01/01/2024 7:00', '01/01/2024 15:00', 1, (SELECT Id from Tables Where Code = 'SSM1501')),
(NEWID(), '01/01/2024 7:00', '01/01/2024 15:00', 1, (SELECT Id from Tables Where Code = 'SSM1502')),
(NEWID(), '01/01/2024 7:00', '01/01/2024 15:00', 1, (SELECT Id from Tables Where Code = 'SSM1503')),
(NEWID(), '01/01/2024 7:00', '01/01/2024 15:00', 1, (SELECT Id from Tables Where Code = 'SSM1504')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'SSM1505')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'SSM1506')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'SSM1507')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'SSM1508')),
(NEWID(), '01/01/2024 19:00', '01/01/2024 5:00', 1, (SELECT Id from Tables Where Code = 'SSM1509')),
(NEWID(), '01/01/2024 19:00', '01/01/2024 5:00', 1, (SELECT Id from Tables Where Code = 'SSM1510')),
(NEWID(), '01/01/2024 19:00', '01/01/2024 5:00', 1, (SELECT Id from Tables Where Code = 'SSM1511')),
(NEWID(), '01/01/2024 19:00', '01/01/2024 5:00', 1, (SELECT Id from Tables Where Code = 'SSM1512')),
(NEWID(), '01/01/2024 19:00', '01/01/2024 5:00', 1, (SELECT Id from Tables Where Code = 'SSM1513')),
(NEWID(), '01/01/2024 19:00', '01/01/2024 5:00', 1, (SELECT Id from Tables Where Code = 'SSM1514')),
(NEWID(), '01/01/2024 19:00', '01/01/2024 5:00', 1, (SELECT Id from Tables Where Code = 'SSM1515')),
(NEWID(), '01/01/2024 19:00', '01/01/2024 5:00', 1, (SELECT Id from Tables Where Code = 'SSM1516')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'RLB1535')),
(NEWID(), '01/01/2024 19:00', '01/01/2024 5:00', 1, (SELECT Id from Tables Where Code = 'RLB1540')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'SSM1601')),
(NEWID(), '01/01/2024 7:00', '01/01/2024 15:00', 1, (SELECT Id from Tables Where Code = 'SXB1602')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'SSB1603')),
(NEWID(), '01/01/2024 7:00', '01/01/2024 15:00', 1, (SELECT Id from Tables Where Code = 'SSM1604')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'SSM1605')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'SSB1607')),
(NEWID(), '01/01/2024 19:00', '01/01/2024 5:00', 1, (SELECT Id from Tables Where Code = 'SSB1608')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'PSB1609')),
(NEWID(), '01/01/2024 19:00', '01/01/2024 5:00', 1, (SELECT Id from Tables Where Code = 'SSM1611')),
(NEWID(), '01/01/2024 19:00', '01/01/2024 5:00', 1, (SELECT Id from Tables Where Code = 'SSM1614')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'SSM1615')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'SSM1616')),
(NEWID(), '01/01/2024 19:00', '01/01/2024 5:00', 1, (SELECT Id from Tables Where Code = 'SSM1617')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'SSB1618')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'SXB1667')),
(NEWID(), '01/01/2024 7:00', '01/01/2024 15:00', 1, (SELECT Id from Tables Where Code = 'MD1805')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'MD1817')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'MD1818')),
(NEWID(), '01/01/2024 9:00', '01/01/2024 5:00', 1, (SELECT Id from Tables Where Code = 'MD1820')),
(NEWID(), '01/01/2024 7:00', '01/01/2024 15:00', 1, (SELECT Id from Tables Where Code = 'MD1821')),
(NEWID(), '01/01/2024 9:00', '01/01/2024 5:00', 1, (SELECT Id from Tables Where Code = 'MD1827')),
(NEWID(), '01/01/2024 7:00', '01/01/2024 15:00', 1, (SELECT Id from Tables Where Code = 'MD1940')),
(NEWID(), '01/01/2024 7:00', '01/01/2024 15:00', 1, (SELECT Id from Tables Where Code = 'MD1944')),
(NEWID(), '01/01/2024 7:00', '01/01/2024 15:00', 1, (SELECT Id from Tables Where Code = 'MD1945')),
(NEWID(), '01/01/2024 9:00', '01/01/2024 5:00', 1, (SELECT Id from Tables Where Code = 'MD1946')),
(NEWID(), '01/01/2024 9:00', '01/01/2024 5:00', 1, (SELECT Id from Tables Where Code = 'MD1947')),
(NEWID(), '01/01/2024 9:00', '01/01/2024 5:00', 1, (SELECT Id from Tables Where Code = 'MD2204')),
(NEWID(), '01/01/2024 7:00', '01/01/2024 15:00', 1, (SELECT Id from Tables Where Code = 'MD2213')),
(NEWID(), '01/01/2024 7:00', '01/01/2024 15:00', 1, (SELECT Id from Tables Where Code = 'MD2407')),
(NEWID(), '01/01/2024 7:00', '01/01/2024 15:00', 1, (SELECT Id from Tables Where Code = 'MD2409')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'MD2510')),
(NEWID(), '01/01/2024 7:00', '01/01/2024 15:00', 1, (SELECT Id from Tables Where Code = 'MD2513')),
(NEWID(), '01/01/2024 7:00', '01/01/2024 15:00', 1, (SELECT Id from Tables Where Code = 'MD2514')),
(NEWID(), '01/01/2024 7:00', '01/01/2024 15:00', 1, (SELECT Id from Tables Where Code = 'MD2602')),
(NEWID(), '01/01/2024 7:00', '01/01/2024 15:00', 1, (SELECT Id from Tables Where Code = 'MD2603')),
(NEWID(), '01/01/2024 7:00', '01/01/2024 15:00', 1, (SELECT Id from Tables Where Code = 'MD 2620')),
(NEWID(), '01/01/2024 7:00', '01/01/2024 15:00', 1, (SELECT Id from Tables Where Code = 'MD2619')),
(NEWID(), '01/01/2024 7:00', '01/01/2024 15:00', 1, (SELECT Id from Tables Where Code = 'MD2621')),
(NEWID(), '01/01/2024 9:00', '01/01/2024 5:00', 1, (SELECT Id from Tables Where Code = 'MD2607')),
(NEWID(), '01/01/2024 9:00', '01/01/2024 5:00', 1, (SELECT Id from Tables Where Code = 'MD2629')),
(NEWID(), '01/01/2024 9:00', '01/01/2024 5:00', 1, (SELECT Id from Tables Where Code = 'MD2608')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'MD2632')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'MD2633')),
(NEWID(), '01/01/2024 7:00', '01/01/2024 15:00', 1, (SELECT Id from Tables Where Code = 'MD2702')),
(NEWID(), '01/01/2024 7:00', '01/01/2024 15:00', 1, (SELECT Id from Tables Where Code = 'MD2703')),
(NEWID(), '01/01/2024 7:00', '01/01/2024 15:00', 1, (SELECT Id from Tables Where Code = 'MD2704')),
(NEWID(), '01/01/2024 7:00', '01/01/2024 15:00', 1, (SELECT Id from Tables Where Code = 'MD2705')),
(NEWID(), '01/01/2024 9:00', '01/01/2024 5:00', 1, (SELECT Id from Tables Where Code = 'MD2706')),
(NEWID(), '01/01/2024 9:00', '01/01/2024 5:00', 1, (SELECT Id from Tables Where Code = 'MD2707')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'MD2708')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'MD2709')),
(NEWID(), '01/01/2024 7:00', '01/01/2024 15:00', 1, (SELECT Id from Tables Where Code = 'OSS2801')),
(NEWID(), '01/01/2024 9:00', '01/01/2024 5:00', 1, (SELECT Id from Tables Where Code = 'MD3926')),
(NEWID(), '01/01/2024 9:00', '01/01/2024 5:00', 1, (SELECT Id from Tables Where Code = 'MD3927')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'MD3928')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'MD3920')),
(NEWID(), '01/01/2024 7:00', '01/01/2024 15:00', 1, (SELECT Id from Tables Where Code = 'MD3921')),
(NEWID(), '01/01/2024 7:00', '01/01/2024 15:00', 1, (SELECT Id from Tables Where Code = 'MD3923')),
(NEWID(), '01/01/2024 7:00', '01/01/2024 15:00', 1, (SELECT Id from Tables Where Code = 'MD5013')),
(NEWID(), '01/01/2024 7:00', '01/01/2024 15:00', 1, (SELECT Id from Tables Where Code = 'MD5025')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'SSM5201')),
(NEWID(), '01/01/2024 11:00', '01/01/2024 19:00', 1, (SELECT Id from Tables Where Code = 'SSM5202')),
(NEWID(), '01/01/2024 19:00', '01/01/2024 5:00', 1, (SELECT Id from Tables Where Code = 'SSM5203')),
(NEWID(), '01/01/2024 19:00', '01/01/2024 5:00', 1, (SELECT Id from Tables Where Code = 'SSM5204')),
(NEWID(), '01/01/2024 7:00', '01/01/2024 15:00', 1, (SELECT Id from Tables Where Code = 'OSS5501')),
(NEWID(), '01/01/2024 7:00', '01/01/2024 15:00', 1, (SELECT Id from Tables Where Code = 'ORS5503')),
(NEWID(), '01/01/2024 9:00', '01/01/2024 5:00', 1, (SELECT Id from Tables Where Code = 'OSS5505')),
(NEWID(), '01/01/2024 9:00', '01/01/2024 5:00', 1, (SELECT Id from Tables Where Code = 'ORD5507'))




--===============================================================
--===============================================================
---- UPDATE EMPLOYEE ROLES
--===============================================================
--===============================================================

UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '714'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '208'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1715'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1103'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '324'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1754'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '878'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '26'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '385'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1394'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1221'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1788'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '502'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1934'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '18'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '294'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '310'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '266'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '646'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '69'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1937'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '247'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1039'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '916'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1272'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '699'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '408'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1758'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '801'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1505'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '377'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '678'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '104'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '376'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '703'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '993'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '777'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1207'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '288'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '624'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1163'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '837'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '290'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '797'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '880'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1280'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '547'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1533'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '908'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1721'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '462'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1712'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1037'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1300'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1485'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '54'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1713'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1957'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '989'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '885'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '648'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '618'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '417'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '812'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1360'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1917'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '638'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '20'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '67'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '974'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '670'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1175'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '535'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1597'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '213'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1914'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '919'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '249'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '856'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '168'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '517'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '77'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '978'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '681'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '765'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1176'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1303'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '121'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '561'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1067'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1850'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '568'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '705'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '875'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '102'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '426'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '488'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '185'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1726'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '941'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1194'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '892'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1408'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '13'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '816'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1351'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '832'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '983'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1678'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '923'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1356'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '200'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1612'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '4'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1900'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '742'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '642'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1679'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '436'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '674'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1474'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '886'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1831'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1574'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '88'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '511'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1450'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1267'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '888'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1956'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1257'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1926'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1882'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1578'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1428'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1843'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1846'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1204'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '650'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1367'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1089'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1321'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1952'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '871'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '45'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1741'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1109'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '236'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1392'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '782'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '89'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '578'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1381'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '750'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '558'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '181'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '969'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1702'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '766'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '745'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '329'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1016'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1851'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '789'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '352'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '250'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1018'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1735'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1026'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1469'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1813'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1349'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '512'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '248'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1088'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '962'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1097'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '169'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1762'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '182'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1619'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '929'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1418'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1243'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1222'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '514'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1061'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1615'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1200'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '386'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1707'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1811'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '289'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '41'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '580'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '219'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '852'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1085'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '291'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1496'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1304'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1002'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '970'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '811'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1845'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1054'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '44'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1149'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1219'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '604'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '776'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '820'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1079'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1532'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '623'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1064'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '204'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1182'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1670'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '571'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '320'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '81'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '87'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '312'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '721'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1020'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '979'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1004'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1038'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '545'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1940'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1087'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '981'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1848'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '684'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1285'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '575'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '270'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '161'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1422'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '882'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1921'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1775'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1561'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1416'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '497'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '997'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '569'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1096'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1552'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1294'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1866'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1078'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '31'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1901'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '317'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '855'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '593'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1595'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '611'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '990'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1077'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '792'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '427'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1186'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1582'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '827'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '139'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '429'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '751'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '853'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1095'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '85'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '552'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '231'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '472'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '84'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '83'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1315'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '164'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '374'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '287'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1282'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1442'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1548'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '513'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '367'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '679'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1329'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '780'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1531'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '418'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '937'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '179'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '109'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '783'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '184'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '350'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1240'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '368'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '807'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1119'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '279'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '332'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1446'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1171'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '998'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1857'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '959'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1338'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1179'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '322'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '521'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1042'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1806'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1107'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1276'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1568'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1068'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '893'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '625'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1646'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '315'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1665'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '244'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '302'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1815'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '28'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1620'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '944'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1516'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '337'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1160'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1594'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1507'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1332'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1028'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '599'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '629'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '551'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '734'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1362'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1231'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1148'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '278'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1423'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '515'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1306'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '335'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1909'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '63'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1404'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '416'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '448'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1603'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '689'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '560'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1426'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1839'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1691'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '340'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1345'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '457'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '345'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1542'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1053'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '92'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1535'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1884'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1832'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1475'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '296'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1288'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '79'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '958'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '158'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1509'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1155'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1203'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1704'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '282'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '493'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '755'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '822'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '847'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '537'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1410'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '590'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1825'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1034'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '500'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '861'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1006'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '876'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1193'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1853'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '940'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1165'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1798'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1005'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1584'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '957'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1737'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1277'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1184'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '790'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1224'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '626'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '39'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '636'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '719'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '393'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '257'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1631'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '390'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1689'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '58'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '610'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '758'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1414'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1700'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '671'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '796'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1487'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1310'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '763'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1785'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1695'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '988'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '107'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '30'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '113'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '96'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1706'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1371'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1366'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1436'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '370'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1284'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '423'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1814'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '359'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '220'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '273'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1488'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1459'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1247'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '468'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '450'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '622'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1899'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '652'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1885'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '134'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '647'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '35'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1893'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1828'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1649'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1084'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1033'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1625'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1537'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1098'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1601'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1807'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '74'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '12'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1168'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '803'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '921'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1283'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1550'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1242'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '917'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1003'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '904'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1169'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1341'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '174'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1812'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '396'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1260'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '902'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1050'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '743'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1374'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1528'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '640'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1172'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1191'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '938'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1864'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '49'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1510'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1581'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1334'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '564'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1892'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '238'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '830'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '148'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '59'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1732'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1791'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '141'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1675'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1605'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1307'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1298'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '16'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '451'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1130'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '152'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1761'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '29'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1725'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '688'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '442'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1527'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '147'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1958'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1709'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1063'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '943'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '401'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '627'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1400'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '752'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '768'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '42'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '225'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '644'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1058'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '736'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '106'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1925'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1530'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1780'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '964'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '499'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '735'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1086'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '209'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1935'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1803'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '778'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '162'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '965'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1251'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '402'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '818'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '749'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '924'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1154'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '98'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '800'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '596'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1817'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '555'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1886'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '264'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1473'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '581'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1613'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '142'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1281'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1024'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '738'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '155'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '318'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '432'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1669'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1479'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '97'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '11'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1353'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '333'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '17'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '510'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '508'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1819'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '76'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1401'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1554'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1012'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '731'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1667'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '869'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1640'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '895'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1225'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1347'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1686'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1156'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '111'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '900'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1771'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1529'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '3'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1792'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1313'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '968'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1872'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '945'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1746'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '616'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1747'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '187'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1657'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1170'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '866'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1364'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1876'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1372'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '21'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1407'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1759'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1320'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1769'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1888'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1138'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '380'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1216'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1506'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1108'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '323'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '124'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '695'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '195'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '394'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1378'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '903'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '887'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '992'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1017'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '199'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '149'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '931'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1800'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '271'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '197'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1415'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '854'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '701'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '5'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1519'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1493'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1308'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '794'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '399'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1013'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '325'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1244'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1323'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1933'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1441'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1734'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '27'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1167'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '382'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1237'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '774'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1703'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1504'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1718'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '815'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1380'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '351'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '522'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1226'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1102'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1638'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1897'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1074'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1261'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '91'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1178'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '538'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '799'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1133'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '467'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1357'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1010'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '661'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1701'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1835'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1437'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '621'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1489'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1015'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '224'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1476'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1048'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '548'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '481'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '381'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1786'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '600'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1576'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1124'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '193'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1633'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1060'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1666'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1142'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1144'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1040'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '809'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '883'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1699'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '523'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '984'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '570'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '550'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '539'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '764'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '726'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1388'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '286'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '415'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '739'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '656'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '159'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '779'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1435'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '606'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1352'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1403'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1677'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1286'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '953'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '814'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1602'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '817'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1316'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1022'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1684'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1134'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '404'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '363'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '353'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '526'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1032'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1508'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '798'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1919'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '505'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1199'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1147'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1117'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '172'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '770'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1355'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1945'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1159'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1105'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1804'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '47'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1440'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '704'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1688'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1553'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1235'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '562'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1131'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1710'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '470'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1525'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '347'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '241'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1448'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1544'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '802'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '582'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '935'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '255'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '614'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '311'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1065'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1421'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '894'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1954'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '587'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1577'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '877'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '602'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1278'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1057'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '896'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '668'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1743'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '115'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '445'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1354'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '775'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1197'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1192'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '527'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '365'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1255'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1862'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '407'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '203'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '846'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1559'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '299'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1652'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '259'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1768'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '222'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '48'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1214'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1698'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1763'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '842'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1113'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1654'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1818'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '825'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1336'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1161'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1794'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '631'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1227'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1744'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1782'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1556'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1376'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '229'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '530'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '690'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1239'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '960'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1592'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '183'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '905'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1736'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '449'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '635'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1953'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '525'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1575'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1196'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1238'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1580'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1766'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '71'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1877'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1889'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '211'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1232'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1890'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1187'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '870'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1676'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '24'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1572'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '829'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '723'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '410'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '126'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '316'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1499'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1755'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1385'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1379'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1895'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '913'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1467'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1874'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '94'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '57'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1464'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1358'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1840'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '710'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '227'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '806'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '339'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1080'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1517'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1386'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1959'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '985'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '1944'
UPDATE Employees SET Role = 86 WHERE EmployeeNumber = '760'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '733'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '672'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '860'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1457'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '747'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1573'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '897'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '422'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '607'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1420'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '592'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '37'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1931'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1424'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '348'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '724'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1630'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '889'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1498'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '440'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1346'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '285'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '857'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '784'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '132'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1801'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1443'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1031'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '700'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1041'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '933'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1249'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '634'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '608'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1616'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '863'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1512'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1259'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '725'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1642'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '186'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '129'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1692'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1905'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '579'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1868'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '245'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1860'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '50'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1674'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1262'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '202'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '848'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1513'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1629'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1773'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '658'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '437'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '549'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '524'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '630'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1784'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '419'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1920'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '977'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1898'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1223'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1567'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1938'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1477'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '93'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '118'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '693'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1427'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '950'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1824'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '43'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '687'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '9'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1538'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1271'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '175'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1515'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1164'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1150'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1727'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '216'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '267'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '240'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1137'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '692'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1491'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1233'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1711'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1348'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1125'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '808'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1145'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '946'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1779'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '925'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1626'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1263'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '746'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '972'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1887'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1126'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '685'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '615'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '178'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1622'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '223'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1837'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1634'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '589'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1609'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1614'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '258'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '14'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '506'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '716'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '7'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '662'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '243'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '378'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '338'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '833'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1220'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1139'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '207'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '694'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '357'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1641'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1045'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1051'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '23'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1368'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1869'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '532'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1852'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1393'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '845'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '156'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1047'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1910'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1158'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1923'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1395'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1645'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1830'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1295'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1522'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '151'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '101'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1949'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '920'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1162'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '485'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1826'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1090'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '554'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '387'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1076'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '487'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1292'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1708'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '839'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '483'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '110'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '926'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '281'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1637'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1140'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1774'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '465'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1549'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '150'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1770'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '717'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1472'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '40'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1587'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '105'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '372'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '727'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '2'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1849'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1266'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1863'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '999'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1029'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '544'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '218'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1808'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '265'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1570'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '33'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1111'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1610'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1536'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '872'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1406'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '862'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '748'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '358'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '756'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '574'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1607'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '73'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '252'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1662'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '456'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1731'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1591'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '112'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1947'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1455'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '80'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '673'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1653'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '154'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1373'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '277'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1425'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '819'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1929'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '135'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1094'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '909'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1565'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1025'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1497'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '458'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1340'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1681'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1729'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1082'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '441'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1245'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '328'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '874'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1586'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1270'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1129'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1279'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1693'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1343'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1211'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1719'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1922'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '233'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '573'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '163'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1583'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1859'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '32'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1319'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '153'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '237'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '276'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1948'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1153'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1190'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1069'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '251'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1419'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1289'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1714'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '438'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1878'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1151'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '254'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '559'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '464'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1805'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '952'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1904'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1480'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '314'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '761'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '859'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1397'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1752'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '117'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1694'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1883'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '496'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1453'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1456'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1072'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1928'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '424'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '612'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1789'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1738'
UPDATE Employees SET Role = 87 WHERE EmployeeNumber = '1939'
UPDATE Employees SET Role = 88 WHERE EmployeeNumber = '383'
UPDATE Employees SET Role = 88 WHERE EmployeeNumber = '375'
UPDATE Employees SET Role = 88 WHERE EmployeeNumber = '1563'
UPDATE Employees SET Role = 88 WHERE EmployeeNumber = '1116'
UPDATE Employees SET Role = 88 WHERE EmployeeNumber = '137'
UPDATE Employees SET Role = 88 WHERE EmployeeNumber = '1739'
UPDATE Employees SET Role = 88 WHERE EmployeeNumber = '1375'
UPDATE Employees SET Role = 88 WHERE EmployeeNumber = '1458'
UPDATE Employees SET Role = 88 WHERE EmployeeNumber = '1621'
UPDATE Employees SET Role = 88 WHERE EmployeeNumber = '1208'
UPDATE Employees SET Role = 88 WHERE EmployeeNumber = '1344'
UPDATE Employees SET Role = 88 WHERE EmployeeNumber = '1924'
UPDATE Employees SET Role = 88 WHERE EmployeeNumber = '1655'
UPDATE Employees SET Role = 88 WHERE EmployeeNumber = '75'
UPDATE Employees SET Role = 88 WHERE EmployeeNumber = '412'
UPDATE Employees SET Role = 88 WHERE EmployeeNumber = '230'
UPDATE Employees SET Role = 88 WHERE EmployeeNumber = '1241'
UPDATE Employees SET Role = 88 WHERE EmployeeNumber = '1776'
UPDATE Employees SET Role = 88 WHERE EmployeeNumber = '1183'
UPDATE Employees SET Role = 88 WHERE EmployeeNumber = '476'
UPDATE Employees SET Role = 88 WHERE EmployeeNumber = '1302'
UPDATE Employees SET Role = 88 WHERE EmployeeNumber = '865'
UPDATE Employees SET Role = 88 WHERE EmployeeNumber = '133'
UPDATE Employees SET Role = 88 WHERE EmployeeNumber = '95'
UPDATE Employees SET Role = 88 WHERE EmployeeNumber = '1429'
UPDATE Employees SET Role = 88 WHERE EmployeeNumber = '1539'
UPDATE Employees SET Role = 88 WHERE EmployeeNumber = '1822'
UPDATE Employees SET Role = 88 WHERE EmployeeNumber = '786'
UPDATE Employees SET Role = 88 WHERE EmployeeNumber = '72'
UPDATE Employees SET Role = 88 WHERE EmployeeNumber = '1115'
UPDATE Employees SET Role = 88 WHERE EmployeeNumber = '256'
UPDATE Employees SET Role = 88 WHERE EmployeeNumber = '1672'
UPDATE Employees SET Role = 88 WHERE EmployeeNumber = '1402'
UPDATE Employees SET Role = 88 WHERE EmployeeNumber = '1011'
UPDATE Employees SET Role = 88 WHERE EmployeeNumber = '1781'
UPDATE Employees SET Role = 88 WHERE EmployeeNumber = '583'
UPDATE Employees SET Role = 88 WHERE EmployeeNumber = '1399'
UPDATE Employees SET Role = 88 WHERE EmployeeNumber = '696'
UPDATE Employees SET Role = 88 WHERE EmployeeNumber = '1228'
UPDATE Employees SET Role = 88 WHERE EmployeeNumber = '1335'
UPDATE Employees SET Role = 88 WHERE EmployeeNumber = '1209'
UPDATE Employees SET Role = 88 WHERE EmployeeNumber = '343'
UPDATE Employees SET Role = 88 WHERE EmployeeNumber = '557'
UPDATE Employees SET Role = 88 WHERE EmployeeNumber = '262'
UPDATE Employees SET Role = 88 WHERE EmployeeNumber = '1339'
UPDATE Employees SET Role = 88 WHERE EmployeeNumber = '1023'
UPDATE Employees SET Role = 88 WHERE EmployeeNumber = '1680'
UPDATE Employees SET Role = 88 WHERE EmployeeNumber = '191'
UPDATE Employees SET Role = 88 WHERE EmployeeNumber = '373'
UPDATE Employees SET Role = 88 WHERE EmployeeNumber = '1632'
UPDATE Employees SET Role = 88 WHERE EmployeeNumber = '597'
UPDATE Employees SET Role = 88 WHERE EmployeeNumber = '971'
UPDATE Employees SET Role = 88 WHERE EmployeeNumber = '1827'
UPDATE Employees SET Role = 88 WHERE EmployeeNumber = '1821'
UPDATE Employees SET Role = 88 WHERE EmployeeNumber = '1810'
UPDATE Employees SET Role = 88 WHERE EmployeeNumber = '1071'
UPDATE Employees SET Role = 88 WHERE EmployeeNumber = '507'
UPDATE Employees SET Role = 88 WHERE EmployeeNumber = '595'
UPDATE Employees SET Role = 88 WHERE EmployeeNumber = '1611'
UPDATE Employees SET Role = 88 WHERE EmployeeNumber = '1377'
UPDATE Employees SET Role = 88 WHERE EmployeeNumber = '655'


--===============================================================
--===============================================================
---- UPDATE TABLE Required Proficiency
--===============================================================
--===============================================================



UPDATE Tables SET RequiredProficiency = 50 WHERE Code = 'CRM222'
UPDATE Tables SET RequiredProficiency = 50 WHERE Code = 'CRP744'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD1805'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD1814'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD1815'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD1816'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD1817'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD1818'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD1819'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD1820'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD1821'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD1822'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD1823'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD1825'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD1827'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD2116'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD2136'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD2143'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD2144'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD2145'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD159'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD2160'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD2164'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD2165'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD2166'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'SS2169'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'SS2170'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'OSS2801'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'OSS2802'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'OSS2803'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'OSS2804'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'OMD2805'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'OMD2806'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'OSS2807'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'OSS2808'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'ORS3007'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'OSB3009'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'OSS3001'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'OSS3002'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'OSS3003'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'OSS3004'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'OSS3005'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'POM3006'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'OSB3010'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'OSB3009'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'PMD5101'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'PSS5104'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'PMD5107'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'PMD5109'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'ORS5503'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'ORD5513'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'SSM5701'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'PSM5702'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'SMS5703'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'PSM5704'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'SMS5705'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'PSM5706'
UPDATE Tables SET RequiredProficiency = 50 WHERE Code = 'RLB5709'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'PSB5711'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'SSB5712'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'SSM5801'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'SSM5804'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'SSM5805'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'SSM5808'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'SSX5814'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'SSX5815'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'SSX5816'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'SSX5817'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'SSM5819'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'SSM5820'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'SSM5821'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'SSM5822'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'PSM5823'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'PSM5824'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'PSM5825'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'PSM5826'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'SSM5827'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'PSM5828'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'SSM5829'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'PSB5830'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'LP5818'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'THB5809'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'SBJ5812'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'THB5813'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'PMD5901'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'PMD5902'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'PMD5903'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'PMD5905'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'PMD5906'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'PMD5907'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'PMD5908'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'PMD5909'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'PMD5910'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'OSB5504'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'OSB5514'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SDB138'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SDB139'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SDB140'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SDB141'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SDB142'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SDB143'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SDB144'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SDB145'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SDB146'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SSM130'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SSM131'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SSM132'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SSM133'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SSM134'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SSM135'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SSM136'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SSM137'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SNN149'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SNN150'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SSM201'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SSM202'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SSM203'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SSM204'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SSM205'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SSM206'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SSM207'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SSM208'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SSM209'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SSM210'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SSM211'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SSM212'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SSM213'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SSM214'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SSM215'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SSM238'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SSM367'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SSM368'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SSM369'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SSM370'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SSM371'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SSM372'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SSM373'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SSM374'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SSM375'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SNN376'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SNN377'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SSM701'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SSM702'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SSM703'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SSM704'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SSM705'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SSM706'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SSM707'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SSM708'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SSM709'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SSM710'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SSM711'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SSM712'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SSM714'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SSM715'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SSM716'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SSM717'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SSM718'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'MW728'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'MW746'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SB729'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SB730'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SB731'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SSM745'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'DBJ858'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'DBJ859'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'DBJ860'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'DBJ861'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'DBJ862'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'PTT863'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'PTT865'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'ZBJ864'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'RLB854'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'RDB855'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'RDB856'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'RDB857'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SSM901'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SSM902'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SSM903'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'BT962'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SSM974'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SSM975'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SSM976'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SSM977'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SSM978'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SSM979'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SSM980'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SSM981'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SSM1301'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SSM1302'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SSM1303'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SSM1304'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SSM1305'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SSM1306'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SS1308'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SAB1397'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SS1307'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SNN1321'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SAB1389'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'PTT1397'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'SSM1501'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'SSM1502'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'SSM1503'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'SSM1504'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'SSM1505'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'SSM1506'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'SSM1507'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'SSM1508'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'SSM1509'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'SSM1510'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'SSM1511'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'SSM1512'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'SSM1513'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'SSM1514'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'SSM1515'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'SSM1516'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'RLB1535'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'RLB1540'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'SSM1601'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'SXB1602'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'SSB1603'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'SSM1604'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'SSM1605'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'SSB1607'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'SSB1608'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'PSB1609'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'PSB1610'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'SSM1611'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'SSB1612'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'PSM1613'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'SSM1614'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'SSM1615'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'SSM1616'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'SSM1617'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'SSB1618'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'PSB1619'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'SXB1667'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'THB1621'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'DBJ1668'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'PTT1672'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'SSM1701'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'SSM1702'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'SSM1703'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'SSM1704'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'SSM1705'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'SSM1706'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'SSM1707'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'SSM1708'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'SSM1709'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'SSM1710'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'SSM1711'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'SSM1712'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD1940'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD1941'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD1942'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD1943'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD1944'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD1945'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD1946'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD1947'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD1948'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD1949'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD1950'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD1951'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD2004'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD2016'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD2017'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD2018'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD2019'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD2204'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD2213'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD2284'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD2283'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'RL2219'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'RL2225'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'RL2290'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD2245'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD2246'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD2277'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD2278'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD2286'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD2288'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD2287'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD2289'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'SS2280'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD2265'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD2279'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD2275'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD2301'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD2302'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD2303'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD2304'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD2407'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD2411'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD2409'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD2404'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD2410'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD2406'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD2504'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD2509'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD2510'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD2513'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD2514'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD2519'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD2523'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'PK2520'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'PK2524'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD2602'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD2603'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD 2620'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD2619'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD2621'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD2607'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD2629'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD2608'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD2632'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD2633'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD2626'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD2637'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD2623'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD2622'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD2634'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD2635'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD2628'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD2702'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD2703'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD2704'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD2705'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD2706'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD2707'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD2708'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD2709'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD2716'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD2723'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'PK2725'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD2726'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD2728'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD2919'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD2920'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD2916'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'PK2918'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD3109'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD3110'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD3111'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD3112'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD3119'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD3122'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD3123'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD3124'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD3209'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD3210'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD3211'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD3212'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD3221'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD3223'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD3224'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD3225'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD3301'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD3302'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'PK3308'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'PK3310'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD3313'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD3314'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD3401'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD3402'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD3403'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD3404'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD3405'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD3406'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD3512'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD3513'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD3517'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD3518'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD3519'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD3520'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD3523'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD3524'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'PK3525'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD3526'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD3527'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD3605'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD3606'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD3608'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD3612'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD3615'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD3616'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD3617'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD3702'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD3704'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD3705'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD3707'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD3708'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD3711'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD3926'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD3927'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD3928'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD3920'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD3921'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD3922'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD3923'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD3924'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD3925'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD5004'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD5013'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD5014'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD5015'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD5016'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'PK5022'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD5024'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'MD5025'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'SSM5201'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'SSM5202'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'SSM5203'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'SSM5204'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'SSM5212'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'PSM5225'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'SBJ5213'
UPDATE Tables SET RequiredProficiency = 60 WHERE Code = 'SBJ5214'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'OSS5501'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'OSS5505'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'ORD5507'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'OSS5509'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'OSS5511'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'OSS5515'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'OSS5717'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'OSS5519'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SAB5608'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SSM5609'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'ZBJ5619'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'UTH5620'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'UTH5622'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'ZBJ5625'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'ZBJ5626'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'BR5628'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'BR5629'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'THB5630'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'TCP5631'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'THB5632'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'LP5633'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'TCP5634'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'THB5635'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'SSP5636'
UPDATE Tables SET RequiredProficiency = 80 WHERE Code = 'PMD5904'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'OSS5502'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'OSS5506'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'ORS5508'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'OSS5510'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'OSS5512'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'OSS5516'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'OSS5718'
UPDATE Tables SET RequiredProficiency = 10 WHERE Code = 'OSS5520'
