create database db_exerc01;

use db_exerc01;

create table tb_funcional(
	codFuncional	int,
	cargo			varchar(30),
	salario			money,
	tempo_empresa	int,
	tempo_cargo		int,
	sindicalizado	char(3) check (sindicalizado in ('Sim', 'Não')),
	codFunc			int,
primary key (codFuncional),
foreign key (codFunc) references tb_func(codFunc)
);

insert into tb_funcional(codFuncional,cargo,salario,tempo_empresa,tempo_cargo,sindicalizado,codFunc) values
(11,'Técnico de TI',2300.00,2,2,'Sim',11),
(12,'Porteiro',4500.00,10,3,'Não',12),
(13,'Técnico de TI',2500.00,4,3,'Sim',13),
(14,'Zelador',2700.00,5,1,'Sim',14),
(15,'Estagiário',1500.00,1,1,'Não',15),
(16,'Segurança',2500.00,4,3,'Sim',16),
(17,'Cozinheiro',3500.00,8,8,'Não',17),
(18,'Consultor de RH',3000.00,4,4,'Sim',18),
(19,'CEO',30500.00,10,10,'Sim',19),
(20,'Zelador',2700.00,2,1,'não',20);

drop table tb_funcional;

select * from tb_funcional;

create table tb_func(
	codFunc			int,
	nome_func		varchar(50),
	uf				char(2),
	idade			int,
	qtde_filhos		int,
primary key (codFunc)
);

insert into tb_func(codFunc,nome_func,uf,idade,qtde_filhos) values
(11,'Shura','SP',20,0),
(12,'Dio','SP',32,1),
(13,'Blackmore','RS',40,1),
(14,'Snake','RS',34,0),
(15,'Charmer','RO',30,2),
(16,'Rainbow','SP',65,10),
(17,'Jesse','RO',31,2),
(18,'Johnny','AM',25,1),
(19,'Gyro','AM',32,0),
(20,'Luke','RS',23,0);

select * from tb_func;

drop table tb_func;

-- Consultas 

-- Soma de todos os códigos dos funcionários
select sum(codFuncional) as 'soma_código_funcionarios' from tb_funcional;

-- Soma de todas as idades dos funcionários
select sum(idade) as 'soma_idade_funcionarios' from tb_func;

-- Soma de todos os filhos dos funcionários
select sum(qtde_filhos) as 'todos_filhos_dos_funcionarios' from tb_func;

-- Soma de todos os salários dos funcionários 
select sum(salario) as 'soma_todos_salarios' from tb_funcional;

-- Soma do tempo de empresa de todos os funcionários
select sum(tempo_empresa) as 'soma_tempo_empresa' from tb_funcional;

-- Soma do tempo no cargo de todos os funcionários
select sum(tempo_cargo) as 'soma_tempo_cargo' from tb_funcional;

-- Apresente o maior código
select max(codFunc) as 'maior_codigo' from tb_func;

-- Apresente o menor código
select min(codFunc) as 'menor_codigo' from tb_func;

-- Apresente a maior idade
select max(idade) as 'maior_idade' from tb_func;

-- Apresente a menor idade
select min(idade) as 'menor_idade' from tb_func;

-- Apresentar a maior quantidade de filhos
select max(qtde_filhos) as 'A_maior_quant_de_filhos' from tb_func;

-- apresentar a menor quantidade de filhos 
select min(qtde_filhos) as 'menor_quant_de_filhos' from tb_func;

-- Apresentar o maior salario
select max(salario) as 'maior_salario' from tb_funcional;

-- Apresentar o menor salario
select min(salario) as 'menor_salario' from tb_funcional;

-- Apresentar o maior tempo de empresa
select max(tempo_empresa) as 'o_maior_tempo_de_empresa' from tb_funcional;

-- Apresentar o menor tempo de empresa
select min(tempo_empresa) as 'o_menor_tempo_de_empresa' from tb_funcional;

-- Apresentar o maior tempo no cargo
select max(tempo_cargo) as 'maior_tempo_cargo' from  tb_funcional;

-- Apresentar o menor tempo no cargo
select min(tempo_cargo) as 'menor_tempo_cargo' from  tb_funcional;

-- Apresentar a media de todos os codigos dos funcionarioss
select avg (codFunc) as 'media_de_todos_os_codigos' from tb_func;

-- Apresentar a media de idade dos funcionarios
select avg (idade) as 'media_idade_dos_funcionarios' from tb_func;

-- Apresentar a media de filhos dos funcionarios
select avg (qtde_filhos) as 'media_de_filhos_dos_funcionarios' from tb_func;

-- Apresentar a media dos salarios
select avg (salario) as 'media_de_salarios' from tb_funcional;

-- Apresentar a media de tempo dos funcionarios na empresa 
select avg (tempo_empresa) as 'media_de_tempo_dos_funcionarios_na_empresa' from tb_funcional;

-- Apresentar a media do tempo de cargo dos funcionarios
select avg (tempo_cargo) as 'media_do_tempo_de_cargo' from tb_funcional;

-- Apresentar a quantidade de funcionarios que ganhan mais de 800 reais
select count(codFuncional) as 'quant_de_funcionarios_que_ganham_mais_de_800' from tb_funcional where salario > 800;

-- Apresentar a quantidade de funcionarios que ganhan mais de 1000 reais
select count(codFuncional) as 'quant_de_funcionarios_que_ganham_mais_de_1000' from tb_funcional where salario > 1000;

-- Apresentar a quantidade de funcionarios que ganhan menos de 400 reais
select count(codFuncional) as 'quant_de_funcionarios_que_ganham_menos_de_400' from tb_funcional where salario < 400;

-- Apresentar a quantidade de funcionarios que ganhan menos de 2000 reais
select count(codFuncional) as 'quant_de_funcionarios_que_ganham_menos_de_2000' from tb_funcional where salario < 2000;

-- Apresentar a quantidade de funcionarios que ganhan mais de 8000 reais
select count(codFuncional) as 'quant_de_funcionarios_que_ganham_mais_de_8000' from tb_funcional where salario > 8000;

-- Apresentar a quantidade de funcionarios que ganhan menos de 1000 reais
select count(codFuncional) as 'quant_de_funcionarios_que_ganham_menos_de_1000' from tb_funcional where salario < 1000;




