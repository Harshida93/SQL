Select *  into Fact_sales from StartPoint.dbo.cleansed_sales
Select * into Dim_Clients from StartPoint.dbo.cleansed_clients


Select * from Fact_sales
Alter table Fact_sales
add ProjectDurationDays int
Alter table Fact_sales
add ProfitAmount float

update Fact_sales set ProjectDurationDays=
(Select TRY_CONVERT(date,projectcompletedate) from Fact_sales)-(Select TRY_CONVERT(date,[orderdate]) from Fact_sales)

Select DATEDIFF(day,Select TRY_CONVERT(date,projectcompletedate) from Fact_sales,
Select TRY_CONVERT(date,[orderdate]) from Fact_sales)

SELECT DATEDIFF(day,        '2005-12-31 23:59:59.9999999', '2006-02-01 00:00:00.0000000')
SELECT DATEDIFF(day,         '2005-12-31 23:59:59.9999999', '2006-01-01 00:00:00.0000000')


Select DATEDIFF(day,orderdate,projectcompletedate) into Fact_Sales(ProjectDurationDays) from Fact_sales


Select * from Fact_sales
update Fact_sales set orderdate=(Select TRY_CONVERT(datetime2,orderdate))
update Fact_sales set ProjectDurationDaysss=(Select DATEDIFF(day,orderdate,projectcompletedate))
update Fact_sales set ProfitAmount=wagemargin*saleamount

--1
create view Sales_Metrics_View as
Select DATEDIFF(DAY,orderdate,projectcompletedate) as 'Project Duration Days',
(saleamount*wagemargin) as 'Profit Amount' from Fact_sales

--2
Create view  Sales_Flattened_View with schemabinding as
Select dc.[clientid],[symbol],[lastsale],[marketcaplabel],
[marketcapamount],[ipoyear],dc.[sector],dc.[industry],[summaryquote],[rowid],
[Orderid],[orderdate],[OrderMonthYear],[quantity],[quote],[discountpct],[rate],[saleamount],
[customername],[companyname],[city],[zipcode],[statename],[region],[projectcompletedate],
[daystocomplete],[productkey],[productcategory],[productsubcategory],[consultant],[manager],[hourlywage],
[countofrows],[wagemargin]  from dbo.Fact_sales fs join dbo.Dim_Clients dc on fs.clientid=dc.clientid 
 
 
create unique clustered index IX_Sales_Flattened_View on Sales_Flattened_View(clientid ASC,rowid ASC)

update Sales_Flattened_View set Orderid=40131 where rowid=5674
Select * from Sales_Flattened_View where rowid=5674

Alter table Fact_sales
drop column clientid
 
 set statistics time on
 select clientid,rowid from Sales_Flattened_View where rowid=151 and clientid=39
 set statistics time off



Select fs.companyname,dc.name from Dim_Clients dc left join Fact_sales fs on dc.clientid=fs.clientid
Select rowid from Fact_sales  order by rowid ASC
Select name,companyname from Dim_Clients dc join Fact_sales fs on dc.clientid=fs.clientid
update Fact_sales set  Orderid=40131 where rowid=5674
select * from Fact_sales

  sp_spaceused 'Fact_sales'
  sp_spaceused 'IX_Sales_Flattened_View'
  sp_spaceused 'Sales_Flattened_View'







