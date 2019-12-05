CREATE TABLE [dbo].[Participants]
(
	[Id] INT NOT NULL PRIMARY KEY identity, 
    [FirstName] NVARCHAR(50) NOT NULL, 
    [LastName] NVARCHAR(50) NOT NULL, 
    [SurName] NVARCHAR(50) NOT NULL, 
    [Film_FK] INT NOT NULL, 
    [Role_FK] INT NOT NULL, 
    CONSTRAINT [FK_Participants_ToTable] FOREIGN KEY (Film_FK) REFERENCES Films(Id), 
    CONSTRAINT [FK_Participants_ToTable_1] FOREIGN KEY (Role_FK) REFERENCES NameRole(Id)
)
