use company;
select * from companydetails;

#concat
select concat(Name, branch) as Branches from companydetails;

#substring
select substr(name, 3,5) from companydetails where name = 'Microsoft';

#lenght
select name, length(name) from Companydetails;

#replace
select replace(name, 'Micro', 'Ohh') from companydetails;

#limit (Top3 details)
select name from companydetails limit 3 ;

#trim
select trim('   Hel lo');