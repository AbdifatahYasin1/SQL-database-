select * from UserlIST;
select * from Password;
-- select all the data from the table
select * from UserlIST,Password where UserlIST.UserId=Password.UserId;
-- select username and password
select UserlIST.Username,Password.PasswordHash from UserlIST,Password where UserlIST.UserId=Password.UserId;