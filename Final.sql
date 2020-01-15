Select RIGHT(partdescription,6)from red
Select SUBSTRING(partdescription,9,LEN(partdescription))from blue
Select First_Name from Person where Lang1<>'' and Lang2<>'' and Lang3<>''

Select * from Person

select * from red
Select * from blue


--First
--1
Select r.*,b.*
from red r 
inner join blue b 
on SUBSTRING(b.partdescription, 10 , len(b.partdescription))
= SUBSTRING(r.partdescription, 1 , len(r.partdescription) - 7)

--2
Select  b.* 
from red r 
right join blue b 
on SUBSTRING(b.partdescription, 10 , len(b.partdescription))
= SUBSTRING(r.partdescription, 1 , len(r.partdescription) - 7)  where (SUBSTRING(r.partdescription, 1 , len(r.partdescription) - 7)) is null

--((select SUBSTRING(partdescription, 10 , len(partdescription)) from blue)=
--(select SUBSTRING(partdescription, 1 , len(partdescription) - 7) from red))

--3
Select r.partdescription as 'Part Description',r.unitssold+b.unitssold as 'Units sold'
from red r 
inner join blue b 
on SUBSTRING(b.partdescription, 10 , len(b.partdescription))
= SUBSTRING(r.partdescription, 1 , len(r.partdescription) - 7)

Select sum(unitssold),partdescription from red group by partdescription

--Second


Select * from exped

Select [WHERE],Catalog,Store,Web from (Select [WHERE],[HOW],[REVENUE] from exped)p
PIVOT
(
		sum(REVENUE)
		FOR [HOW]
		IN ([Catalog],[Store],[Web])
		)As PivotTable Order by [WHERE]

		Select COUNT([WHERE]),[WHERE] from exped group by [WHERE]

		Select * from (Select [WHERE],[HOW],[REVENUE] from exped)p 
		PIVOT
		(
			sum([REVENUE])
			FOR [HOW]
			in ([Catalog],[Store],[Web])
			) As PivotTable order by [WHERE]

Select * from(Select [WHERE],[QUANTITY],[REVENUE] from exped)p
PIVOT
		(
			sum([REVENUE])
			FOR [QUANTITY]
			in ([1],[2],[3],[4],[5])
			) As PivotTable order by [WHERE]

			Select * from Sales_Flattened_View
			Select * from Fact_sales where Orderid='n/a'



	Declare @count int
	Declare @lang1 varchar
	Declare @lang2 varchar
	Declare @lang3 varchar
	Declare @name varchar
	Set @count=1
	while exists(Select * from Person)
	begin
	Select @lang1=Lang1,@lang2=Lang2,@lang3=Lang3,@name=First_Name  from Person
		if @lang1 <>''
			begin
				set @count=@count+1
						if  @lang2 <>''
							begin
							set @count=@count+1
							print 'speaks lang1 and lang2'
								if @lang3 <>''
									begin
									set @count=@count+1
									print @count
									end
								else
									begin
								    print '0'
								    end
							end
						else
							begin
							print '0'
							end
				end	
			else 
				begin
				 print '0'
				end
				print @count
				break
		end

		Declare @count2 int=0
		If exists (Select * from Person where Lang2<>'' )
			begin
			set @count2=@count2+1
			end
		else
		 begin
		   print '0'
		 end
	
	

	Select * from Person


 Declare @count1 int
 SET @count1=1
 while @count1<>0
 BEGIN
 Select case when Lang1 <>'' then @count1= @count1+1

 from Person

 for rows in Person
	begin
		Select @lang1=Lang1,@lang2=Lang2,@lang3=Lang3,@name=First_Name  from Person
		if @lang1=''
		begin
			set @count=@count+1
		end
		else if @lang2='English'
		begin
			set @count=@count+2
		end
		print @count
		break
	end