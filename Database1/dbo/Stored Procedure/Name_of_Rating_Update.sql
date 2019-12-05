CREATE PROCEDURE [dbo].[Name_of_Rating_Update]
	@Name_of_Rating nvarchar(50),
	@id int
AS
update dbo.Rating_FK
set
Name_of_Rating = @Name_of_Rating
where [id] = @id;