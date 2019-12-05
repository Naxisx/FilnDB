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
Удаляется столбец [dbo].[Films].[Name Film], возможна потеря данных.

Необходимо добавить столбец [dbo].[Films].[NameFilm] таблицы [dbo].[Films], но он не содержит значения по умолчанию и не допускает значения NULL. Если таблица содержит данные, скрипт ALTER окажется неработоспособным. Чтобы избежать возникновения этой проблемы, необходимо выполнить одно из следующих действий: добавить в столбец значение по умолчанию, пометить его как допускающий значения NULL или разрешить формирование интеллектуальных умолчаний в параметрах развертывания.
*/

IF EXISTS (select top 1 1 from [dbo].[Films])
    RAISERROR (N'Обнаружены строки. Обновление схемы завершено из-за возможной потери данных.', 16, 127) WITH NOWAIT

GO
PRINT N'Операция рефакторинга Rename с помощью ключа 71c7f370-53eb-4191-97df-d47c85b9e7c0 пропущена, элемент [dbo].[Films].[Name] (SqlSimpleColumn) не будет переименован в NameFilm';


GO
PRINT N'Выполняется запуск перестройки таблицы [dbo].[Films]...';


GO
BEGIN TRANSACTION;

SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;

SET XACT_ABORT ON;

CREATE TABLE [dbo].[tmp_ms_xx_Films] (
    [Id]       INT           NOT NULL,
    [NameFilm] NVARCHAR (50) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

IF EXISTS (SELECT TOP 1 1 
           FROM   [dbo].[Films])
    BEGIN
        INSERT INTO [dbo].[tmp_ms_xx_Films] ([Id])
        SELECT   [Id]
        FROM     [dbo].[Films]
        ORDER BY [Id] ASC;
    END

DROP TABLE [dbo].[Films];

EXECUTE sp_rename N'[dbo].[tmp_ms_xx_Films]', N'Films';

COMMIT TRANSACTION;

SET TRANSACTION ISOLATION LEVEL READ COMMITTED;


GO
PRINT N'Выполняется создание [dbo].[FilmsInsert]...';


GO
CREATE PROCEDURE [dbo].[FilmsInsert]
	@Name nvarchar(50)
AS

insert into [dbo].[Films] 
(NameFilm)
values 
(@Name);
GO
PRINT N'Выполняется создание [dbo].[FilmsUpdate]...';


GO
CREATE PROCEDURE [dbo].[FilmsUpdate]
	@Name nvarchar(50),
	@id int
AS
update [dbo].[Films]
set
NameFilm = @Name
where [id] = @id;
GO
-- Выполняется этап рефакторинга для обновления развернутых журналов транзакций на целевом сервере
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '71c7f370-53eb-4191-97df-d47c85b9e7c0')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('71c7f370-53eb-4191-97df-d47c85b9e7c0')

GO

GO
PRINT N'Обновление завершено.';


GO
