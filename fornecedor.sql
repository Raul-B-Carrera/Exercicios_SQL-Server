create database db_exercicio1;
use db_exercicio1;

create table tb_endereço(
	id				varchar(2),
	logradouro		varchar(20),
	numero			varchar(5),
	cep				varchar(10),
	estado			varchar(2),
	cidade			varchar(20)
primary key (id)
);

insert into tb_endereço (id,logradouro,numero,cep,estado,cidade) values
('F1','Av. teste','122','40256_000','BA','Salvador'),
('F1','Av. teste','112','40256_000','BA','Salvador'),
('F1','Av. teste','187','40256_000','BA','Salvador'),
('F2','Rua xx','109','40470_090','BA','Itabuna'),
('F2','Rua xx','111','40470_090','BA','Itabuna');

select * from tb_endereço;

drop table tb_endereço;


create table tb_fornecedor(
	cod_fornecedor	varchar(2),
	nome_fornecedor varchar(15),
primary key (cod_fornecedor)
);

insert into tb_fornecedor (cod_fornecedor,nome_fornecedor) values
('F1','Fornecedor 1'),
('F1','Fornecedor 1'),
('F1','Fornecedor 1'),
('F2','Fornecedor 2'),
('F2','Fornecedor 2');

select * from tb_fornecedor;

drop table tb_fornecedor;


create table tb_telefone(
	id	varchar(2),
	telefone		varchar(7),
primary key (id)
);

insert into tb_telefone (id,telefone) values
('F1','2431011'),
('F1','2431011'),
('F1','2431011'),
('F2','4560989'),
('F2','4560989'),
('F1','2431011'),
('F1','2431011'),
('F1','2431011');

select * from tb_telefone;

drop table tb_telefone;


create table tb_pecas_pedidas(
	cod_peca		varchar(2),
	nome_peca		varchar(10),
	preco_unitario	decimal(10,2),
	qtde_pedido		int,
primary key (cod_peca)
);

insert into tb_pecas_pedidas(cod_peca,cod_peca,nome_peca,preco_unitario,qtde_pedido) values
('F1','P1','peca 1',5.00,50),
('F1','P2','peca 2',7.50,30),
('F1','P3','peca 3',10.00,40),
('F2','P1','peca 1',5.00,30),
('F2','P2','peca 2',7.50,50);