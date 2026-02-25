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

select * from tb_pessoa;

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
(1, 'Omeprazol', 'Reduz a acidez estomacal.', 1231, '10-09-21', 50),
(2, 'Paracetamol', 'Analgésico e antitérmico.', 1232, '11-09-21', 100),
(3, 'Ibuprofeno', 'Anti-inflamatório não esteroide.', 1233, '12-09-21', 75),
(4, 'Amoxicilina', 'Antibiótico para infecções bacterianas.', 1234, '13-09-21', 60),
(5, 'Loratadina', 'Antialérgico para rinite e urticária.', 1235, '14-09-21', 40),
(6, 'Losartana', 'Controla a pressão arterial.', 1236, '15-09-21', 90),
(7, 'Sinvastatina', 'Reduz o colesterol no sangue.', 1237, '16-09-21', 30),
(8, 'Cetoconazol', 'Antifúngico para pele e couro cabeludo.', 1238, '17-09-21', 25),
(9, 'Dipirona', 'Analgésico e antipirético potente.', 1239, '18-09-21', 120),
(10, 'Azitromicina', 'Antibiótico de amplo espectro.', 1240, '19-09-21', 45);

drop table tb_medicamento;

select * from tb_medicamento;


create table tb_funcionario(
	id_funcionario		int,
	login_funcionario	int,
	senha				varchar(10),
	tipo				varchar(25),
primary key (id_funcionario)
);

insert into tb_funcionario(id_funcionario,login_funcionario,senha,tipo) values
(1, 123456, 'Abebabibun', 'Atendente'),
(2, 234567, 'ananab', 'Recepcionista');

drop table tb_funcionario;

select * from tb_funcionario;

create table tb_cliente (
	id_cliente     int,
	cartao_sus     varchar(10),
primary key (id_cliente)
);

insert into tb_cliente (id_cliente, cartao_sus) values 
(1, '7562354'),
(2, '7562389'),
(3, '7562471'),
(4, '7561983'),
(5, '7563105'),
(6, '7562247'),
(7, '7562958'),
(8, '7564022'),
(9, '7561876'),
(10, '7563590');

drop table tb_cliente;

select * from tb_cliente;

create table tb_retirada (
	id_retirada		int,
	qtd_retirada	varchar(100),
	data_retirada	date,
	cpf_cliente		varchar(20),
primary key (id_retirada)
);

insert into tb_retirada (id_retirada, qtd_retirada, data_retirada, cpf_cliente ) values
(1,'40','2025-06-12','124356476'),
(2,'41','2025-06-18','124359882'),
(3,'43','2025-06-24','124362115'),
(4,'39','2025-07-02','124367409'),
(5,'42','2025-05-29','124351990'),
(6,'37','2025-07-08','124370084'),
(7,'46','2025-07-15','124373522'),
(8,'38','2025-07-22','124376994'),
(9,'45','2025-06-05','124355701'),
(10,'44','2025-07-27','124379328'),
(11,'41','2025-06-10','124357934'),
(12,'47','2025-07-30','124381590'),
(13,'40','2025-08-02','124384012'),
(14,'39','2025-06-15','124359101'),
(15,'43','2025-08-06','124386447'),
(16,'48','2025-08-10','124389765'),
(17,'42','2025-06-20','124361304'),
(18,'36','2025-05-23','124348902'),
(19,'49','2025-08-14','124392811'),
(20,'45','2025-08-17','124394226'),
(21,'50','2025-08-22','124396940'),
(22,'38','2025-08-26','124398122'),
(23,'41','2025-06-28','124364010'),
(24,'44','2025-08-30','124401774'),
(25,'39','2025-09-03','124403155'),
(26,'46','2025-09-06','124405590'),
(27,'40','2025-09-10','124407832'),
(28,'47','2025-09-13','124410199'),
(29,'43','2025-09-17','124412521'),
(30,'42','2025-09-21','124414893'),
(31,'48','2025-09-25','124417002'),
(32,'37','2025-09-28','124419105'),
(33,'49','2025-10-02','124421550'),
(34,'38','2025-10-06','124423674'),
(35,'50','2025-10-10','124426091'),
(36,'45','2025-10-13','124428506'),
(37,'41','2025-10-17','124430994'),
(38,'39','2025-10-21','124433207'),
(39,'46','2025-10-25','124435601'),
(40,'44','2025-10-29','124438022');

drop table tb_retirada;

select * from tb_retirada;
