create database db_locadora;

use db_locadora;


create table tb_filme(
	id				int,
	titulo_filme	varchar(60),
primary key (id)
);

insert into tb_filme (id,titulo_filme) values
(1,'The Matrix'),
(2,'O Grito'),
(3,'The lord of The Rings'),
(4,'Highlander II: The Quickening'),
(5,'THe Phantom of the Opera');

select * from tb_filme;

drop table tb_filme;



create table tb_cliente(
	id		int,
	nome	varchar(30),
primary key (id)
);

insert into tb_cliente (id,nome) values
(1,'Danny'),
(2,'Carmelita'),
(3,'Johnny'),
(4,'Jesse'),
(5,'James');

select * from tb_cliente;

drop table tb_cliente;


create table tb_locacao(
	id			int,
	id_filme	int,
	id_cliente	int,
	devolucao	date,
primary key (id),
foreign key (id_filme) references tb_filme (id),
foreign key (id_cliente)references tb_cliente (id)
);

insert into tb_locacao (id,id_filme,id_cliente,devolucao) values
(1,1,4,'12-10-2020'),
(2,1,2,'17-10-2020'),
(3,3,1,'11-10-2020'),
(4,2,2,'12-10-2020'),
(5,3,3,'12-10-2020'),
(6,5,3,'10-09-2020'),
(7,5,3,'19-11-2020'),
(8,4,1,'02-09-2020'),
(9,4,2,'11-09-2020'),
(10,2,5,'10-12-2020');

select * from tb_locacao;

drop table tb_locacao;
