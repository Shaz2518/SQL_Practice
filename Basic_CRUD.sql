#Create DataBase
create database QAdB;

#Point to database
use QAdB;

#Create Table with Column Heading
create table EmployeInfo(name varchar(20), id int, location varchar(20), age int);

#Add records/rows in Table
insert into EmployeInfo values('Akshay',01,'Mumbai',32);
insert into EmployeInfo values('Salman',02,'Delhi',55);
insert into EmployeInfo values('Sid',03,'Pune',40);
insert into EmployeInfo values('Karan',04,'Hyderabad',43);

describe EmployeInfo;

#Retrieve All Data
SELECT * FROM EmployeInfo;

#Add a column
use QadB;
alter table EmployeInfo add gender varchar(10);

DESCRIBE EmployeInfo;
select * from employeinfo;

update EmployeInfo set gender='female' where name='Sid';
update EmployeInfo set gender='male';