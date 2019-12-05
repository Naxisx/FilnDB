CREATE PROCEDURE [dbo].[Age_Rating_Update]
	@Name_Of_Rating nvarchar(50),
	@id int
AS
update dbo.Age_Rating 
set
Name_Of_Rating = @Name_Of_Rating
where [id] = @id;