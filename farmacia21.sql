create database db_farmacia;

use db_farmacia;

create table tb_pessoa( 
	id_pessoa		int,
	nome			varchar(50),
	cpf				varchar(11),
	telefone		varchar(11),
	endereco		varchar(60),
	email			varchar(50),
primary key (id_pessoa)
);

insert into tb_pessoa(id_pessoa,nome,cpf,telefone,endereco,email) values
(1, 'Amongus', '39473330057', '1235077834', 'Rua Pizza n°300', 'amongusgus00@gmail.com'),
(2, 'João Silva', '12345678901', '11987654321', 'Av. Brasil n°150', 'joaosilva@gmail.com'),
(3, 'Maria Souza', '98765432100', '21999887766', 'Rua das Flores n°45', 'mariasouza@hotmail.com'),
(4, 'Pedro Henrique', '32165498700', '31988776655', 'Rua do Sol n°200', 'pedro.henrique@yahoo.com'),
(5, 'Ana Clara', '45678912377', '11976543210', 'Rua Verde n°10', 'ana.clara@gmail.com'),
(6, 'Lucas Oliveira', '78912345688', '21977665544', 'Av. Central n°500', 'lucasoliveira@outlook.com'),
(7, 'Fernanda Lima', '85274196333', '31966554433', 'Rua da Paz n°90', 'fernanda.lima@gmail.com'),
(8, 'Carlos Eduardo', '96385274122', '11985476321', 'Rua das Árvores n°37', 'carlos.eduardo@gmail.com'),
(9, 'Juliana Alves', '74196385244', '21999889977', 'Travessa Azul n°21', 'julialves@yahoo.com'),
(10, 'Mateus Rocha', '15935748620', '31977668855', 'Av. Atlântica n°12', 'mateus.rocha@hotmail.com');

drop table tb_pessoa;



create table tb_medicamento(
	id_medicamento		int,
	nome				varchar(35),
	descricao			varchar(60),
	lote				int,
	validade			date,
	qtd_disponivel		int,
primary key (id_medicamento)
);

insert into tb_medicamento(id_medicamento,nome,descricao,lote,validade,qtd_disponivel) values
(1, 'Omeprazol', 'Reduz a acidez estomacal.', 1231, '10-09-29', 50),
(2, 'Paracetamol', 'Analgésico e antitérmico.', 1232, '11-09-26', 100),
(3, 'Ibuprofeno', 'Anti-inflamatório não esteroide.', 1233, '12-09-29', 5),
(4, 'Amoxicilina', 'Antibiótico para infecções bacterianas.', 1234, '13-09-25', 9),
(5, 'Loratadina', 'Antialérgico para rinite e urticária.', 1235, '14-09-25', 20),
(6, 'Losartana', 'Controla a pressão arterial.', 1236, '15-09-25', 10),
(7, 'Sinvastatina', 'Reduz o colesterol no sangue.', 1237, '16-09-25', 30),
(8, 'Cetoconazol', 'Antifúngico para pele e couro cabeludo.', 1238, '17-09-29', 25),
(9, 'Dipirona', 'Analgésico e antipirético potente.', 1239, '18-09-25', 9),
(10,'Azitromicina', 'Antibiótico de amplo espectro.', 1240, '19-09-25', 8);

drop table tb_medicamento;



create table tb_funcionario(
	id_funcionario		int,
	login_funcionario	int,
	senha				varchar(10),
	tipo				varchar(25),
primary key (id_funcionario)
);

insert into tb_funcionario(id_funcionario,login_funcionario,senha,tipo) values
(1,123456,'Abebabibun','Atendente'),
(2,234567,'ananab','Recepcionista'),

drop table tb_funcionario;


create table tb_cliente (
	id_cliente     int,
	id_pessoa	   int,
	endereco	   varchar(50),
	cartao_sus     varchar(10),
primary key (id_cliente),
foreign key (id_pessoa) references tb_pessoa(id_pessoa)
);

