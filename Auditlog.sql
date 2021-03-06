
  truncate table audit_log
  delete from audit_log where cnt=8316

 insert into  audit_log select 'StartPoint', 'Sales', 'Orderid is null','table row count',
   'orderid', count(*), GETUTCDATE() from sales where stage_sales_orderid is null or LEN(stage_sales_orderid)=0 or 
   stage_sales_orderid ='Null' or stage_sales_orderid='N/A'

 insert into  audit_log select 'StartPoint', 'Sales', 'Order date is null', 'table row count',
   'orderid', count(*), GETUTCDATE() from sales where stage_sales_orderdate is null or LEN(stage_sales_orderdate)=0 or 
   stage_sales_orderdate ='Null' or stage_sales_orderdate='N/A'

   insert into  audit_log select 'StartPoint', 'Sales', 'Product key is null','table row count',
   'orderid', count(*), GETUTCDATE() from sales where stage_sales_productkey is null or LEN(stage_sales_productkey)=0 or 
   stage_sales_productkey ='Null' or stage_sales_productkey='N/A'

   insert into  audit_log select 'StartPoint', 'Sales', 'City is missing', 'table row count',
   'orderid', count(*), GETUTCDATE() from sales where stage_sales_city is null or LEN(stage_sales_city)=0 or 
   stage_sales_city ='Null' or stage_sales_city='N/A'
 

  insert into  audit_log select 'StartPoint', 'Sales', 'table row count', 'total table records',
   'orderid', count(*), GETUTCDATE() from sales

   insert into  audit_log select 'StartPoint', 'Clients', 'table row count', 'total table records',
   'Client id', count(*), GETUTCDATE() from clients


   insert into  audit_log select 'StartPoint', 'Clients', 'Duplicate Client names', 'table row count',
   'Client id', count(*), SYSDATETIME() from clients group by column2 having count(*) >1

   insert into  audit_log select 'StartPoint', 'Clients', 'IPO year missing', 'Table row count',
   'Client id', count(*), SYSDATETIME() from clients where column7 is null or LEN(column7)=0 or 
   column7 ='Null' or column7='N/A'

   insert into  audit_log select 'StartPoint', 'Clients', 'Client last sale missing', 'Table row count',
   'Client id', count(*), SYSDATETIME() from clients where column4 is null or LEN(column4)=0 or 
   column4 ='0000' or column4='N/A'
 
 
   

   
  -- select column4 from clients where column4='0000'
   select * from audit_log
   
	