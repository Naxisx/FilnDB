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
USE [master];


GO

IF (DB_ID(N'$(DatabaseName)') IS NOT NULL) 
BEGIN
    ALTER DATABASE [$(DatabaseName)]
    SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE [$(DatabaseName)];
END

GO
PRINT N'Выполняется создание $(DatabaseName)...'
GO
CREATE DATABASE [$(DatabaseName)]
    ON 
    PRIMARY(NAME = [$(DatabaseName)], FILENAME = N'$(DefaultDataPath)$(DefaultFilePrefix)_Primary.mdf')
    LOG ON (NAME = [$(DatabaseName)_log], FILENAME = N'$(DefaultLogPath)$(DefaultFilePrefix)_Primary.ldf') COLLATE SQL_Latin1_General_CP1_CI_AS
GO
USE [$(DatabaseName)];


GO
IF EXISTS (SELECT 1
           FROM   [master].[dbo].[sysdatabases]
           WHERE  [name] = N'$(DatabaseName)')
    BEGIN
        ALTER DATABASE [$(DatabaseName)]
            SET ANSI_NULLS ON,
                ANSI_PADDING ON,
                ANSI_WARNINGS ON,
                ARITHABORT ON,
                CONCAT_NULL_YIELDS_NULL ON,
                NUMERIC_ROUNDABORT OFF,
                QUOTED_IDENTIFIER ON,
                ANSI_NULL_DEFAULT ON,
                CURSOR_DEFAULT LOCAL,
                RECOVERY FULL,
                CURSOR_CLOSE_ON_COMMIT OFF,
                AUTO_CREATE_STATISTICS ON,
                AUTO_SHRINK OFF,
                AUTO_UPDATE_STATISTICS ON,
                RECURSIVE_TRIGGERS OFF 
            WITH ROLLBACK IMMEDIATE;
        ALTER DATABASE [$(DatabaseName)]
            SET AUTO_CLOSE OFF 
            WITH ROLLBACK IMMEDIATE;
    END


GO
IF EXISTS (SELECT 1
           FROM   [master].[dbo].[sysdatabases]
           WHERE  [name] = N'$(DatabaseName)')
    BEGIN
        ALTER DATABASE [$(DatabaseName)]
            SET ALLOW_SNAPSHOT_ISOLATION OFF;
    END


GO
IF EXISTS (SELECT 1
           FROM   [master].[dbo].[sysdatabases]
           WHERE  [name] = N'$(DatabaseName)')
    BEGIN
        ALTER DATABASE [$(DatabaseName)]
            SET READ_COMMITTED_SNAPSHOT OFF 
            WITH ROLLBACK IMMEDIATE;
    END


GO
IF EXISTS (SELECT 1
           FROM   [master].[dbo].[sysdatabases]
           WHERE  [name] = N'$(DatabaseName)')
    BEGIN
        ALTER DATABASE [$(DatabaseName)]
            SET AUTO_UPDATE_STATISTICS_ASYNC OFF,
                PAGE_VERIFY NONE,
                DATE_CORRELATION_OPTIMIZATION OFF,
                DISABLE_BROKER,
                PARAMETERIZATION SIMPLE,
                SUPPLEMENTAL_LOGGING OFF 
            WITH ROLLBACK IMMEDIATE;
    END


GO
IF IS_SRVROLEMEMBER(N'sysadmin') = 1
    BEGIN
        IF EXISTS (SELECT 1
                   FROM   [master].[dbo].[sysdatabases]
                   WHERE  [name] = N'$(DatabaseName)')
            BEGIN
                EXECUTE sp_executesql N'ALTER DATABASE [$(DatabaseName)]
    SET TRUSTWORTHY OFF,
        DB_CHAINING OFF 
    WITH ROLLBACK IMMEDIATE';
            END
    END
ELSE
    BEGIN
        PRINT N'Параметры базы данных изменить нельзя. Применить эти параметры может только пользователь SysAdmin.';
    END


GO
IF IS_SRVROLEMEMBER(N'sysadmin') = 1
    BEGIN
        IF EXISTS (SELECT 1
                   FROM   [master].[dbo].[sysdatabases]
                   WHERE  [name] = N'$(DatabaseName)')
            BEGIN
                EXECUTE sp_executesql N'ALTER DATABASE [$(DatabaseName)]
    SET HONOR_BROKER_PRIORITY OFF 
    WITH ROLLBACK IMMEDIATE';
            END
    END
ELSE
    BEGIN
        PRINT N'Параметры базы данных изменить нельзя. Применить эти параметры может только пользователь SysAdmin.';
    END


