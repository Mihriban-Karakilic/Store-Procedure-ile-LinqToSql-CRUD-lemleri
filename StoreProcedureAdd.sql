create proc SP_TeleponeAdd
(
@Firstname nvarchar(max),
@LastName nvarchar(max),
@EmailAddress nvarchar(max),
@Telepone1 nvarchar(max),
@Telepone2 nvarchar(max),
@Telepone3 nvarchar(max),
@FacebookURI nvarchar(max),
@TwiterURI nvarchar(max),
@YoutubeURI nvarchar(max),
@Explanation nvarchar(max)
)
as
begin
insert into Directory 
values 
(@Firstname,@LastName,@EmailAddress,@Telepone1,@Telepone2,@Telepone3,@FacebookURI,@TwiterURI,@YoutubeURI,@Explanation)
end
------------------------------------
create proc SP_Update
(
@DirectoryId int,
@Firstname nvarchar(max),
@LastName nvarchar(max),
@EmailAddress nvarchar(max),
@Telepone1 nvarchar(max),
@Telepone2 nvarchar(max),
@Telepone3 nvarchar(max),
@FacebookURI nvarchar(max),
@TwiterURI nvarchar(max),
@YoutubeURI nvarchar(max),
@Explanation nvarchar(max)
)
as
begin
update 
Directory 
set 
Firstname=@Firstname,LastName=@LastName,EmailAddress=@EmailAddress,Telepone1=@Telepone1,Telepone2=@Telepone2,Telepone3=@Telepone3,
FacebookURI=@FacebookURI,TwiterURI=@TwiterURI,YoutubeURI=@TwiterURI,Explanation=@Explanation
where DirectoryId=@DirectoryId
end

-----------------------------------------------------------------
create proc SP_Delete
(
@DirectoryId int
)
as
begin
delete Directory where DirectoryId=@DirectoryId
end