CREATE PROCEDURE [dbo].[Age_Rating_Insert]
	@Name_Of_Rating nvarchar(50)
AS
insert into dbo.Age_Rating 
(	Name_Of_Rating)
values 
(	@Name_Of_Rating);