GO
ALTER DATABASE [$(DatabaseName)]
    SET TARGET_RECOVERY_TIME = 0 SECONDS 
    WITH ROLLBACK IMMEDIATE;


GO
IF EXISTS (SELECT 1
           FROM   [master].[dbo].[sysdatabases]
           WHERE  [name] = N'$(DatabaseName)')
    BEGIN
        ALTER DATABASE [$(DatabaseName)]
            SET FILESTREAM(NON_TRANSACTED_ACCESS = OFF),
                CONTAINMENT = NONE 
            WITH ROLLBACK IMMEDIATE;
    END


GO
IF EXISTS (SELECT 1
           FROM   [master].[dbo].[sysdatabases]
           WHERE  [name] = N'$(DatabaseName)')
    BEGIN
        ALTER DATABASE [$(DatabaseName)]
            SET AUTO_CREATE_STATISTICS ON(INCREMENTAL = OFF),
                MEMORY_OPTIMIZED_ELEVATE_TO_SNAPSHOT = OFF,
                DELAYED_DURABILITY = DISABLED 
            WITH ROLLBACK IMMEDIATE;
    END


GO
IF EXISTS (SELECT 1
           FROM   [master].[dbo].[sysdatabases]
           WHERE  [name] = N'$(DatabaseName)')
    BEGIN
        ALTER DATABASE [$(DatabaseName)]
            SET QUERY_STORE (QUERY_CAPTURE_MODE = ALL, DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_PLANS_PER_QUERY = 200, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 367), MAX_STORAGE_SIZE_MB = 100) 
            WITH ROLLBACK IMMEDIATE;
    END


GO
IF EXISTS (SELECT 1
           FROM   [master].[dbo].[sysdatabases]
           WHERE  [name] = N'$(DatabaseName)')
    BEGIN
        ALTER DATABASE [$(DatabaseName)]
            SET QUERY_STORE = OFF 
            WITH ROLLBACK IMMEDIATE;
    END


GO
IF EXISTS (SELECT 1
           FROM   [master].[dbo].[sysdatabases]
           WHERE  [name] = N'$(DatabaseName)')
    BEGIN
        ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
        ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
        ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
        ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
        ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
        ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
        ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
        ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
    END


GO
IF EXISTS (SELECT 1
           FROM   [master].[dbo].[sysdatabases]
           WHERE  [name] = N'$(DatabaseName)')
    BEGIN
        ALTER DATABASE [$(DatabaseName)]
            SET TEMPORAL_HISTORY_RETENTION ON 
            WITH ROLLBACK IMMEDIATE;
    END


GO
IF fulltextserviceproperty(N'IsFulltextInstalled') = 1
    EXECUTE sp_fulltext_database 'enable';


GO
PRINT N'Выполняется создание [dbo].[AdditionalServices]...';


