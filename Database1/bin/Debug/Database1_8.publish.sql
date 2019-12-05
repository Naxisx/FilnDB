﻿/*
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
PRINT N'Выполняется запуск перестройки таблицы [dbo].[Films]...';


GO
BEGIN TRANSACTION;

SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;

SET XACT_ABORT ON;

CREATE TABLE [dbo].[tmp_ms_xx_Films] (
    [Id]       INT           IDENTITY (1, 1) NOT NULL,
    [NameFilm] NVARCHAR (50) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

IF EXISTS (SELECT TOP 1 1 
           FROM   [dbo].[Films])
    BEGIN
        SET IDENTITY_INSERT [dbo].[tmp_ms_xx_Films] ON;
        INSERT INTO [dbo].[tmp_ms_xx_Films] ([Id], [NameFilm])
        SELECT   [Id],
                 [NameFilm]
        FROM     [dbo].[Films]
        ORDER BY [Id] ASC;
        SET IDENTITY_INSERT [dbo].[tmp_ms_xx_Films] OFF;
    END

DROP TABLE [dbo].[Films];

EXECUTE sp_rename N'[dbo].[tmp_ms_xx_Films]', N'Films';

COMMIT TRANSACTION;

SET TRANSACTION ISOLATION LEVEL READ COMMITTED;


GO
PRINT N'Выполняется обновление [dbo].[FilmsInsert]...';


GO
EXECUTE sp_refreshsqlmodule N'[dbo].[FilmsInsert]';


GO
PRINT N'Выполняется обновление [dbo].[FilmsUpdate]...';


GO
EXECUTE sp_refreshsqlmodule N'[dbo].[FilmsUpdate]';


GO
PRINT N'Обновление завершено.';


GO