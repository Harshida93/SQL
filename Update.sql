update cleansed_sales set [orderdate]  ='9999-12-31' where [orderdate] like '%NULL%' or orderdate is null
update cleansed_sales set [productkey] = 'Unknown' where   [productkey] like '%NULL%' or productkey is null 
update cleansed_sales set [Orderid]=' ' where [Orderid]  like '%NULL%' or Orderid is null
update cleansed_sales set city =(select primary_city from zip_code_database where zip=92307) where zipcode=92307
update cleansed_sales  set cs.clientid=c.column1 from clients c join cleansed_sales cs on cs.companyname=c.column2
select * from cleansed_sales

Select * from clients 
select * from sales where
--n/a in column5,column5,column9 in clients update
--change data type of orderdate year in sales
--remove nulls in ordermonth year in sales/Cleansed sales


select * from cleansed_sales where orderdate='9999-12-31'
select city from cleansed_sales where zipcode=92307