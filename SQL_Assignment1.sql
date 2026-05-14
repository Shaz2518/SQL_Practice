use studentdetails;

create table Book_Info (BookID INT, BookTitle Varchar(20), BookPrice INT);
describe Book_Info;

insert into Book_Info values (001, 'Harry Potter', 1999);
insert into Book_Info values (002, 'Novel', 599);
insert into Book_Info values (002, 'Thriller', 5999);

#All columns of the table
select * from Book_Info;

#Books with price more than 1000
select * from Book_Info where BookPrice >1000;

#Book Title starts with 'H'
select * from Book_Info where BookTitle like 'H%';

#Sort book price highest to lowest
select * from Book_Info order by BookPrice desc;

# Update price of 'novel' to 699
update Book_Info set BookPrice='699' where BookTitle ='Novel';

#Highest price
select Max(BookPrice) from Book_Info;

#Book price between 1000-5000
select * from Book_Info;
select BookTitle from Book_Info where BookPrice between 1000 AND 5000;