set names utf8;
create database acmleader  default  charset=utf8;
use acmleader;
create table acmer(
	id int not null primary key auto_increment,
	name varchar(255),
	grade int ,
	pojid varchar(255),
	poj int ,
	hdojid varchar(255),
	hdoj int ,
	tcid varchar(255),
	tc int ,
	cfid varchar(255),
	cf int 
)default charset=utf8;

create table fresh(
	id int NOT NULL AUTO_INCREMENT primary key,
	time datetime not null 
)default charset=utf8;
