Declare @name varchar(30)
Declare @lang1 varchar(30)
Declare @lang2 varchar(30)
Declare @lang3 varchar(30)
Declare @count int=0

Declare CountCursor4  CURSOR FOR
Select First_Name,Lang1,Lang2,Lang3 from Person

open CountCursor4
Fetch next from CountCursor4 into @name,@lang1,@lang2,@lang3

while(@@FETCH_STATUS  =0)
 Begin
	if @lang1<>'' 
	begin
		set @count=@count+1
		
	end
	else if @lang1=''
	begin
	 set @count=@count
	 end
	 if @lang2<>'' 
	begin
		set @count=@count+1
		
	end
	else if @lang2=''
	begin
	 set @count=@count
	 end
	 if @lang3<>'' 
	begin
		set @count=@count+1
		print 'Name- '+ @name+'  Number of languages spoken- '+cast(@count as varchar)
		end
	else if @lang3=''
	begin
	 set @count=@count
	 end
		
	
	 
	 set @count=0
	
	Fetch next from CountCursor4 into @name,@lang1,@lang2,@lang3
 end
  
close CountCursor4
Deallocate CountCursor4

 select * from Person
 if @lang2<>''
		begin
			set @count=@count+1
		end
		else if @lang2=''
		begin
		 set @count=@count
		end
		 print @name
		print @count