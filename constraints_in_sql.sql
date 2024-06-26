create database college;
use college;

-- unique constraint
create table student (
	phone int unique
);

insert into student (phone) 
values (1),(2);

-- not null constraint
create table student1 (
	age int,
    roll int unique
);

insert into student1(age,roll)
values(27,3);

-- check constraint
create table student2 (
	age int check(age > 18)
);

insert into student2(age)
values(3);

-- default constraint
create table student3 (
	age int default 18,
    roll int
);

insert into student3(roll)
values(3);

select * from student3;

-- primary key
create table student4 (
	age int,
    roll int primary key
);

-- unique values
insert into student4(age,roll)
values(10,15),
(15,20),
(20,15);

-- not null values
insert into student4(age)
values(12);

-- foreign key 
create table course (
	courseName varchar(50),
    roll int,
    foreign key (roll) references student1(roll)
);
