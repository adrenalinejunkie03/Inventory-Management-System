USE [imsDB]
GO
/****** Object:  StoredProcedure [dbo].[st_getUsersData]    Script Date: 4/16/2024 2:33:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[st_getUsersData]
as
select
u.usr_id as 'ID',
u.usr_name as 'Name',
u.usr_username as 'Username',
u.usr_password as 'Password',
u.usr_phone as 'Phone',
u.usr_email as 'Email',
case when (usr_status = 1) then 'Active' else 'In-active' end as 'Status'
from users u
order by u.usr_name asc


