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