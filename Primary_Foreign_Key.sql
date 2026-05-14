use company;

create table customer ( c_id INT, address varchar(20), zipcode INT, primary key (c_id) ON DELETE CASCADE);
insert into customer values(001, 'China', 40001);
insert into customer values(002, 'INDIA', 34555);
insert into customer values(003, 'USA', 343242);
select * from customer;

create table orders (o_id INT, c_id INT, amount INT, date VARCHAR(20), primary key(o_id), foreign key(c_id) references customer(c_id));
insert into orders values(1, 001, 999, 'JAN');
insert into orders values(2, 002, 12901, 'FEB');
insert into orders values(3, 003, 1000, 'MAY');
select * from orders;

delete from orders where c_id = 002;
delete from customer where c_id = 002;

select * from customer;
delete from customer where c_id = 001;