insert into tb_cliente (id_cliente,id_pessoa,endereco,cartao_sus) values 
(1,1,'Rua Passaro nº200','7562354'),
(2,2,'Rua das Palmeiras nº45','7562389'),
(3,3,'Rua dos Lírios nº102','7562471'),
(4,4,'Rua Beija-flor nº88','7561983'),
(5,5,'Avenida Central nº310','7563105'),
(6,6,'Rua Ipê Roxo nº27','7562247'),
(7,7,'Rua dos Jasmins nº59','7562958'),
(8,8,'Travessa das Acácias nº14','7564022'),
(9,9,'Rua Araucária nº33','7561876'),
(10,10,'Rua das Andorinhas nº120','7563590');


drop table tb_cliente;


create table tb_retirada (
	id_retirada		int,
	qtd_retirada	int,
	data_retirada	date,
	id_cliente		int,
primary key (id_retirada),
foreign key (id_cliente) references tb_cliente(id_cliente)
);

insert into tb_retirada (id_retirada,qtd_retirada,data_retirada,id_cliente ) values
(1, 40, '25-06-12', 9),
(2, 40, '25-06-18', 8),
(3, 43, '25-06-24', 8),
(4, 39, '25-07-02', 8),
(5, 42, '25-05-29', 9),
(6, 37, '25-07-08', 5),
(7, 46, '25-07-15', 4),
(8, 38, '25-07-22', 6),
(9, 45, '25-06-05', 6),
(10, 44, '25-07-27', 6),
(11, 41, '25-06-10', 6),
(12, 47, '25-07-30', 4),
(13, 40, '25-08-02', 4),
(14, 39, '25-06-15', 4),
(15, 43, '25-08-06', 4),
(16, 48, '25-08-10', 4),
(17, 42, '25-06-20', 6),
(18, 36, '25-05-23', 4),
(19, 49, '25-08-14', 4),
(20, 45, '25-08-17', 8),
(21, 50, '25-08-22', 5),
(22, 38, '25-08-26', 5),
(23, 41, '25-06-28', 5),
(24, 44, '25-08-30', 5),
(25, 39, '25-09-03', 5),
(26, 46, '25-09-06', 6),
(27, 40, '25-09-10', 7),
(28, 47, '25-09-13', 7),
(29, 43, '25-09-17', 7),
(30, 42, '25-09-21', 7),
(31, 48, '25-09-25', 9),
(32, 37, '25-09-28', 1),
(33, 49, '25-10-02', 1),
(34, 38, '25-10-06', 1),
(35, 50, '25-10-10', 1),
(36, 45, '25-10-13', 1),
(37, 41, '25-10-17', 1),
(38, 39, '25-10-21', 2),
(39, 46, '25-10-25', 2),
(40, 44, '25-10-29', 2);

drop table tb_retirada;

create table tb_retirada_funcionario(
	id_retirada		int,
	qtd_retirada	int,
	data_retirada	date,
	id_funcionario	int,
primary key (id_retirada),
foreign key (id_funcionario) references tb_funcionario(id_funcionario)
);

insert into tb_retirada_funcionario(id_retirada,qtd_retirada,data_retirada,id_funcionario) values
(1,40,'25-06-12',1),
(2,41,'25-06-13',1),
(3,42,'25-06-14',2),
(4,43,'25-06-15',1),
(5,44,'25-06-16',1),
(6,45,'25-06-17',1),
(7,46,'25-06-18',2),
(8,47,'25-06-19',2),
(9,48,'25-06-20',2),
(10,49,'25-06-21',1),
(11, 50, '25-06-22',1),
(12, 39, '25-06-23',2),
(13, 38, '25-06-24',2),
(14, 37, '25-06-25',2),
(15, 36, '25-06-26',2),
(16, 35, '25-06-27',2),
(17, 34, '25-06-28',2),
(18, 33, '25-06-29',2),
(19, 32, '25-06-30',2),
(20, 31, '25-07-01',2),
(21, 30, '25-07-02',2),
(22, 29, '25-07-03',2),
(23, 28, '25-07-04',2),
(24, 27, '25-07-05',2),
(25, 26, '25-07-06',2),
(26, 25, '25-07-07',2),
(27, 24, '25-07-08',2),
(28, 23, '25-07-09',2),
(29, 22, '25-07-10',2),
(30, 21, '25-07-11',2);

drop table tb_retirada_funcionario;


-- Consultas

-- Como selecionar todos os dados dos clientes cadastrados na tabela Cliente?
select * from tb_cliente;

