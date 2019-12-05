/*
Скрипт развертывания для Database2

Этот код был создан программным средством.
Изменения, внесенные в этот файл, могут привести к неверному выполнению кода и будут потеряны
в случае его повторного формирования.
*/

GO
SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, CONCAT_NULL_YIELDS_NULL, QUOTED_IDENTIFIER ON;

SET NUMERIC_ROUNDABORT OFF;


GO
:setvar DatabaseName "Database2"
:setvar DefaultFilePrefix "Database2"
:setvar DefaultDataPath "C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS01\MSSQL\DATA\"
:setvar DefaultLogPath "C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS01\MSSQL\DATA\"

GO
:on error exit
GO
/*
Проверьте режим SQLCMD и отключите выполнение скрипта, если режим SQLCMD не поддерживается.
Чтобы повторно включить скрипт после включения режима SQLCMD выполните следующую инструкцию:
SET NOEXEC OFF; 
*/
:setvar __IsSqlCmdEnabled "True"
GO
IF N'$(__IsSqlCmdEnabled)' NOT LIKE N'True'
    BEGIN
        PRINT N'Для успешного выполнения этого скрипта должен быть включен режим SQLCMD.';
        SET NOEXEC ON;
    END


GO
USE [$(DatabaseName)];


GO
PRINT N'Операция рефакторинга Rename с помощью ключа c93c263d-ebba-4d5a-87d4-8b82204d2942 пропущена, элемент [dbo].[HotelNumber].[HotelNumber] (SqlSimpleColumn) не будет переименован в Hotelnumber';


GO
PRINT N'Операция рефакторинга Rename с помощью ключа 425046a2-fc03-4f86-9a7f-9c852b6eabd8, 15cf46fc-f975-4313-b410-8e6e7a5ddd73, 8c47701e-1cd8-42ad-8c3c-ae49832ecb18, a7f0a242-fc05-4d94-9893-e98baa471ded пропущена, элемент [dbo].[Rooms].[Порядок номера] (SqlSimpleColumn) не будет переименован в HotelNumber';


GO
PRINT N'Операция рефакторинга Rename с помощью ключа 2e116c81-1541-4b84-92a1-fab62e52d892, fbe24661-7e40-4855-95df-8faf85f39839 пропущена, элемент [dbo].[Rooms].[Additional Services] (SqlSimpleColumn) не будет переименован в AdditionalServices_FK';


GO
PRINT N'Операция рефакторинга Rename с помощью ключа 574575fc-e05a-47c9-8a89-44b0870a971a пропущена, элемент [dbo].[Rooms].[RoomCategory] (SqlSimpleColumn) не будет переименован в RoomCategory_FK';


GO
PRINT N'Операция рефакторинга Rename с помощью ключа b73fc0a3-dc62-4985-9e38-76677882422c пропущена, элемент [dbo].[RoomCategory].[Cost per day] (SqlSimpleColumn) не будет переименован в CostPerDay';


GO
PRINT N'Операция рефакторинга Rename с помощью ключа 370500fb-8436-444f-97af-53535e0639d2 пропущена, элемент [dbo].[RoomСondition].[Booking] (SqlSimpleColumn) не будет переименован в Booking_FK';


GO
PRINT N'Операция рефакторинга Rename с помощью ключа 2ac27003-f796-479b-9dc2-f8112d0c20c3 пропущена, элемент [dbo].[Booking].[Reservation date] (SqlSimpleColumn) не будет переименован в ReservationDate';


GO
PRINT N'Операция рефакторинга Rename с помощью ключа d6b6d54b-72aa-42ec-bd72-1bd0453350be пропущена, элемент [dbo].[Client].[SurName] (SqlSimpleColumn) не будет переименован в FirstName';


GO
PRINT N'Операция рефакторинга Rename с помощью ключа 88633444-d055-4810-a80a-1f6281733a6a пропущена, элемент [dbo].[Client].[Name] (SqlSimpleColumn) не будет переименован в LastName';


GO
PRINT N'Операция рефакторинга Rename с помощью ключа 7225be3f-ebc5-41c5-81af-99bfe9a24ee5 пропущена, элемент [dbo].[HotelNumber].[Hotelnumber] (SqlSimpleColumn) не будет переименован в HotelNumberr';


GO
PRINT N'Операция рефакторинга Rename с помощью ключа 71c7f370-53eb-4191-97df-d47c85b9e7c0, 9ff38796-3041-40fd-9d89-9031f62360a1 пропущена, элемент [dbo].[Films].[Name] (SqlSimpleColumn) не будет переименован в Name_Film';


