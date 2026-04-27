use citizenData;

#Get age of person who resides in England
select name,age from citizen where name=(select name from citizenLoc where location='England');

#Get age of person who resides in US
select name,age from citizen where name in(select name from citizenLoc where location='UK');

#Get name and location of person whose experience greate than 10
select name,location from citizenLoc where name in(select name from citizen where experience>10);