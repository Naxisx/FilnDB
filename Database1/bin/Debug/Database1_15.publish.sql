/*
Скрипт развертывания для Database1

Этот код был создан программным средством.
Изменения, внесенные в этот файл, могут привести к неверному выполнению кода и будут потеряны
в случае его повторного формирования.
*/

GO
SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, CONCAT_NULL_YIELDS_NULL, QUOTED_IDENTIFIER ON;

SET NUMERIC_ROUNDABORT OFF;


GO
:setvar DatabaseName "Database1"
:setvar DefaultFilePrefix "Database1"
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
/*
Необходимо добавить столбец [dbo].[Films].[Age_Rating_FK] таблицы [dbo].[Films], но он не содержит значения по умолчанию и не допускает значения NULL. Если таблица содержит данные, скрипт ALTER окажется неработоспособным. Чтобы избежать возникновения этой проблемы, необходимо выполнить одно из следующих действий: добавить в столбец значение по умолчанию, пометить его как допускающий значения NULL или разрешить формирование интеллектуальных умолчаний в параметрах развертывания.

Необходимо добавить столбец [dbo].[Films].[Budget] таблицы [dbo].[Films], но он не содержит значения по умолчанию и не допускает значения NULL. Если таблица содержит данные, скрипт ALTER окажется неработоспособным. Чтобы избежать возникновения этой проблемы, необходимо выполнить одно из следующих действий: добавить в столбец значение по умолчанию, пометить его как допускающий значения NULL или разрешить формирование интеллектуальных умолчаний в параметрах развертывания.

Необходимо добавить столбец [dbo].[Films].[Genre_FK] таблицы [dbo].[Films], но он не содержит значения по умолчанию и не допускает значения NULL. Если таблица содержит данные, скрипт ALTER окажется неработоспособным. Чтобы избежать возникновения этой проблемы, необходимо выполнить одно из следующих действий: добавить в столбец значение по умолчанию, пометить его как допускающий значения NULL или разрешить формирование интеллектуальных умолчаний в параметрах развертывания.

Необходимо добавить столбец [dbo].[Films].[Number_Of_Participants] таблицы [dbo].[Films], но он не содержит значения по умолчанию и не допускает значения NULL. Если таблица содержит данные, скрипт ALTER окажется неработоспособным. Чтобы избежать возникновения этой проблемы, необходимо выполнить одно из следующих действий: добавить в столбец значение по умолчанию, пометить его как допускающий значения NULL или разрешить формирование интеллектуальных умолчаний в параметрах развертывания.

Необходимо добавить столбец [dbo].[Films].[Place_Of_Movie] таблицы [dbo].[Films], но он не содержит значения по умолчанию и не допускает значения NULL. Если таблица содержит данные, скрипт ALTER окажется неработоспособным. Чтобы избежать возникновения этой проблемы, необходимо выполнить одно из следующих действий: добавить в столбец значение по умолчанию, пометить его как допускающий значения NULL или разрешить формирование интеллектуальных умолчаний в параметрах развертывания.

Необходимо добавить столбец [dbo].[Films].[Rating_FK] таблицы [dbo].[Films], но он не содержит значения по умолчанию и не допускает значения NULL. Если таблица содержит данные, скрипт ALTER окажется неработоспособным. Чтобы избежать возникновения этой проблемы, необходимо выполнить одно из следующих действий: добавить в столбец значение по умолчанию, пометить его как допускающий значения NULL или разрешить формирование интеллектуальных умолчаний в параметрах развертывания.

Необходимо добавить столбец [dbo].[Films].[The_Date_Of_The_Beginning] таблицы [dbo].[Films], но он не содержит значения по умолчанию и не допускает значения NULL. Если таблица содержит данные, скрипт ALTER окажется неработоспособным. Чтобы избежать возникновения этой проблемы, необходимо выполнить одно из следующих действий: добавить в столбец значение по умолчанию, пометить его как допускающий значения NULL или разрешить формирование интеллектуальных умолчаний в параметрах развертывания.

Необходимо добавить столбец [dbo].[Films].[The_Duration_Of_The_Movie] таблицы [dbo].[Films], но он не содержит значения по умолчанию и не допускает значения NULL. Если таблица содержит данные, скрипт ALTER окажется неработоспособным. Чтобы избежать возникновения этой проблемы, необходимо выполнить одно из следующих действий: добавить в столбец значение по умолчанию, пометить его как допускающий значения NULL или разрешить формирование интеллектуальных умолчаний в параметрах развертывания.

Необходимо добавить столбец [dbo].[Films].[Time_Of_Movie] таблицы [dbo].[Films], но он не содержит значения по умолчанию и не допускает значения NULL. Если таблица содержит данные, скрипт ALTER окажется неработоспособным. Чтобы избежать возникновения этой проблемы, необходимо выполнить одно из следующих действий: добавить в столбец значение по умолчанию, пометить его как допускающий значения NULL или разрешить формирование интеллектуальных умолчаний в параметрах развертывания.
*/

