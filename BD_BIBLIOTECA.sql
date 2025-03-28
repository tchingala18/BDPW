/*create database biblioteca;*/
use biblioteca;

create table author(id int auto_increment primary key not null, 
name_author varchar(100) not null, 
nationality varchar(100) not null, 
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
deleted_at TIMESTAMP NULL);

create table category(id int auto_increment primary key not null, 
descrition varchar(500) not null, 
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
deleted_at TIMESTAMP NULL);

create table books(id int not null primary key, title varchar(100) 
not null, isbn varchar(20) not null, year_of_publition year not null, author_id int not null, 
category_id int not null,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
deleted_at TIMESTAMP NULL,
foreign key (author_id) references author(id) on delete cascade,
foreign key (category_id) references category(id) on delete cascade
)


