create database if not exists users;

use users;

drop table if exists comment;
drop table if exists post;
drop table if exists users;

create table users (
	id int(10) not null auto_increment,
	first_name varchar(20) not null,
	last_name varchar(20) not null,
	gender char(1),
	birth_date varchar(10),
	email varchar(25) not null,
	password varchar(25) not null,
	primary key (id)
);

create table post (
	id int(10) not null auto_increment,
	user_id int(10) not null,
	date_time datetime default current_timestamp,
	content varchar(100) not null,
	primary key (id),
	foreign key (user_id) references users(id)
);

create table comment (
	user_id int(10) not null,
	post_id int(10) not null,
	date_time datetime default current_timestamp,
	content varchar(100) not null,
	foreign key (user_id) references users(id),
	foreign key (post_id) references post(id)	
);