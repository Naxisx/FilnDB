CREATE PROCEDURE [dbo].[Genre_Update]
	@Name_Of_Genre nvarchar(50),
	@id int
AS
update dbo.Genre 
set
Name_Of_Genre = @Name_Of_Genre
where [id] = @id;