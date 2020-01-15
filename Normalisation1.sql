--1
select First_Name from  Person_NF pf join PersonLangAssoc pa on pa.Person_Id=pf.Person_Id where pa.Lang='German'
--2
select p.First_Name from Person_NF p  join (Select First_Name,pf.Person_Id from Person_NF pf join PersonLangAssoc pa on pa.Person_Id=pf.Person_Id  
group by First_Name,pf.Person_Id having COUNT(*)=1 ) pa on p.Person_Id=pa.Person_Id join PersonLangAssoc z  on p.Person_Id=z.Person_Id where Lang='English'
 
 


Select First_Name from Person_NF pf join PersonLangAssoc pa on pa.Person_Id=pf.Person_Id 
group by First_Name having COUNT(First_Name)>2


 Select First_Name,COUNT(*) from Person_NF   group by First_Name having count(*)=( Select min(p.NumberOfLang) from 
(Select count(*)NumberOfLang,Person_Id from PersonLangAssoc  group by Person_Id)p)

--3
 Select  count(*)NumberOfLang,First_name from PersonLangAssoc pa join Person_NF pf on pa.Person_Id=pf.Person_Id
 group by First_Name having count(*)=(select max(a) from(Select count(*) a,Person_Id from PersonLangAssoc group by Person_Id)p)


 --2
Select First_Name from Person_NF pf join (select COUNT(*)a,Person_Id from PersonLangAssoc group by Person_Id having count(*)=
(Select min(b) from (select COUNT(*)b,Person_Id from PersonLangAssoc where Lang='English' group by Person_Id )p))pa on pf.Person_Id=pa.Person_Id 

Select pf.Person_Id,First_Name,COUNT(*) from PersonLangAssoc pa join Person_NF pf on pf.Person_Id=pa.Person_Id 
group by pf.Person_Id,First_Name having COUNT(*)=1