IF EXISTS (select top 1 1 from [dbo].[Films])
    RAISERROR (N'Обнаружены строки. Обновление схемы завершено из-за возможной потери данных.', 16, 127) WITH NOWAIT

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
PRINT N'Указанная ниже операция создана из файла журнала рефакторинга 9ff38796-3041-40fd-9d89-9031f62360a1';

PRINT N'Переименование [dbo].[Films].[NameFilm] в Name_Film';


GO
EXECUTE sp_rename @objname = N'[dbo].[Films].[NameFilm]', @newname = N'Name_Film', @objtype = N'COLUMN';


GO
PRINT N'Операция рефакторинга Rename с помощью ключа d8ab5c4b-5b1d-40df-a3fe-108ff1d694c6, 9bc2e9a5-18ea-48d9-9c59-dab784c3d30d пропущена, элемент [dbo].[Films].[AgeRating] (SqlSimpleColumn) не будет переименован в Age_Rating_FK';


GO
PRINT N'Операция рефакторинга Rename с помощью ключа b982d27b-8cd6-4e8e-a6c3-45975823bd36 пропущена, элемент [dbo].[Participants].[Name] (SqlSimpleColumn) не будет переименован в FirstName';


GO
PRINT N'Операция рефакторинга Rename с помощью ключа 3ce7d422-3e34-49f5-b660-af871c0337b6 пропущена, элемент [dbo].[Participants].[SurName] (SqlSimpleColumn) не будет переименован в LastName';


GO
PRINT N'Операция рефакторинга Rename с помощью ключа c155019d-b46a-439f-bc36-d0ceba007de2 пропущена, элемент [dbo].[Role].[Name] (SqlSimpleColumn) не будет переименован в NameRole';


GO
PRINT N'Выполняется изменение [dbo].[Films]...';


GO
ALTER TABLE [dbo].[Films]
    ADD [Place_Of_Movie]            NVARCHAR (50)  NOT NULL,
        [Budget]                    DECIMAL (5, 2) NOT NULL,
        [Number_Of_Participants]    INT            NOT NULL,
        [The_Date_Of_The_Beginning] DATETIME       NOT NULL,
        [Time_Of_Movie]             NVARCHAR (50)  NOT NULL,
        [The_Duration_Of_The_Movie] DATETIME       NOT NULL,
        [Genre_FK]                  INT            NOT NULL,
        [Age_Rating_FK]             INT            NOT NULL,
        [Rating_FK]                 INT            NOT NULL;


GO
PRINT N'Выполняется создание [dbo].[Age_Rating]...';


