USE [product]
GO
/****** Object:  Trigger [dbo].[history]    Script Date: 3/26/2019 7:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TRIGGER [dbo].[history] ON [dbo].[product] 
   AFTER INSERT
AS 
BEGIN
	
	declare @productid int
	declare @productName varchar(50)
	declare @productDesc varchar(50)

	Select @productid=prodList.productid from inserted prodList
	Select @productName=prodList.productName from inserted prodList
	Select @productDesc=prodList.productDesc from inserted prodList
	 Insert into productHistory values(@productid, @productName,@productDesc)
    
END
