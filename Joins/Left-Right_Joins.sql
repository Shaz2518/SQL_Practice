create database StudentDetails;
use studentdetails;

create table student (
	name varchar(20),
    id Int,
    gender varchar(10),
    age int);

insert into student values('Akshay',2,'Male',25);
insert into student values('Elena',3,'Female',23);
insert into student values('Jer',4,'Male',25);
insert into student values('Caroline',6,'Female',25);
insert into student values('Salman',5,'Male',25);
select * from student;

create table Grades (
	grade varchar(2),
    id int);
    
insert into Grades values('A',1);
insert into Grades values('B',2);
insert into Grades values('C',4);
insert into Grades values('D',6);
insert into Grades values('E',5);
select * from Grades;

select s.name, s.id,g.grade from student as s inner join grades as g on s.id=g.id;
select s.name, s.id,g.grade from student as s left join grades as g on s.id=g.id;
select s.name, s.id,g.grade from student as s right join grades as g on s.id=g.id;

select s.name, s.id, s.age, g.grade from student as s inner join grades as g on s.id=g.id where gender='Male';
select s.name, s.id, s.age, g.grade from student as s left join grades as g on s.id=g.id where gender='Female';
select s.name, s.id, s.age, g.grade from student as s right join grades as g on s.id=g.id where age=25;





