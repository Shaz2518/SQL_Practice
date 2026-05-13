create database constraints;
use constraints;

#Not null
create table NotNull_const( name varchar(20), id INT Not Null);
insert into NotNull_const(name,id) values ('Jack','5');
select * from NotNull_const;
insert into NotNull_const(name,id) values ('John',NULL);

#Default
create table Default_const(name varchar(10), age INT default 18);
insert into Default_const(name,age) values('Amy', 25);
select * from Default_const;
insert into Default_const(name) values('Fred');

#Unique
create table Unique_const(name varchar(10), id INT unique);
insert into Unique_const(name,id) values('Mary',2001);
insert into Unique_const(name,id) values('Jack',2001);
select * from Unique_const;

#Primary Key
create table Primary_const(name varchar(10), id INT, primary key (id));
insert into Primary_const(name,id) values('Ajay', 25);
insert into Primary_const(name,id) values('Vijay', null);




