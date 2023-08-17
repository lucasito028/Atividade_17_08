create database dia_17_08;

use dia_17_08;

create table cliente(
id int not null auto_increment,
nome varchar(45) not null,
primary key(id));

create table pet(
id int not null auto_increment,
id_dono int not null,
nome varchar(45) not null,
primary key(id),
foreign key(id_dono) references cliente(id)
);

insert into cliente(nome) values ("Lucas"),
("Pedlo"),
("Klepeo");

insert into pet(id_dono, nome ) values (1, "Nina"),
(1, "Bigui"),
(2, "Thor"),
(2, "akjndaso")