GO
CREATE TABLE [dbo].[AdditionalServices] (
    [Id]          INT           IDENTITY (1, 1) NOT NULL,
    [NameService] NVARCHAR (50) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
PRINT N'Выполняется создание [dbo].[Booking]...';


GO
CREATE TABLE [dbo].[Booking] (
    [Id]              INT      IDENTITY (1, 1) NOT NULL,
    [Client_FK]       INT      NOT NULL,
    [ReservationDate] DATETIME NOT NULL,
    [DateAarrival]    DATETIME NOT NULL,
    [DateDeparture]   DATETIME NOT NULL,
    [Payment_FK]      INT      NOT NULL,
    [HotelNumber_FK]  INT      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
PRINT N'Выполняется создание [dbo].[Client]...';


GO
CREATE TABLE [dbo].[Client] (
    [Id]             INT           IDENTITY (1, 1) NOT NULL,
    [FirstName]      NVARCHAR (50) NOT NULL,
    [LastName]       NVARCHAR (50) NOT NULL,
    [SurName]        NVARCHAR (50) NOT NULL,
    [DataOfBirth]    DATETIME      NOT NULL,
    [PassportSeries] NVARCHAR (50) NOT NULL,
    [PassportNumber] INT           NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
PRINT N'Выполняется создание [dbo].[HotelNumber]...';


GO
CREATE TABLE [dbo].[HotelNumber] (
    [Id]                    INT IDENTITY (1, 1) NOT NULL,
    [HotelNumberr]          INT NOT NULL,
    [RoomCategory_FK]       INT NOT NULL,
    [AdditionalServices_FK] INT NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
PRINT N'Выполняется создание [dbo].[Payment]...';


GO
CREATE TABLE [dbo].[Payment] (
    [Id]            INT            IDENTITY (1, 1) NOT NULL,
    [PaymentMethod] NVARCHAR (50)  NOT NULL,
    [Price]         DECIMAL (5, 2) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
PRINT N'Выполняется создание [dbo].[RoomCategory]...';


GO
CREATE TABLE [dbo].[RoomCategory] (
    [Id]            INT            IDENTITY (1, 1) NOT NULL,
    [Category]      NVARCHAR (50)  NOT NULL,
    [NumberOfSeats] INT            NOT NULL,
    [NumberOfRooms] INT            NOT NULL,
    [CostPerDay]    DECIMAL (5, 2) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
PRINT N'Выполняется создание [dbo].[FK_Booking_ToTable]...';


GO
ALTER TABLE [dbo].[Booking]
    ADD CONSTRAINT [FK_Booking_ToTable] FOREIGN KEY ([Payment_FK]) REFERENCES [dbo].[Payment] ([Id]);


GO
PRINT N'Выполняется создание [dbo].[FK_Booking_ToTable_1]...';


GO
ALTER TABLE [dbo].[Booking]
    ADD CONSTRAINT [FK_Booking_ToTable_1] FOREIGN KEY ([Client_FK]) REFERENCES [dbo].[Client] ([Id]);


GO
PRINT N'Выполняется создание [dbo].[FK_Booking_ToTable_2]...';


GO
ALTER TABLE [dbo].[Booking]
    ADD CONSTRAINT [FK_Booking_ToTable_2] FOREIGN KEY ([HotelNumber_FK]) REFERENCES [dbo].[HotelNumber] ([Id]);


GO
PRINT N'Выполняется создание [dbo].[FK_Rooms_ToTable]...';


GO
ALTER TABLE [dbo].[HotelNumber]
    ADD CONSTRAINT [FK_Rooms_ToTable] FOREIGN KEY ([RoomCategory_FK]) REFERENCES [dbo].[RoomCategory] ([Id]);


GO
PRINT N'Выполняется создание [dbo].[FK_Rooms_ToTable_1]...';


GO
ALTER TABLE [dbo].[HotelNumber]
    ADD CONSTRAINT [FK_Rooms_ToTable_1] FOREIGN KEY ([AdditionalServices_FK]) REFERENCES [dbo].[AdditionalServices] ([Id]);


GO
PRINT N'Выполняется создание [dbo].[AdditionalServicesInsert]...';


GO
CREATE PROCEDURE [dbo].[AdditionalServicesInsert]
	@NameService nvarchar(50)
AS
insert into dbo.AdditionalServices 
(NameService)
values 
(@NameService);
GO
PRINT N'Выполняется создание [dbo].[AdditionalServicesUpdate]...';


GO
CREATE PROCEDURE [dbo].[AdditionalServicesUpdate]
	@NameService nvarchar(50),
	@id int
AS
update [dbo].[AdditionalServices]
set
NameService = @NameService
where [id] = @id;
GO
PRINT N'Выполняется создание [dbo].[BookingInsert]...';


GO
CREATE PROCEDURE [dbo].[BookingInsert]
	@Client_FK int,
	@ReservationDate datetime,
	@DateAarrival datetime,
	@DateDeparture datetime,
	@Payment_FK int,
	@HotelNumber_FK int

AS
insert into dbo.Booking 
(	Client_FK,
	ReservationDate,
	DateAarrival,
	DateDeparture,
	Payment_FK,
	HotelNumber_FK)
values 
(	@Client_FK,
	@ReservationDate,
	@DateAarrival,
	@DateDeparture,
	@Payment_FK,
	@HotelNumber_FK);
GO
PRINT N'Выполняется создание [dbo].[BookingUpdate]...';


GO
CREATE PROCEDURE [dbo].[BookingUpdate]
	@Client_FK int,
	@ReservationDate datetime,
	@DateAarrival datetime,
	@DateDeparture datetime,
	@Payment_FK int,
	@HotelNumber_FK int,
	@id int
AS
update [dbo].[Booking]
set
[Client_FK] = @Client_FK,
[ReservationDate] = @ReservationDate,
[DateAarrival] = @DateAarrival,
[DateDeparture] = @DateDeparture,
[Payment_FK] = @Payment_FK,
HotelNumber_FK = @HotelNumber_FK
where [id] = @id;
GO
PRINT N'Выполняется создание [dbo].[CategoryInsert]...';


GO
CREATE PROCEDURE [dbo].[CategoryInsert]
	@Category nvarchar(50),
	@NumberOfSeats int,
	@NumberOfRooms int,
	@CostPerDay decimal(5,2)
AS
insert into dbo.RoomCategory 
(Category,
NumberOfSeats,
NumberOfRooms,
CostPerDay)
values 
(@Category,
@NumberOfSeats,
@NumberOfRooms,
@CostPerDay);
GO
PRINT N'Выполняется создание [dbo].[CategoryUpdate]...';


GO
CREATE PROCEDURE [dbo].[CategoryUpdate]
	@Category nvarchar(50),
	@NumberOfSeats int,
	@NumberOfRooms int,
	@CostPerDay decimal(5,2),
	@id int
AS
update dbo.RoomCategory 
set
Category = @Category,
NumberOfSeats = @NumberOfSeats,
NumberOfRooms = @NumberOfRooms,
CostPerDay = @CostPerDay
where [id] = @id;
GO
PRINT N'Выполняется создание [dbo].[ClientInsert]...';


GO
CREATE PROCEDURE [dbo].[ClientInsert]
	@FirstName nvarchar(50),
	@LastName nvarchar(50),
	@SurName nvarchar(50),
	@DataOfBirth date,
	@PassportSeries nvarchar(50),
	@PassportNumber int
AS
insert into dbo.Client 
(	FirstName,
	LastName,
	SurName,
	DataOfBirth,
	PassportSeries,
	PassportNumber)
values 
(	@FirstName,
	@LastName,
	@SurName,
	@DataOfBirth,
	@PassportSeries,
	@PassportNumber );
GO
PRINT N'Выполняется создание [dbo].[ClienttUpdate]...';


GO
CREATE PROCEDURE [dbo].ClienttUpdate
	@FirstName nvarchar(50),
	@LastName nvarchar(50),
	@SurName nvarchar(50),
	@DataOfBirth date,
	@PassportSeries nvarchar(50),
	@PassportNumber int,
	@id int
AS
update dbo.Client 
set
FirstName = @FirstName,
LastName = @LastName,
SurName = @SurName,
DataOfBirth = @DataOfBirth,
PassportSeries = @PassportSeries,
PassportNumber = @PassportNumber
where [id] = @id;
GO
PRINT N'Выполняется создание [dbo].[HotelNumberInsert]...';


GO
CREATE PROCEDURE [dbo].[HotelNumberInsert]
	@HotelNumberr int,
	@RoomCategory_FK int,
	@AdditionalServices_FK int
AS
insert into dbo.HotelNumber 
(	HotelNumberr,
	RoomCategory_FK,
	AdditionalServices_FK)
values 
(	@HotelNumberr,
	@RoomCategory_FK,
	@AdditionalServices_FK);
GO
PRINT N'Выполняется создание [dbo].[HotelNumberUpdate]...';


GO
CREATE PROCEDURE [dbo].[HotelNumberUpdate]
	@HotelNumberr int,
	@RoomCategory_FK int,
	@AdditionalServices_FK int,
	@id int
AS
update dbo.HotelNumber 
set
HotelNumberr = @HotelNumberr,
RoomCategory_FK = @RoomCategory_FK,
AdditionalServices_FK = @AdditionalServices_FK
where [id] = @id;
GO
PRINT N'Выполняется создание [dbo].[PaymentInsert]...';


GO
CREATE PROCEDURE [dbo].[PaymentInsert]
	@PaymentMethod nvarchar(50),
	@Price decimal(5,2)
AS
insert into dbo.Payment 
(PaymentMethod,
Price)
values 
(@PaymentMethod,
@Price);
GO
PRINT N'Выполняется создание [dbo].[PaymentUpdate]...';


GO
CREATE PROCEDURE [dbo].PaymentUpdate
	@PaymentMethod nvarchar(50),
	@Price decimal(5,2),
	@id int
AS
update dbo.Payment 
set
PaymentMethod = @PaymentMethod,
Price = @Price
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

GO

GO
DECLARE @VarDecimalSupported AS BIT;

SELECT @VarDecimalSupported = 0;

IF ((ServerProperty(N'EngineEdition') = 3)
    AND (((@@microsoftversion / power(2, 24) = 9)
          AND (@@microsoftversion & 0xffff >= 3024))
         OR ((@@microsoftversion / power(2, 24) = 10)
             AND (@@microsoftversion & 0xffff >= 1600))))
    SELECT @VarDecimalSupported = 1;

IF (@VarDecimalSupported > 0)
    BEGIN
        EXECUTE sp_db_vardecimal_storage_format N'$(DatabaseName)', 'ON';
    END


GO
PRINT N'Обновление завершено.';


GO
