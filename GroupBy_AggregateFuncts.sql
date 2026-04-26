#Create database and Table and define columns
create database Business;
use Business;
create table Transactions(
		Month varchar(20), 
        Branch varchar(20),
        Amount int);
        
describe Transactions;

#Insert rows into table
insert into Transactions values('Jan','Mumbai',50000);
insert into Transactions values('Jan','Hyderabad',5000);
insert into Transactions values('Jan','Bangalore',19000);
insert into Transactions values('Feb','Mumbai',2300);
insert into Transactions values('Feb','Hyderabad',50040);
insert into Transactions values('March','Hyderabad',43456);
insert into Transactions values('April','Mumbai',477);
insert into Transactions values('April','Chennai',56);
insert into Transactions values('May','Mumbai',43456);
insert into Transactions values('May','Chennai',43456);
insert into Transactions values('May','Bangalore',44);
select * from Transactions;

#Get sum of amount from each month/branch
select Month,Sum(Amount) from Transactions group By month;
Select Branch,Sum(Amount) from Transactions group by branch;

#Get Maximum amount from each month/branch
Select Month, Max(Amount) from Transactions group by Month;
select Branch, Max(Amount) from Transactions group by Branch;

#Get Minimum amount from each month/branch
Select Month, min(Amount) from Transactions group by Month;
select Branch, min(Amount) from Transactions group by Branch;

#Get Average amount from each month/branch
Select Month, avg(Amount) from Transactions group by Month;
select Branch, avg(Amount) from Transactions group by Branch;

#Gte count of transaction in each month/branch
select Month,count(*) from Transactions group by Month;
select Branch,count(*) from Transactions group by branch;

select Month,count(*) from Transactions group by Month having count(*)>=2;


#Get total sum of amount for each month in Mumbai and Bangalore;
select Branch,sum(Amount) from Transactions 
	where Branch='Mumbai' or Branch='Bangalore' 
		group by Branch 
			having sum(Amount)<20000;

