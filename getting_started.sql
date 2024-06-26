CREATE DATABASE IF NOT EXISTS school;
DROP DATABASE IF EXISTS school;
USE school;
SHOW DATABASES;

create table student (
	sid int primary key,
    name varchar(50)
);

insert into 
	student(sid,name) 
values
	(1,"baap"),
	(2,"hu"),
	(3,"mai");
    
select * from course;