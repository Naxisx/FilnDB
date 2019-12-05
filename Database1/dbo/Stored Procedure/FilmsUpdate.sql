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