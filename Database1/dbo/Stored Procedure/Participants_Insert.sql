CREATE PROCEDURE [dbo].[Participants_Insert]
	@FirstName nvarchar(50),
	@LastName nvarchar(50),
	@SurName nvarchar(50),
	@Film_FK int,
	@Role_FK int
AS
insert into dbo.Participants 
(	FirstName,
	LastName,
	SurName,
	Film_FK,
	Role_FK)
values 
(	@FirstName,
	@LastName,
	@SurName,
	@Film_FK,
	@Role_FK);