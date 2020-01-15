select * from clients
select TABLE_SCHEMA+'.'+TABLE_NAME as columnZ
from INFORMATION_SCHEMA.TABLES

select TABLE_SCHEMA from INFORMATION_SCHEMA.TABLES

select column5+' ('+column6+')' as column5 from clients

select * into trialClients from clients
select * into trialSales from sales
Alter table trialsales
alter column [stage_sales_orderdate] datetime

update trialClients set column5=column5+' ('+column6+')'
select * from trialClients

Alter table trialClients
Drop column column6[stage_sales_orderdate]

select column5+5 from trialClients


UPDATE trialSales
SET[stage_sales_orderdate] = CONVERT(date,CAST([stage_sales_orderdate] as date),112)

UPDATE trialSales
SET[stage_sales_orderdate] = TRY_CONVERT(date,[stage_sales_orderdate] )


select [stage_sales_orderdate] from trialSales
insert into t[trialSales]( select [stage_sales_orderdate] from cleansed_sales

Alter table trialsales
ADD  [stage_sales_orderdate] varchar(10)

select CONVERT(date,[stage_sales_orderdate],101) from trialSales
SELECT CONVERT(date, [stage_sales_orderdate], 110) AS [MM-DD-YYYY] from trialSales

select * from trialSales

insert into trialSales(stage_sales_orderdate) select stage_sales_orderdate from sales

insert into trialSales select stage_sales_orderdate  from sales
drop table trialSales

select * into trialSales from sales

select * from cleansed_sales 

select * from trialSales 


select count(*) from (select TRY_CONVERT(date,stage_sales_orderdate)a from trialSales)p where a is null


select count(*) from(select orderid,TRY_CONVERT(date,orderdate) a from cleansed_sales where Orderid='6406')p 

select DATA_TYPE from INFORMATION_SCHEMA.COLUMNS where 
TABLE_NAME='trialSales' AND COLUMN_NAME='stage_sales_orderdate' 

select * from trialSales where stage_sales_orderdate like 'NULL'

select * from cleansed_sales where orderdate='9999-12-31'

update trialSales set stage_sales_orderdate=TRY_CONVERT(date,stage_sales_orderdate)

select TRY_CONVERT(date,stage_sales_ordermonthyear)a from trialSales





[stage_sales_rowid][stage_sales_orderid][stage_sales_quantity][stage_sales_quote]



