GO
PRINT N'Операция рефакторинга Rename с помощью ключа ffedfd86-ce00-43d7-9393-adb7943427df, d194c42d-95e9-47d9-8343-6385f596a227 пропущена, элемент [dbo].[Films].[PlaceOfMowing] (SqlSimpleColumn) не будет переименован в Place_Of_Movie';


GO
PRINT N'Операция рефакторинга Rename с помощью ключа 70db9ff4-1c30-4f10-9f35-1aa5b671faed пропущена, элемент [dbo].[Films].[Genre] (SqlSimpleColumn) не будет переименован в Genre_FK';


GO
PRINT N'Операция рефакторинга Rename с помощью ключа fb927091-fc22-410e-bf1e-2e9d69dbe103 пропущена, элемент [dbo].[Films].[TheDurationOfTheMovie] (SqlSimpleColumn) не будет переименован в The_Duration_Of_The_Movie';


GO
PRINT N'Операция рефакторинга Rename с помощью ключа d20a05f4-1d78-4a08-8998-2cab25416300 пропущена, элемент [dbo].[Films].[TimeOfMovie] (SqlSimpleColumn) не будет переименован в Time_Of_Movie';


GO
PRINT N'Операция рефакторинга Rename с помощью ключа a72d8096-08a3-40c4-a716-42940f3fbddb пропущена, элемент [dbo].[Films].[TheDateOfTheBeginning] (SqlSimpleColumn) не будет переименован в The_Date_Of_The_Beginning';


GO
PRINT N'Операция рефакторинга Rename с помощью ключа 70063f86-238d-4c02-9c56-a0669328d52e пропущена, элемент [dbo].[Films].[NumberOfParticipants] (SqlSimpleColumn) не будет переименован в Number_Of_Participants';


GO
PRINT N'Операция рефакторинга Rename с помощью ключа d8ab5c4b-5b1d-40df-a3fe-108ff1d694c6, 9bc2e9a5-18ea-48d9-9c59-dab784c3d30d пропущена, элемент [dbo].[Films].[AgeRating] (SqlSimpleColumn) не будет переименован в Age_Rating_FK';


GO
PRINT N'Операция рефакторинга Rename с помощью ключа b982d27b-8cd6-4e8e-a6c3-45975823bd36 пропущена, элемент [dbo].[Participants].[Name] (SqlSimpleColumn) не будет переименован в FirstName';


GO
PRINT N'Операция рефакторинга Rename с помощью ключа 3ce7d422-3e34-49f5-b660-af871c0337b6 пропущена, элемент [dbo].[Participants].[SurName] (SqlSimpleColumn) не будет переименован в LastName';


GO
PRINT N'Операция рефакторинга Rename с помощью ключа c155019d-b46a-439f-bc36-d0ceba007de2 пропущена, элемент [dbo].[Role].[Name] (SqlSimpleColumn) не будет переименован в NameRole';


GO
PRINT N'Выполняется создание [dbo].[Age_Rating_Insert]...';


GO
CREATE PROCEDURE [dbo].[Age_Rating_Insert]
	@Name_Of_Rating nvarchar(50)
AS
insert into dbo.Age_Rating 
(	@Name_Of_Rating
)
values 
(	@Name_Of_Rating
);
GO
PRINT N'Выполняется создание [dbo].[Age_Rating_Update]...';


GO
CREATE PROCEDURE [dbo].[Age_Rating_Update]
	@Name_Of_Rating nvarchar(50),
	@id int
AS
update dbo.Age_Rating 
set
Name_Of_Rating = @Name_Of_Rating
where [id] = @id;
GO
PRINT N'Выполняется создание [dbo].[FilmsInsert]...';


GO
CREATE PROCEDURE [dbo].[FilmsInsert]
	@Name nvarchar(50),
	@Place_Of_Movie nvarchar(50),
	@Budget decimal(5,2),
	@Number_Of_Participants int,
	@The_Date_Of_The_Beginning date,
	@Time_Of_Movie nvarchar(50),
	@The_Duration_Of_The_Movie nvarchar(50),
	@Genre_FK int,
	@Age_Rating_FK int,
	@Rating_FK int
AS

insert into [dbo].[Films] 
(Name_Film,
Place_Of_Movie,
Budget,
Number_Of_Participants,
The_Date_Of_The_Beginning,
Time_Of_Movie,
The_Duration_Of_The_Movie,
Genre_FK,
Age_Rating_FK,
Rating_FK)
values 
(@Name,
@Place_Of_Movie,
@Budget,
@Number_Of_Participants,
@The_Date_Of_The_Beginning,
@Time_Of_Movie,
@The_Duration_Of_The_Movie,
@Genre_FK,
@Age_Rating_FK,
@Rating_FK);
GO
PRINT N'Выполняется создание [dbo].[FilmsUpdate]...';


