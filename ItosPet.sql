create database itospet;

use itospet;

create table TIPOCLIENTE(
    IDTIPOCLIENTE int not null auto_increment,
    NOMETIPOCLIENTE varchar(45) not null,
    primary key(IDTIPOCLIENTE)
);


create table CLIENTE(
IDCLIENTE int not null auto_increment,
FKIDTIPOCLIENTE int not null,
NOMECLIENTE varchar(45) not null,
SOBRENOME varchar(45) not null,
primary key(IDCLIENTE),
foreign key(FKIDTIPOCLIENTE) references TIPOCLIENTE(IDTIPOCLIENTE),
index NOMECOMPLETO (NOMECLIENTE, SOBRENOME));




create table TIPO(
IDTIPO int not null auto_increment,
NOMETIPO varchar(45) not null,
primary key(IDTIPO)
);

create table RACA(
IDRACA int not null auto_increment,
NOMERACA varchar(45) not null,
TIPO_ID int not null,
primary key(IDRACA),
foreign key(TIPO_ID) references TIPO(IDTIPO)
);



create table PET(
IDPET int not null auto_increment,
CLIENTE_ID int not null,
RACA_ID int not null,

APELIDO varchar(45) not null,
IDADE INT not null,
primary key(IDPET),
foreign key(CLIENTE_ID) references CLIENTE(IDCLIENTE),
foreign key(RACA_ID) references RACA(IDRACA)
);




create table TIPOPRODUTO(
    IDTIPOPROD int NOT NULL auto_increment,
    NOMETIPOPROD varchar(45) not null,
    primary key(IDTIPOPROD)
);


create table PRODUTO(
    IDPRODUTO int not null auto_increment,
    FK_IDTIPOPROD int not null,
    NOMEPRODUTO varchar(45) not null,
    PRECO double not null,
    primary key(IDPRODUTO),
    foreign key (FK_IDTIPOPROD) references TIPOPRODUTO(IDTIPOPROD)
);



create table VENDA(
    IDVENDA int not null auto_increment,
    PRECOTOTAL double not null,
    primary key(IDVENDA)
);



create table PETVENDA(
    PET_IDPET int not null,
    VENDA_IDVENDA int not null, 
    foreign key(PET_IDPET) references PET(IDPET),
    foreign key(VENDA_IDVENDA) references VENDA(IDVENDA)
);



create table ITEMVENDA(
    PRODUTO_IDPRODUTO int not null,
    FK_IDVENDA int not null, 
    foreign key(PRODUTO_IDPRODUTO) references PET(IDPET),
    foreign key(FK_IDVENDA) references VENDA(IDVENDA)
);

insert into TIPOCLIENTE(NOMETIPOCLIENTE) VALUES ('Normal'),
('VIP'),
('Banana');

insert into CLIENTE(FKIDTIPOCLIENTE, NOMECLIENTE, SOBRENOME) 
values 
(1, 'John', 'Doe'),
(1 ,'Jane', 'Smith'),
(1, 'Michael', 'Johnson'),
(2, 'Emily', 'Williams'),
(3, 'William', 'Brown'),
(2, 'Olivia', 'Jones'),
(3, 'James', 'Miller'),
(1, 'Sophia', 'Davis'),
(1, 'Liam', 'Wilson'),
(1, 'Emma', 'Taylor'),
(1, 'Alexander', 'Anderson'),
(2, 'Ava', 'Thomas'),
(3, 'Ethan', 'Martinez'),
(3, 'Isabella', 'Robinson'),

(1, 'Doe', 'John'),
(2, 'Smith', 'Jane'),
(3, 'Johnson', 'Michael'),
(1, 'Williams', 'Emily'),
(3, 'Brown', 'William'),
(2, 'Jones', 'Olivia'),
(3, 'Miller', 'James'),
(3, 'Davis', 'Sophia'),
(2, 'Wilson', 'Liam'),
(1, 'Taylor', 'Emma'),
(1, 'Anderson', 'Alexander'),
(2, 'Thomas', 'Ava'),
(3, 'Martinez', 'Ethan'),
(3, 'Robinson', 'Isabelle');



insert into TIPO (NOMETIPO) values ('Cachorro');
insert into TIPO (NOMETIPO) values ('Gato');


insert into RACA (NOMERACA, TIPO_ID) values ('Labrador', 1);
insert into RACA (NOMERACA, TIPO_ID) values ('Poodle', 1);
insert into RACA (NOMERACA, TIPO_ID) values ('Bulldog', 1);
insert into RACA (NOMERACA, TIPO_ID) values ('Vira Lata', 1);

insert into RACA (NOMERACA, TIPO_ID) values ('Mial', 2);
insert into RACA (NOMERACA, TIPO_ID) values ('Abyssinian', 2);
insert into RACA (NOMERACA, TIPO_ID) values ('Aegean', 2);
insert into RACA (NOMERACA, TIPO_ID) values ('Arabian Mau', 2);


