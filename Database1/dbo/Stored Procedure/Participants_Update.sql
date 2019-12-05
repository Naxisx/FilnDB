CREATE PROCEDURE [dbo].[Participants_Update]
	@FirstName nvarchar(50),
	@LastName nvarchar(50),
	@SurName nvarchar(50),
	@Film_FK int,
	@Role_FK int,
	@id int
AS
update dbo.Participants 
set
FirstName = @FirstName,
LastName = @LastName,
SurName = @SurName,
Film_FK = @Film_FK,
Role_FK = @Role_FK
where [id] = @id;