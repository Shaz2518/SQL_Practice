create database citizenData;
use citizenData;

create table citizen 
(
	name varchar(20),
    age int,
    experience int);

describe citizen;
insert into citizen values('James',45,15);
insert into citizen values('Harry',18,2);
insert into citizen values('Ron',28,5);
insert into citizen values('Malfoy',65,25);
insert into citizen values('Hagrid',72,30);
select * from citizen;

create table citizenLoc
(
	name varchar(20),
    location varchar(20));
describe citizenLoc;
insert into citizenLoc values('James','USA');
insert into citizenLoc values('Harry','UK');
insert into citizenLoc values('Ron','UK');
insert into citizenLoc values('Malfoy','England');
insert into citizenLoc values('Hagrid','Autralia');
select * from citizenLoc;

