USE [imsDB]
GO
/****** Object:  StoredProcedure [dbo].[st_insertUsers]    Script Date: 4/16/2024 1:12:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[st_insertUsers]
@name varchar(30),
@username varchar(30),
@pwd nvarchar(30),
@phone varchar(15),
@email varchar(50),
@status tinyint 
as
insert into users  values(@name, @username, @pwd , @phone, @email, @status)
