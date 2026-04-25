use qadb;
select * from EmployeInfo;

insert into EmployeInfo values('Karan', 5,'Mumbai',51, 'male');
delete from EmployeInfo where name Is Null;

insert into EmployeInfo values('Akshay', 6, 'Hyd', 43,'male');

#Unique Value- Names (distinct)
Select name from EmployeInfo;
Select distinct name from employeinfo;

#Operator (AND OR)
Select name from EmployeInfo where location='Mumbai';
Select * from EmployeInfo where location='Mumbai' AND age >50;

Select * from EmployeInfo where location='Mumbai' OR age>50;

#Range (In , between)
select * from EmployeInfo where age in(51,52,53,54,55);
select * from employeinfo where age between 51 and 55;  #Included 51 and 55

#Wild Cards (% _)
select * from employeinfo where location like 'H%';
select * from employeinfo where location like 'H__';
select * from EmployeInfo where name like '_a%';

#Sort (Order By, desc)
select * from EmployeInfo order by name;
select * from EmployeInfo order by name desc;





