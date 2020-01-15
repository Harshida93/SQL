select * from audit_log
update clients set column7='NULL' where column7=0
update clients set column4='n/a' where column4='0'
update clients set column7='0' where column7='NULL' or column7 is null or column7='n/a'
insert into cleansed_clients select * from clients
select * from cleansed_clients
truncate table cleansed_clients
select lastsale from cleansed_clients where lastsale=0