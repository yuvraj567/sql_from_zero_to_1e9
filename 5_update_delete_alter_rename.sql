create database xyz;
set sql_safe_updates = 0;
use xyz;

create table employee (
	id int primary key,
    name varchar(50),
    age int,
    department varchar(50),
    city varchar(50),
    salary int
);

insert into employee(id, name, age, department, city, salary)
values
(1,"rahul",12,"IT","Patna",1500),
(2,"raj",12,"CSE","Patna",1500),
(3,"ami",12,"IT","Patna",1500),
(4,"oggy",12,"ECE","Patna",1500);

-- update data in the table
update employee
set salary = 10000
where name = "ami";

update employee
set dob = "na";
-- where name = "yuvi";

-- delete data in the table
delete from employee
where department = "IT";

delete from employee
where name = "oggy";

-- select command
select name, age from employee;

-- filter data using where command
select * from employee where name = "rahul";

-- alter command
alter table employee
add dob varchar(50) default "na";

select * from employee;

alter table employee
drop dob;

alter table employee
modify age varchar(3);

alter table employee
change age emp_age varchar(3);

alter table employee
rename column emp_age to age;
