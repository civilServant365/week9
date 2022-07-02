create database if not exists socialmedia;

use socialmedia;

drop table if exists comments;
drop table if exists posts; 
drop table if exists clients;


Create table clients(
id int (10) not null auto_increment,
username varchar(30),
email varchar(30),
pass_word varchar(20),
primary key (id));

create table posts(
id int(10) not null auto_increment,
post_content varchar(100),
post_time datetime default current_timestamp,
clients_id int(10),
primary key (id),
foreign key (clients_id) references clients(id));

create table comments (
comment_content varchar(100),
comment_time datetime default current_timestamp,
clients_id int (10),
posts_id int(10),
primary key (clients_id, posts_id),
foreign key (clients_id) references clients(id),
foreign key (posts_id) references posts(id));


desc clients;
desc posts;
desc comments;

insert into clients (username, email, pass_word) values 
('bob', 'bob@bob.com', 'bobby');

insert into posts (post_content) values ('bobby');

insert into comments(comment_content, clients_id, posts_id )
 values ('bobby','1','1');

select * from clients;
select* from posts; 
select* from comments;

           





