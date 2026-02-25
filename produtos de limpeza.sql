
create database db_produtos_limpeza;

use db_produtos_limpeza;

create table tb_produto (
	id_produto int,
	preco real,
	nome varchar(50),
	categoria int,

primary key (id_produto),
foreign key (categoria) references tb_categoria (id_categoria)
);
	
insert into tb_produto (id_produto,preco,nome,categoria) values
(214,12.90,'Papel higienico',21),
(244,10.90,'Amaciante',32),
(222,20.19,'Sabão em pó',32),
(208,87.90,'Sabão liquido para roupas',32),
(090,9.90,'Escova de dente',21),
(290,11.90,'Pasta de dente',21),
(089,130,'Sabonete',21),
(980,20.90,'Hidradante corporal',21),
(119,21.99,'Lenço umidecido',21),
(019,10.78,'Shampoo',21);

select* from tb_produto; 

drop table tb_produto;


create table tb_categoria (
	id_categoria int,
	nome varchar(25),

primary key (id_categoria)
);

insert into tb_categoria (id_categoria,nome) values
(21,'Higiene pessoal'),
(32,'Limpeza de roupas');
	
select* from tb_categoria; 

drop table tb_categoria;


create table tb_pedido (
	id_pedido int,
	quantidade int,
	data_elaboracao varchar(10),

primary key (id_pedido)
);

insert into tb_pedido (id_pedido,quantidade,data_elaboracao) values
(1,90,'18/09/2021'),
(2,87,'19/09/2021'),
(3,12,'20/09/2021'),
(4,18,'21/09/2021'),
(5,8,'22/09/2021'),
(6,76,'23/09/2021'),
(7,82,'24/09/2021'),
(8,15,'25/09/2021'),
(9,21,'26/09/2021'),
(10,29,'27/09/2021'),
(11,13,'28/09/2021'),
(12,97,'29/09/2021'),
(13,85,'30/09/2021'),
(14,91,'01/10/2021'),
(15,20,'02/10/2021'),
(16,10,'03/10/2021'),
(17,21,'04/10/2021'),
(18,02,'05/10/2021'),
(19,01,'06/10/2021'),
(20,80,'07/10/2021');

select* from tb_pedido; 

drop table tb_pedido;


create table tb_cliente (
	id_cliente int,
	telefone varchar(20),
	endereco int,
	status_cliente varchar(10),
	nome varchar(30),
	limite_credito real,

primary key (id_cliente),
foreign key (endereco) references tb_endereco (id_endereco)
);

insert into tb_cliente (id_cliente, telefone, endereco, status_cliente,nome,limite_credito) values
(221,'+55 (11) 91234-5678',122,'ruim','Azul',550.00),
(276,'+55 (11) 98765-4321',123,'bom','Joseph',12500.50),
(213,'+55 (11) 93456-7890',124,'ruim','Josuke',120.50),
(203,'+55 (11) 92111-2222',125,'ruim','Jonathan',150.50),
(243,'+55 (11) 99888-9999',126,'ruim','johnny',12.80);

select* from tb_cliente; 

drop table tb_cliente;


create table tb_produto_pedido (
	id int,
	id_pedido int,
	id_produto int,

primary key (id),
foreign key (id_pedido) references tb_pedido (id_pedido),
foreign key (id_produto) references tb_produto (id_produto)
);

insert into tb_produto_pedido (id,id_pedido,id_produto) values
(1,3,19),
(2,1,119),
(3,16,90),
(4,9,208),
(5,8,208),
(6,13,290),
(7,17,89),
(8,12,89),
(9,7,290),
(10,12,89),
(11,18,90),
(12,11,90),
(13,20,19),
(14,15,214),
(15,17,214),
(16,19,980),
(17,1,19),
(18,2,90),
(19,15,119),
(20,15,214),
(21,18,119),
(22,4,222),
(23,7,19),
(24,9,214),
(25,10,119),
(26,11,90),
(27,12,290),
(28,8,222),
(29,7,19),
(30,6,980),
(31,6,222),
(32,1,290),
(33,19,89),
(34,17,980),
(35,6,244),
(36,1,90),
(37,13,119),
(38,11,244),
(39,6,290),
(40,20,222);

select* from tb_produto_pedido; 

drop table tb_produto_pedido;


create table tb_endereco (
	id_endereco int,
	logradouro varchar(75),
	numero varchar(5),
	cidade varchar(20),

primary key (id_endereco)
);

insert into tb_endereco (id_endereco, logradouro, numero,cidade) values
(122,'rua cachoeira','656','São paulo'),
(123,'rua cachorro','793', 'São paulo'),
(124,'rua gato','213','São paulo'),
(125,'rua martha','113','Campinas'),
(126,'rua luke','198','São paulo');
	
select* from tb_endereco; 

drop table tb_endereco;