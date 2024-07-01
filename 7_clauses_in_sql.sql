create database clause;
set sql_safe_updates = 0;
use clause;

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

-- limit clause
select * from employee limit 3;

-- ORDER BY clause
select * from employee order by name desc;

-- fetch details of employee having id as 1
select * from employee where id = 1;

-- details of employee who are not from patna
select * from employee where city not in("patna");

-- details of 2 employee who are having maximum salary
select * from employee order by salary desc limit 2;

 