GO
CREATE TABLE [dbo].[Age_Rating] (
    [Id]             INT           IDENTITY (1, 1) NOT NULL,
    [Name_Of_Rating] NVARCHAR (50) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
PRINT N'Выполняется создание [dbo].[Genre]...';


GO
CREATE TABLE [dbo].[Genre] (
    [Id]            INT           IDENTITY (1, 1) NOT NULL,
    [Name_Of_Genre] NVARCHAR (50) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
PRINT N'Выполняется создание [dbo].[NameRole]...';


GO
CREATE TABLE [dbo].[NameRole] (
    [Id]       INT           IDENTITY (1, 1) NOT NULL,
    [NameRole] NVARCHAR (50) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
PRINT N'Выполняется создание [dbo].[Participants]...';


GO
CREATE TABLE [dbo].[Participants] (
    [Id]        INT           IDENTITY (1, 1) NOT NULL,
    [FirstName] NVARCHAR (50) NOT NULL,
    [LastName]  NVARCHAR (50) NOT NULL,
    [SurName]   NVARCHAR (50) NOT NULL,
    [Film_FK]   INT           NOT NULL,
    [Role_FK]   INT           NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
PRINT N'Выполняется создание [dbo].[Rating_FK]...';


GO
CREATE TABLE [dbo].[Rating_FK] (
    [Id]             INT           IDENTITY (1, 1) NOT NULL,
    [Name_of_Rating] NVARCHAR (50) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
PRINT N'Выполняется создание [dbo].[FK_Participants_ToTable]...';


GO
ALTER TABLE [dbo].[Participants] WITH NOCHECK
    ADD CONSTRAINT [FK_Participants_ToTable] FOREIGN KEY ([Film_FK]) REFERENCES [dbo].[Films] ([Id]);


GO
PRINT N'Выполняется создание [dbo].[FK_Participants_ToTable_1]...';


GO
ALTER TABLE [dbo].[Participants] WITH NOCHECK
    ADD CONSTRAINT [FK_Participants_ToTable_1] FOREIGN KEY ([Role_FK]) REFERENCES [dbo].[NameRole] ([Id]);


GO
PRINT N'Выполняется создание [dbo].[FK_Films_ToTable]...';


GO
ALTER TABLE [dbo].[Films] WITH NOCHECK
    ADD CONSTRAINT [FK_Films_ToTable] FOREIGN KEY ([Genre_FK]) REFERENCES [dbo].[Genre] ([Id]);


GO
PRINT N'Выполняется создание [dbo].[FK_Films_ToTable_1]...';


GO
ALTER TABLE [dbo].[Films] WITH NOCHECK
    ADD CONSTRAINT [FK_Films_ToTable_1] FOREIGN KEY ([Age_Rating_FK]) REFERENCES [dbo].[Age_Rating] ([Id]);


GO
PRINT N'Выполняется создание [dbo].[FK_Films_ToTable_2]...';


GO
ALTER TABLE [dbo].[Films] WITH NOCHECK
    ADD CONSTRAINT [FK_Films_ToTable_2] FOREIGN KEY ([Rating_FK]) REFERENCES [dbo].[Rating_FK] ([Id]);


GO
PRINT N'Выполняется изменение [dbo].[FilmsInsert]...';


GO
ALTER PROCEDURE [dbo].[FilmsInsert]
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
PRINT N'Выполняется изменение [dbo].[FilmsUpdate]...';


GO
ALTER PROCEDURE [dbo].[FilmsUpdate]
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
PRINT N'Существующие данные проверяются относительно вновь созданных ограничений';


GO
USE [$(DatabaseName)];


GO
ALTER TABLE [dbo].[Participants] WITH CHECK CHECK CONSTRAINT [FK_Participants_ToTable];

ALTER TABLE [dbo].[Participants] WITH CHECK CHECK CONSTRAINT [FK_Participants_ToTable_1];

ALTER TABLE [dbo].[Films] WITH CHECK CHECK CONSTRAINT [FK_Films_ToTable];

ALTER TABLE [dbo].[Films] WITH CHECK CHECK CONSTRAINT [FK_Films_ToTable_1];

ALTER TABLE [dbo].[Films] WITH CHECK CHECK CONSTRAINT [FK_Films_ToTable_2];


GO
PRINT N'Обновление завершено.';


GO
