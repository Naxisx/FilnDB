CREATE PROCEDURE [dbo].[NameRole_Insert]
	@NameRole nvarchar(50)
AS
insert into dbo.NameRole 
(	NameRole)
values 
(	@NameRole);