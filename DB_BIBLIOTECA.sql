create database  db_biblioteca;
user db_biblioteca;
create table author(
id int  primary key auto_increment not null,
name varchar(50)not null,
first_name varchar(50)not null,
last_name varchar(50)not null, 
email varchar(50) null,
phone varchar(10) null,
create_at datetime,
update_at datetime
);
create table books(
id int primary key not null,
code_books varchar(4) not null,
name varchar (50) not null,
title varchar (100) not null,
plubisher date not null, 
sbn char(12),
foreign key(id_author) references author (id_author),
create_at datetime,
update_at datetime
);
create table user(
id int primary key auto_increment not null,
name varchar(50) not null,
first_name varchar(50)not null,
last_name varchar(50)not null,
email varchar(100) not null,
password varchar(255) not null,
date_of_birth date not null,
location varchar(100) not null
);
create table loan(
loan_id int primary key auto_increment not null,
user_id (int foreign key reference user(user_id)) not null,
loan_date date not null,
due_date date not null,
amount decimal(10,2)not null,
interest decimal(5,2)not null,
);