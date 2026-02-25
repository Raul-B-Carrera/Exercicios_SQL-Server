create database db_veiculo_delete;

use db_veiculo_delete

create table tb_cor(
	id_cor			int,
	descricao_cor	varchar(30),
primary key (id_cor)
);

insert into tb_cor (id_cor,descricao_cor) values
(1,'Azul turquesa'),
(2, 'Vermelho rubi'),
(3, 'Verde esmeralda'),
(4, 'Amarelo ouro'),
(5, 'Roxo ametista'),
(6, 'Laranja citrino'),
(7, 'Preto ônix'),
(8, 'Branco diamante'),
(9, 'Cinza prata'),
(10, 'Marrom topázio');


drop table tb_cor;

select * from tb_cor;


create table tb_modelo(
	id_modelo		int,
	marca_modelo	varchar(30),
	ano_modelo		date,
	descr_modelo	varchar(60),
primary key (id_modelo)
);

insert into tb_modelo (id_modelo,marca_modelo,ano_modelo,descr_modelo) values
(1,'batmovel','2010/09/23','Carro do batman bla bla bla'),
(2, 'DeLorean', '1985/10/26', 'Carro do Marty McFly em De Volta para o Futuro'),
(3, 'Ecto-1', '1984/06/08', 'Veículo de caça-ghastos em Ghostbusters'),
(4, 'KITT', '1982/09/26', 'Carro inteligente em A Super Máquina'),
(5, 'General Lee', '1969/08/19', 'Carro de corrida em Os Gatões'),
(6, 'MonkeMobile', '1966/09/12', 'Veículo dos Monkees em The Monkees'),
(7, 'Mystery Machine', '1969/09/13', 'Furgoneta da turma do Scooby-Doo'),
(8, 'Light Cycle', '1982/07/09', 'Moto de luz em Tron'),
(9, 'Turtle Van', '1987/12/11', 'Veículo dos Tartarugas Ninja'),
(10, 'Herbie', '1963/03/17', 'Fusca mágico em O Fusca Mágico');


drop table tb_modelo;

select * from tb_modelo;


create table tb_funcionario(
	id_funcionario			int,
	nome_funcionario		varchar(60),
	dt_nast_funcionario		date,
	log_funcionario			varchar(10),
	num_log					int,
	uFFuncionario			varchar(5),
	rua_funcionario			varchar(40),
	bairro_funcionario		varchar(30),
primary key (id_funcionario)
);

insert into tb_funcionario (id_funcionario,nome_funcionario,dt_nast_funcionario,log_funcionario,num_log,uFFuncionario,rua_funcionario,bairro_funcionario) values
(1,'geralt of Rivia','1321/08/30','1234567892',213,'9902','Rua das abelhas','Bairro amomongus'),
(2, 'Ciri', '1252/05/15', '9876543210', 215, '9911', 'Rua das Flores', 'Bairro Central'),
(3, 'Yennefer', '1192/02/28', '5551234567', 216, '9922', 'Rua dos Magos', 'Bairro da Montanha'),
(4, 'Tristan', '1305/11/20', '1112223333', 217, '9933', 'Rua dos Cavaleiros', 'Bairro da Fortaleza'),
(5, 'Iscalt', '1280/03/10', '4445556666', 218, '9944', 'Rua das Sombras', 'Bairro da Floresta'),
(6, 'Diamant', '1295/06/25', '7778889999', 219, '9955', 'Rua dos Tesouros', 'Bairro do Porto'),
(7, 'Eredin', '1205/01/01', '3334445555', 220, '9966', 'Rua dos Reis', 'Bairro do Castelo'),
(8, 'Avallac', '1220/09/15', '6667778888', 221, '9977', 'Rua dos Deuses', 'Bairro da Cidade Alta'),
(9, 'Cava', '1310/04/20', '9990001111', 222, '9988', 'Rua das Estrelas', 'Bairro da Lua'),
(10, 'Zireael', '1265/07/30', '2223334444', 223, '9999', 'Rua das Águias', 'Bairro da Montanha Alta');


drop table tb_funcionario;

select * from tb_funcionario;


create table tb_fone(
	id_fone			int,
	descri_fone		varchar(10),
	id_funcionario	int,
primary key (id_fone),
foreign key (id_funcionario) references tb_funcionario (id_funcionario)
);

insert into tb_fone (id_fone,descri_fone,id_funcionario) values
(1,'1198722121',1),
(2, '2345678901', 2),
(3, '3456789012', 3),
(4, '4567890123', 4),
(5, '5678901234', 5),
(6, '6789012345', 6),
(7, '7890123456', 7),
(8, '8901234567', 8),
(9, '9012345678', 9),
(10, '0123456789', 10);


drop table tb_fone;

select * from tb_fone;


create table tb_veiculo(
	id_veiculo		int,
	dia_veiculo		date,
	hora_veiculo	time,
	placa_veiculo	varchar(8),
	id_funcionario	int,
	id_modelo		int,
	id_cor			int,
primary key (id_veiculo),
foreign key (id_funcionario) references tb_funcionario (id_funcionario),
foreign key (id_modelo) references tb_modelo (id_modelo),
foreign key (id_cor) references tb_cor (id_cor)
);

insert into tb_veiculo (id_veiculo, dia_veiculo, hora_veiculo, placa_veiculo, id_funcionario, id_modelo, id_cor)
values
(1, '2031-09-21', '10:40:00', '12344568', 1, 1, 1),
(2, '2025-03-15', '08:00:00', '87654321', 2, 2, 2),
(3, '2024-07-20', '14:30:00', '23456789', 3, 3, 3),
(4, '2023-01-01', '00:00:00', '98765432', 4, 4, 4),
(5, '2022-12-31', '23:59:59', '12345678', 5, 5, 5),
(6, '2026-06-15', '12:00:00', '56789012', 6, 6, 6),
(7, '2027-09-10', '09:45:00', '89012345', 7, 7, 7),
(8, '2028-11-25', '18:30:00', '45678901', 8, 8, 8),
(9, '2029-04-01', '06:15:00', '32109876', 9, 9, 9),
(10, '2030-02-28', '20:00:00', '65432109', 10, 10, 10);


drop table tb_veiculo;

select * from tb_veiculo;