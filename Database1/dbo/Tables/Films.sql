CREATE TABLE [dbo].[Films]
(
	[Id] INT NOT NULL PRIMARY KEY identity, 
    [Name_Film] NVARCHAR(50) NOT NULL, 
    [Place_Of_Movie] NVARCHAR(50) NOT NULL, 
    [Budget] DECIMAL(5, 2) NOT NULL, 
    [Number_Of_Participants] INT NOT NULL, 
    [The_Date_Of_The_Beginning] DATETIME NOT NULL, 
    [Time_Of_Movie] NVARCHAR(50) NOT NULL, 
    [The_Duration_Of_The_Movie] NVARCHAR(50) NOT NULL, 
    [Genre_FK] INT NOT NULL, 
    [Age_Rating_FK] INT NOT NULL, 
    [Rating_FK] INT NOT NULL, 
    CONSTRAINT [FK_Films_ToTable] FOREIGN KEY (Genre_FK) REFERENCES Genre(Id), 
    CONSTRAINT [FK_Films_ToTable_1] FOREIGN KEY (Age_Rating_FK) REFERENCES Age_Rating(Id), 
    CONSTRAINT [FK_Films_ToTable_2] FOREIGN KEY (Rating_FK) REFERENCES Rating_FK(Id)
)
