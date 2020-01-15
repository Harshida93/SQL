
Declare @count1 int=0
Declare @count2 int=0
Select a.First_Name from (Select
case 
when Lang1 <>'' and Lang2<>'' and Lang3<>'' then @count2+3
when Lang1 ='' and Lang2='' and Lang3='' then @count2+0
when Lang1 <>'' and Lang2='' and Lang3='' then @count2+1
when Lang1 ='' and Lang2<>'' and Lang3='' then @count2+1
when Lang1 ='' and Lang2='' and Lang3<>'' then @count2+1
when Lang1 <>'' and Lang2<>'' and Lang3='' then @count2+2
when Lang1 ='' and Lang2<>'' and Lang3<>'' then @count2+2
when Lang1 <>'' and Lang2='' and Lang3<>'' then @count2+2
end
As NumOfLanguagesSpoken,First_Name
from Person)a where a.NumOfLanguagesSpoken=(Select max(p.NumOfLanguagesSpoken)from(Select
case 
when Lang1 <>'' and Lang2<>'' and Lang3<>'' then @count1+3
when Lang1 ='' and Lang2='' and Lang3='' then @count1+0
when Lang1 <>'' and Lang2='' and Lang3='' then @count1+1
when Lang1 ='' and Lang2<>'' and Lang3='' then @count1+1
when Lang1 ='' and Lang2='' and Lang3<>'' then @count1+1
when Lang1 <>'' and Lang2<>'' and Lang3='' then @count1+2
when Lang1 ='' and Lang2<>'' and Lang3<>'' then @count1+2
when Lang1 <>'' and Lang2='' and Lang3<>'' then @count1+2
end
As NumOfLanguagesSpoken,First_Name
from Person)p)

Select * from Person