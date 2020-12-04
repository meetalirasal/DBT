show databases;
create database Book_Info2;
create table Membernew(Member_Id int not null,Member_Name varchar(30) not null,Member_add varchar(50) not null,Acc_open_data date not null,Member_type varchar(20),Penalty_Amount int not null);
create table Book1(Book_No int,Book_Name varchar(30),Author_Name varchar(30),Book_cost int,Book_Category char(10));
create table BookIssue1(Issue_ID int not null,Book_No int not null,Member_Id int not null,Issue_date date not null,Return_date date null);
insert into Membernew values(1,'Richa Sharma','Pune','10-012-05','Lifetime');
insert into Membernew values(2,'Garima Sen','Pune',current_date(),'Annual');
insert into Membernew values(3,'Meetali','Aurangabad','12-05-07','Annual');
insert into Membernew values(4,'Maria','Singapore','8-08-08','Annual');
insert into Membernew values(5,'Shanaya','Mumbai','7-07-020','Annual');

insert into Book values(101,'Let us C','Denis Ritchie',450,'System'),(102,'Oracle–Complete Ref','Loni',550,'Database'),
(103,'Mastering SQL','Loni',	250	,'Database'),(104,'PL SQL-Ref'	,'ScottUrman',	750,	'Database');
insert into BookIssue1 values(7001,101,	1,'10-06-08',null);	
insert into BookIssue1 values(7002,102,	3,'5-06-009',null);	
insert into BookIssue1 values(7003,103,	2,'7-08-020',null);	
insert into BookIssue1 values(7004,104,	1,'3-04-08',null);	
insert into BookIssue1 values(7005,105,	2,'6-06-06',null);	

drop  table Membernew;
drop table BookIssue1;
alter table Membernew drop  Penalty_Amount;
update Book  set Book_cost=300,Book_Category ='RDBMS' where Book_No=103;
select * from Membernew;
select * from Book1;
select * from BookIssue1;
drop table BookIssue1;