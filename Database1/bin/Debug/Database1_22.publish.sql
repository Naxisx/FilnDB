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
(	Name_Of_Rating)
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
PRINT N'Обновление завершено.';


GO
