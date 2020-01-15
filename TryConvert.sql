select * from clients where column6='2780000000'
update clients set column6 =TRY_CONVERT(int,column6) from clients

select TRY_CONVERT(int,column6) from clients

Alter table clients 
alter column column6 smallint

 SELECT column1 ,column2,column3
 ,case when isnumeric(column6) = 0
 then TRY_CONVERT(int,'0.00')
 else TRY_CONVERT(int,column6)
 end  [column6]
 ,column5,column4 ,column7,column8,column9,column10 FROM StartPoint.dbo.clients

 select * from sales