-- Como selecionar todas as informações dos funcionários na tabela Funcionario?
select * from tb_funcionario;

-- Como listar todos os medicamentos cadastrados na tabela Medicamento?
select * from tb_medicamento;

-- Como selecionar o nome e CPF de todos os clientes que realizaram retiradas de medicamentos?
select distinct nome,cpf from tb_pessoa
where id_pessoa in (
	select id_cliente from tb_retirada
);

-- Como calcular a quantidade total de medicamentos retirados por um cliente específico, considerando o CPF dele?
select sum (qtd_retirada) as 'total_retirada' from tb_retirada
where id_cliente in (
	select id_pessoa from tb_pessoa
	where cpf = '39473330057'
);

-- Como listar todos os medicamentos retirados por um cliente com base no CPF do cliente
select count (id_retirada) as 'total_retirada' from tb_retirada
where id_cliente in (
	select id_pessoa from tb_pessoa
	where cpf = '39473330057'
);

-- Como selecionar o nome dos clientes que retiraram medicamentos mais de 5 vezes?
select nome from tb_pessoa
where (
	select count (id_retirada) from tb_retirada
	where id_cliente = tb_pessoa.id_pessoa
) > 5;

-- Como listar todos os medicamentos com validade superior a 1 ano?
select * from tb_medicamento
where validade > '26/10/2026';

-- Como selecionar a descrição e o nome dos medicamentos que possuem a quantidade disponível abaixo de 10 unidades?
select descricao,nome from tb_medicamento
where qtd_disponivel < 10;

-- Como selecionar os funcionários que realizaram mais de 10 registros de retirada de medicamentos?
select distinct * from tb_funcionario
where(
select count (id_retirada) from tb_retirada_funcionario
where tb_retirada_funcionario.id_funcionario = tb_funcionario.id_funcionario 
) > 10;

-- Como atualizar o endereço de um cliente específico usando seu CPF?
update tb_cliente set endereco = 'Endereço novo'
where id_pessoa = (
    select id_pessoa from tb_pessoa
    where cpf = '39473330057'
);

-- Como atualizar o login de um funcionário em particular, utilizando seu ID de funcionário?
update tb_funcionario set login_funcionario = 09910
where id_funcionario = 1;

-- Como modificar a quantidade disponível de um medicamento para 50 unidades?
update tb_medicamento set qtd_disponivel = 50
where id_medicamento = 2;

-- Como alterar a senha de um funcionário, considerando seu ID de funcionário?
update tb_funcionario set senha = 'Lego00'
where id_funcionario = 1;

-- Como atualizar a quantidade retirada de um medicamento por um cliente específico em uma retirada registrada?
update tb_retirada set qtd_retirada = 100
where id_cliente = 8;

-- Como excluir um cliente da tabela Cliente, considerando seu CPF?
delete from tb_cliente
where id_cliente in (
	select id_pessoa from tb_pessoa
	where cpf = '39473330057'
);

-- Como excluir um medicamento que não está mais disponível, baseado no nome do medicamento?
delete from tb_medicamento 
where nome = 'Omeprazol';

-- Como remover todos os registros de retiradas realizadas por um cliente específico?
delete from tb_retirada
where id_cliente = 7;

-- Como excluir um funcionário da tabela Funcionario, considerando seu ID?
delete from tb_funcionario
where id_funcionario = 1;

-- Como apagar uma retirada registrada de medicamento, utilizando o ID de retirada?
delete from tb_retirada
where id_retirada = 17;

-- Como inserir um novo cliente na tabela Cliente, fornecendo todos os dados necessários, como nome, CPF e endereço?

insert into tb_cliente (id_cliente, id_pessoa, endereco, cartao_sus)
values (11, 3, 'rua nova, 123 - centro', '7896541230');


-- Como inserir um novo funcionário na tabela Funcionario, fornecendo todos os dados necessários, como nome, login e senha?


insert into tb_funcionario (id_funcionario, login_funcionario, senha, tipo)
values (3, 456789, 'senha123', 'atendente');

-- Como adicionar um novo medicamento na tabela Medicamento, informando descrição, validade, quantidade disponível e lote?

insert into tb_medicamento (id_medicamento, nome, descricao, lote, validade, qtd_disponivel)
values (11, 'dipirona 500mg', 'analgésico e antitérmico', 1254, '2026-12-31', 250);


