CREATE PROCEDURE [dbo].[NameRole_Update]
	@NameRole nvarchar(50),
	@id int
AS
update dbo.NameRole 
set
NameRole = @NameRole
where [id] = @id;