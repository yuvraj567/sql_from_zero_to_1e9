create database coaching;
use coaching;

create table student (
	id int primary key,
    name varchar(50)
);

create table course (
	cid int primary key,
    id int,
    foreign key(id) references student(id)
);

show tables;