GO
CREATE PROCEDURE [dbo].[FilmsUpdate]
	@Name nvarchar(50),
	@Place_Of_Movie nvarchar(50),
	@Budget decimal(5,2),
	@Number_Of_Participants int,
	@The_Date_Of_The_Beginning date,
	@Time_Of_Movie nvarchar(50),
	@The_Duration_Of_The_Movie nvarchar(50),
	@Genre_FK int,
	@Age_Rating_FK int,
	@Rating_FK int,
	@id int
AS
update [dbo].[Films]
set
Name_Film = @Name,
Place_Of_Movie = @Place_Of_Movie,
Budget = @Budget,
Number_Of_Participants = @Number_Of_Participants,
The_Date_Of_The_Beginning = @The_Date_Of_The_Beginning,
Time_Of_Movie = @Time_Of_Movie,
The_Duration_Of_The_Movie = @The_Duration_Of_The_Movie,
Genre_FK = @Genre_FK,
Age_Rating_FK = @Age_Rating_FK,
Rating_FK = @Rating_FK
where [id] = @id;
GO
PRINT N'Выполняется создание [dbo].[Genre_Update]...';


GO
CREATE PROCEDURE [dbo].[Genre_Update]
	@Name_Of_Genre nvarchar(50),
	@id int
AS
update dbo.Genre 
set
Name_Of_Genre = @Name_Of_Genre
where [id] = @id;
GO
PRINT N'Выполняется создание [dbo].[GenreInsert]...';


GO
CREATE PROCEDURE [dbo].[GenreInsert]
	@Name_Of_Genre nvarchar(50)
AS
insert into dbo.Genre 
(	Name_Of_Genre)
values 
(	@Name_Of_Genre);
GO
PRINT N'Выполняется создание [dbo].[Name_of_Rating_Insert]...';


GO
CREATE PROCEDURE [dbo].[Name_of_Rating_Insert]
	@Name_of_Rating nvarchar(50)
AS
insert into dbo.Rating_FK
(	Name_of_Rating)
values 
(	@Name_of_Rating);
GO
PRINT N'Выполняется создание [dbo].[Name_of_Rating_Update]...';


GO
CREATE PROCEDURE [dbo].[Name_of_Rating_Update]
	@Name_of_Rating nvarchar(50),
	@id int
AS
update dbo.Rating_FK
set
Name_of_Rating = @Name_of_Rating
where [id] = @id;
GO
PRINT N'Выполняется создание [dbo].[NameRole_Insert]...';


GO
CREATE PROCEDURE [dbo].[NameRole_Insert]
	@NameRole nvarchar(50)
AS
insert into dbo.NameRole 
(	NameRole)
values 
(	@NameRole);
GO
PRINT N'Выполняется создание [dbo].[NameRole_Update]...';


GO
CREATE PROCEDURE [dbo].[NameRole_Update]
	@NameRole nvarchar(50),
	@id int
AS
update dbo.NameRole 
set
NameRole = @NameRole
where [id] = @id;
GO
PRINT N'Выполняется создание [dbo].[Participants_Insert]...';


GO
CREATE PROCEDURE [dbo].[Participants_Insert]
	@FirstName nvarchar(50),
	@LastName nvarchar(50),
	@SurName nvarchar(50),
	@Film_FK int,
	@Role_FK int
AS
insert into dbo.Participants 
(	FirstName,
	LastName,
	SurName,
	Film_FK,
	Role_FK)
values 
(	@FirstName,
	@LastName,
	@SurName,
	@Film_FK,
	@Role_FK);
GO
PRINT N'Выполняется создание [dbo].[Participants_Update]...';


GO
CREATE PROCEDURE [dbo].[Participants_Update]
	@FirstName nvarchar(50),
	@LastName nvarchar(50),
	@SurName nvarchar(50),
	@Film_FK int,
	@Role_FK int,
	@id int
AS
update dbo.Participants 
set
FirstName = @FirstName,
LastName = @LastName,
SurName = @SurName,
Film_FK = @Film_FK,
Role_FK = @Role_FK
where [id] = @id;
GO
-- Выполняется этап рефакторинга для обновления развернутых журналов транзакций на целевом сервере

IF OBJECT_ID(N'dbo.__RefactorLog') IS NULL
BEGIN
    CREATE TABLE [dbo].[__RefactorLog] (OperationKey UNIQUEIDENTIFIER NOT NULL PRIMARY KEY)
    EXEC sp_addextendedproperty N'microsoft_database_tools_support', N'refactoring log', N'schema', N'dbo', N'table', N'__RefactorLog'