-- Como registrar uma nova retirada de medicamento feita por um cliente, incluindo o CPF do cliente, a data e a quantidade retirada?

insert into tb_retirada (id_retirada, qtd_retirada, data_retirada, id_cliente)
values (41, 20, '2025-10-27', 5);


-- Como inserir um novo relacionamento entre Cliente e Retirada, associando um cliente a uma retirada específica de medicamento?

insert into tb_retirada (id_retirada, qtd_retirada, data_retirada, id_cliente)
values (42, 10, '2025-10-27', 5);


-- Como calcular a quantidade total de medicamentos retirados por todos os clientes, agrupados por medicamento?

select id_medicamento, sum(qtd_retirada) as total_retirado
from tb_retirada
group by id_medicamento;


-- Como contar o número de retiradas realizadas por cada cliente?

select id_cliente, count(*) as total_retiradas
from tb_retirada
group by id_cliente;


-- Como calcular a quantidade total de medicamentos retirados em um determinado mês?

select sum(qtd_retirada) as total_mes
from tb_retirada
where data_retirada >= '2025-10-01' and data_retirada <= '2025-10-31';


-- Como calcular a média de medicamentos retirados por cliente em todas as retiradas registradas?

select avg(qtd_retirada) as media_por_cliente
from tb_retirada;


-- Como encontrar o cliente que retirou a maior quantidade de medicamentos, utilizando a soma da quantidade de retiradas?

select id_cliente, sum(qtd_retirada) as total_retirado
from tb_retirada
group by id_cliente
having sum(qtd_retirada) = (
select max(total_retirado)from (select sum(qtd_retirada) as total_retirado, id_cliente
from tb_retirada
group by id_cliente
    ) as sub
);


-- Como calcular a quantidade total de medicamentos retirados por todos os clientes, agrupados por mês?

select (select sum(qtd_retirada) 
from tb_retirada 
where data_retirada >= '2025-10-01' 
and data_retirada <= '2025-10-31') as total_outubro;



-- Como encontrar o medicamento que foi retirado em maior quantidade no sistema?

select top 1 id_medicamento, sum(qtd_retirada) as total
from tb_retirada
group by id_medicamento
order by total desc;


-- Como calcular a média de medicamentos retirados por funcionário?

select id_funcionario, avg(qtd_retirada) as media_retirada
from tb_retirada_funcionario
group by id_funcionario;


-- Como contar o número de retiradas feitas por cada medicamento?

select id_medicamento, count(*) as num_retiradas
from tb_retirada
group by id_medicamento;


-- Como calcular o total de medicamentos retirados por cada cliente, considerando apenas as retiradas que ocorreram nos últimos 30 dias?
select id_cliente, sum(qtd_retirada) as total_30dias
from tb_retirada
where data_retirada >= '2025-09-27'
group by id_cliente;


-- Como calcular a soma de todas as quantidades retiradas de medicamentos por todos os clientes no último semestre?
select sum(qtd_retirada) as total_semestre
from tb_retirada
where data_retirada >= '2025-04-27';


-- Como calcular a quantidade média de medicamentos retirados por cliente por mês?

select id_cliente, avg(qtd_retirada) as media_mensal
from tb_retirada
where data_retirada >= '2025-10-01' and data_retirada <= '2025-10-31'
group by id_cliente;


-- Como calcular o número total de clientes que retiraram medicamentos em cada mês?

select count(distinct id_cliente) as numero_clientes
from tb_retirada
where data_retirada >= '2025-10-01' and data_retirada <= '2025-10-31';



-- Como encontrar o cliente que retirou a maior quantidade de medicamentos em um único dia?

select id_cliente, data_retirada, qtd_retirada as maior_retirada
from tb_retirada
where qtd_retirada = (select max(qtd_retirada) from tb_retirada);


-- Como calcular a quantidade total de medicamentos retirados por cada tipo de funcionário (considerando o tipo de funcionário na tabela Funcionario)?

select tipo,
(select sum(qtd_retirada)
from tb_retirada_funcionario
where tb_retirada_funcionario.id_funcionario = tb_funcionario.id_funcionario) as total_por_tipo
from tb_funcionario
group by tipo;