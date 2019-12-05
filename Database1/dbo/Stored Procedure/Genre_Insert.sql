CREATE PROCEDURE [dbo].[GenreInsert]
	@Name_Of_Genre nvarchar(50)
AS
insert into dbo.Genre 
(	Name_Of_Genre)
values 
(	@Name_Of_Genre);