END
GO
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '425046a2-fc03-4f86-9a7f-9c852b6eabd8')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('425046a2-fc03-4f86-9a7f-9c852b6eabd8')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '15cf46fc-f975-4313-b410-8e6e7a5ddd73')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('15cf46fc-f975-4313-b410-8e6e7a5ddd73')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '2e116c81-1541-4b84-92a1-fab62e52d892')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('2e116c81-1541-4b84-92a1-fab62e52d892')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '574575fc-e05a-47c9-8a89-44b0870a971a')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('574575fc-e05a-47c9-8a89-44b0870a971a')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = 'fbe24661-7e40-4855-95df-8faf85f39839')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('fbe24661-7e40-4855-95df-8faf85f39839')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = 'b73fc0a3-dc62-4985-9e38-76677882422c')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('b73fc0a3-dc62-4985-9e38-76677882422c')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '8c47701e-1cd8-42ad-8c3c-ae49832ecb18')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('8c47701e-1cd8-42ad-8c3c-ae49832ecb18')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = 'a7f0a242-fc05-4d94-9893-e98baa471ded')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('a7f0a242-fc05-4d94-9893-e98baa471ded')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '370500fb-8436-444f-97af-53535e0639d2')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('370500fb-8436-444f-97af-53535e0639d2')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '2ac27003-f796-479b-9dc2-f8112d0c20c3')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('2ac27003-f796-479b-9dc2-f8112d0c20c3')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = 'd6b6d54b-72aa-42ec-bd72-1bd0453350be')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('d6b6d54b-72aa-42ec-bd72-1bd0453350be')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '88633444-d055-4810-a80a-1f6281733a6a')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('88633444-d055-4810-a80a-1f6281733a6a')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = 'c93c263d-ebba-4d5a-87d4-8b82204d2942')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('c93c263d-ebba-4d5a-87d4-8b82204d2942')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '7225be3f-ebc5-41c5-81af-99bfe9a24ee5')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('7225be3f-ebc5-41c5-81af-99bfe9a24ee5')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '7e000ab4-e0c4-4d5a-bc8e-64fbe29e63db')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('7e000ab4-e0c4-4d5a-bc8e-64fbe29e63db')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = 'd9ed991a-9a76-4655-b123-9b130fd0e431')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('d9ed991a-9a76-4655-b123-9b130fd0e431')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '71c7f370-53eb-4191-97df-d47c85b9e7c0')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('71c7f370-53eb-4191-97df-d47c85b9e7c0')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = 'ffedfd86-ce00-43d7-9393-adb7943427df')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('ffedfd86-ce00-43d7-9393-adb7943427df')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '70db9ff4-1c30-4f10-9f35-1aa5b671faed')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('70db9ff4-1c30-4f10-9f35-1aa5b671faed')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = 'fb927091-fc22-410e-bf1e-2e9d69dbe103')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('fb927091-fc22-410e-bf1e-2e9d69dbe103')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = 'd20a05f4-1d78-4a08-8998-2cab25416300')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('d20a05f4-1d78-4a08-8998-2cab25416300')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = 'a72d8096-08a3-40c4-a716-42940f3fbddb')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('a72d8096-08a3-40c4-a716-42940f3fbddb')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '70063f86-238d-4c02-9c56-a0669328d52e')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('70063f86-238d-4c02-9c56-a0669328d52e')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '9ff38796-3041-40fd-9d89-9031f62360a1')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('9ff38796-3041-40fd-9d89-9031f62360a1')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = 'd194c42d-95e9-47d9-8343-6385f596a227')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('d194c42d-95e9-47d9-8343-6385f596a227')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = 'd8ab5c4b-5b1d-40df-a3fe-108ff1d694c6')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('d8ab5c4b-5b1d-40df-a3fe-108ff1d694c6')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '9bc2e9a5-18ea-48d9-9c59-dab784c3d30d')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('9bc2e9a5-18ea-48d9-9c59-dab784c3d30d')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = 'b982d27b-8cd6-4e8e-a6c3-45975823bd36')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('b982d27b-8cd6-4e8e-a6c3-45975823bd36')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '3ce7d422-3e34-49f5-b660-af871c0337b6')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('3ce7d422-3e34-49f5-b660-af871c0337b6')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = 'c155019d-b46a-439f-bc36-d0ceba007de2')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('c155019d-b46a-439f-bc36-d0ceba007de2')

GO

GO
PRINT N'Обновление завершено.';


GO
