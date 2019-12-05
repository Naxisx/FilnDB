CREATE PROCEDURE [dbo].[FilmsInsert]
	@Name nvarchar(50),
	@Place_Of_Movie nvarchar(50),
	@Budget decimal(5,2),
	@Number_Of_Participants int,
	@The_Date_Of_The_Beginning date,
	@Time_Of_Movie nvarchar(50),
	@The_Duration_Of_The_Movie nvarchar(50),
	@Genre_FK int,
	@Age_Rating_FK int,
	@Rating_FK int
AS

insert into [dbo].[Films] 
(Name_Film,
Place_Of_Movie,
Budget,
Number_Of_Participants,
The_Date_Of_The_Beginning,
Time_Of_Movie,
The_Duration_Of_The_Movie,
Genre_FK,
Age_Rating_FK,
Rating_FK)
values 
(@Name,
@Place_Of_Movie,
@Budget,
@Number_Of_Participants,
@The_Date_Of_The_Beginning,
@Time_Of_Movie,
@The_Duration_Of_The_Movie,
@Genre_FK,
@Age_Rating_FK,
@Rating_FK);
