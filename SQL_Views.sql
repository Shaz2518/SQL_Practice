use company;
select * from companydetails;

create view google_info as
select * from companydetails where name='Google';

select * from google_info;

create view Average_Employee as
select name, avg(employee) from companydetails group by name having avg(employee) > (select avg(employee) from companydetails);

select * from Average_Employee;