Select c.name,t.name,c.is_masked,c.masking_function from sys.masked_columns as c Join sys.tables t on c.object_id=t.object_id

create table contacts(
contactid int identity primary key,
firstname varchar(max),
lastname varchar(max) MASKED with (function='partial(1,"XXXXXXX",0)'),
phonenumber varchar(max) MASKED with (function='default()'),
emailaddress varchar(max)MASKED with (function='email()'),
)
 Insert into contacts values('Greg','Goldsberry','760-3600','greg2869@gmail.com')
 Insert into contacts values('Bob','Smith','723-7896','bob2869@gmail.com')
 Insert into contacts values('Alwin','Kristie','789-9876','Alwin2869@gmail.com')

 select * from contacts

create user test_user without login grant select on contacts to test_user

execute as user='test_user'
select * from contacts; 

revert
select user

grant unmask to test_user;

execute as user='test_user'
select*from contacts
revert
select user

revoke Unmask from test_user
select user

execute as user='test_user'
select*from contacts
