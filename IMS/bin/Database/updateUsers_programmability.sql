USE [imsDB]
GO
/****** Object:  StoredProcedure [dbo].[st_updateUsers]    Script Date: 4/16/2024 1:13:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[st_updateUsers]
@name varchar(30),
@username varchar(30),
@pwd nvarchar(30),
@phone varchar(15),
@email varchar(50),
@status tinyint,
@id int
as
update users
set
usr_name = @name,
usr_username = @username,
usr_password = @pwd,
usr_phone = @phone,
usr_email = @email,
usr_status = @status
where 
usr_id = @id

