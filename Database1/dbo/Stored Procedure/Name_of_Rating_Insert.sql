CREATE PROCEDURE [dbo].[Name_of_Rating_Insert]
	@Name_of_Rating nvarchar(50)
AS
insert into dbo.Rating_FK
(	Name_Of_Rating)
values 
(	@Name_of_Rating);