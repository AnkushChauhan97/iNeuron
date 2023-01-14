create table bank_details (age int, job varchar(255),, marital varchar(255),, education varchar(255),, `default` varchar(255),, balance int, housing varchar(255),, loan varchar(255),, contact varchar(255),, `day` int, `month` varchar(255),, duration int, campaign varchar(255),, pdays int, previous varchar(255),, poutcome varchar(255),, y varchar(5),),
select age, balance from bank_details where age>50 and balance<500
select count(marital) from bank_details where marital= 'single' or marital= 'divorced'
update bank_details set balance= 0 where marital= 'divorced'
select * from bank_details 
delete from bank_details where pdays<0

use ds 
delimiter &&
create procedure selectrandom2(in v int)
begin
	select * from bank_details where job= 'retired' and balance>v;
end &&

call selectrandom2(6)

create view bank_view as select job, balance, age, marital from bank_details

select * from bank_view

