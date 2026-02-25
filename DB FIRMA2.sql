create database db_firma;
use db_firma;

drop table tb_produto;

--TABELA DE PRODUTO--
create table tb_produto(
	id_produto		int,
	nome			varchar(30),
	preco			real,
	quantidade		int,
	descricao		varchar(40),
	lote			int,
	primary key (id_produto)
);

Insert into tb_produto(id_produto,nome,preco,quantidade,descricao,lote) VALUES
(64,'miojo',12.99,15,'macarrão instantâneo',7);

select * from tb_produto; 

drop table tb_endereco

-- TABELA DE ENDEREÇO--
create table tb_endereco(
	id_endereco		int,
	logradouro		varchar(100),
	numero			int,
	cep				varchar(9),
	complemento		varchar(50)
	primary key (id_endereco)
);

Insert into tb_endereco(id_endereco,logradouro,numero,cep,complemento)VALUES
(72,'passaro','457','240 874 2','esquina');

select * from tb_endereco; 

drop table tb_Cliente;

--TABELA DE CLIENTE--
create table tb_Cliente(
	codigo_cliente	int,
	nome			varchar(100),
	telefone		varchar(14),
	id_endereco		int,
	status_Cliente	varchar(15),
	limite_Credito	float
	primary key (codigo_cliente),
	foreign key (id_endereco) references tb_endereco (id_endereco)
);

Insert into tb_Cliente(codigo_cliente,nome,telefone,id_endereco,status_Cliente,limite_Credito)VALUES
(123, 'jose','55 11 40028856',72,'ruim',0);

SELECT * FROM tb_Cliente;

