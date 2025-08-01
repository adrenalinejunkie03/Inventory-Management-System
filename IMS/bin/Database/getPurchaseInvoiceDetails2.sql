USE [imsDB]
GO
/****** Object:  StoredProcedure [dbo].[st_getPurchaseInvoiceDetails]    Script Date: 4/22/2024 10:27:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[st_getPurchaseInvoiceDetails]
@pid bigint
as
select
pid.pid_id as 'MPID',
pid.pid_productID as 'Product ID',
p.pro_name as 'Product',
pid.pid_productQuantity as 'Quantity',
pid.pid_totalPrice as 'Total Price',
p.pro_price as 'Per Unit Price'
from purchaseInvoice pii
inner join purchaseInvoiceDetails pid
inner join products p on p.pro_id = pid.pid_productID
on pii.pi_id = pid.pid_purchaseID
where pii.pi_id = @pid;


