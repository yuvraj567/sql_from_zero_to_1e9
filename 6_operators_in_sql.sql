create database db;
set sql_safe_updates = 0;
use db;

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

-- and operator
select * from employee where age > 10 and name = "rahul";

-- or operator
select * from employee where age > 10 or name = "rahul";

-- not operator
select * from employee where department not in ("ECE");

-- in operator
select * from employee where department in("CSE","ECE");

-- is null/ is not null operator
select * from employee where department is not null;

-- like operator %
select * from employee where name like "r%";

-- underscore operator _
select * from employee where name like "_a%";

-- BETWEEN operator
select * from employee where salary between 1000 and 1500;