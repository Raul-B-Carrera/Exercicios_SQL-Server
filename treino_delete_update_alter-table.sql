create database db_treino_update;

use db_treino_update;

create table tb_produto(
	id_produto		int,
	fornecedor		varchar(30),
	custo_unitario	decimal(10,2),
	quantidade		int,
	custo_total		decimal(10,2),
primary key (id_produto)
);

insert into tb_produto(id_produto,fornecedor,custo_unitario,quantidade,custo_total) values
(1,'Fornecedor1',200.00,30,6000.00),
(2,'Fornecedor1',100.00,50,5000.00),
(3,'Fornecedor1',50.00,50,2500.00),
(4,'Fornecedor1',10.00,100,1000.00),
(5,'Fornecedor1',150.00,20,3000.00),
(6,'Fornecedor1',250.00,2,500.00),
(7,'Fornecedor1',300.00,5,1500.00);

drop table tb_produto;

select * from tb_produto;


alter table tb_produto drop column custo_total;

alter table tb_produto add nome_produto varchar(30), percentual_lucro int;

UPDATE tb_produto
SET nome_produto = 'Minus', percentual_lucro = 200
WHERE id_produto = 2;

update tb_produto
set nome_produto = 'Jake', percentual_Lucro = 100
where id_produto = 1;

update tb_produto
set quantidade = 50
where id_produto  = 1;

update tb_produto
set quantidade = 80
where id_produto = 4;

delete from tb_produto
where id_produto = 6;

delete from tb_produto
where id_produto = 7;

