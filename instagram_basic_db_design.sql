create database if not exists instagramDb;
use instagramDb;

create table if not exists users (
	userId int primary key,
    userName varchar(50),
    email varchar(100)
);

create table if not exists posts (
	postId int primary key,
    userId int,
    caption varchar(100)
);

show databases;

insert into users (userId, username, email)
values (1,"aman","aman@gmail.com"),
(2,"yuvraj","yuvraj@gmail.com"),
(3,"nandini","nandini@gmail.com");

insert into posts(postId, userId, caption) 
values (101,561,"aman hai"),
(102,562,"haa hai"),
(103,563,"kaha hai");

use instagramDb;
show tables;

select * from users;
select * from posts;