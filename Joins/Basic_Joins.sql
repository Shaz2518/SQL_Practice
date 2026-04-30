use citizendata;
select * from citizen;
select * from citizenloc;

#Use join to get the age of Employee
select c.name, cl.location, c.age from citizen as c join citizenloc as cl on c.name=cl.name;

#Get name of person in UK with age greate than 20
select c.name,c.age,cl.location from citizen as c join citizenloc as cl on c.name=cl.name where c.age>20 AND cl.location='UK';

#Create new database and table
create database Company;
use company;
create table companydetails
(
	name varchar(30),
    branch varchar(30),
    Employee Int);

insert into companydetails values('Google','USA',2000);
insert into companydetails values('Google','Canada',200);
insert into companydetails values('Google','UK',500);
insert into companydetails values('Amazon','USA',20000);
insert into companydetails values('Microsoft','USA',2050);
insert into companydetails values('Microsoft','UK',4000);
insert into companydetails values('Google','USA',2000);
insert into companydetails values('Apple','Canada',2000);
insert into companydetails values('Apple','UK',2500);
select * from companydetails;
create table established
(
	name varchar(30),
    Estyear Int);
    
insert into established values('Google', 1996);
insert into established values('Microsoft', 1884);
insert into established values('Amazon', 2000);
insert into established values('Apple', 1991);

select * from established;

#Get the employee count of the commany established in 1991
select c.name,SUM(c.employee)  from companydetails as c join established as e on e.name=c.name where e.estyear='1991' Group by e.name;
select c.name,SUM(c.employee)  from companydetails as c join established e on e.name=c.name where e.estyear='1884' Group by e.name;

select c.name, Sum(c.employee) from companydetails as c join established e on e.name=c.name where c.name='Amazon' Group by c.name;

#Minimum Employee in a branch for all companies established after 1995
select * from companydetails;
select * from established;

select  c.name, min(c.Employee) 
	from companydetails as c join established as e on e.name=c.name 
		where e.estyear <1995
        Group by e.name ;
		