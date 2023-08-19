create database itospet;

use itospet;

create table CLIENTE(
IDCLIENTE int not null auto_increment,
NOMECLIENTE varchar(45) not null,
SOBRENOME varchar(45) not null,
primary key(IDCLIENTE));


create table RACA(
IDRACA int not null auto_increment,
NOMERACA varchar(45) not null,
primary key(IDRACA));

create table TIPO(
IDTIPO int not null auto_increment,
NOMETIPO varchar(45) not null,
primary key(IDTIPO)
);


create table SERVICO(
IDSERVICO int not null auto_increment,
TIPO_SERVICO varchar(45) not null,
PRECO double not null,
primary key(IDSERVICO)
);

create table PET(
IDPET int not null auto_increment,
CLIENTE_ID int not null,
RACA_ID int not null,
TIPO_ID int not null,

APELIDO varchar(45) not null,
IDADE INT not null,
primary key(IDPET),
foreign key(CLIENTE_ID) references CLIENTE(IDCLIENTE),
foreign key(RACA_ID) references RACA(IDRACA),
foreign key(TIPO_ID) references TIPO(IDTIPO)
);

create table VENDA(
PET_ID int not NULL,
SERVICO_ID int not null,
TOTAL double not null,

foreign key(PET_ID) references PET(IDPET),
foreign key(SERVICO_ID) references SERVICO(IDSERVICO)
);

insert into CLIENTE(NOMECLIENTE, SOBRENOME) values("Teste")