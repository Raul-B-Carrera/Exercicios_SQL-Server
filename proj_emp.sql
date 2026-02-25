create database db_empresa;

use db_empresa;

create table tb_projeto(
	cod_projeto		varchar(6),
	tipo			varchar(20),
	descricao		varchar(40),
primary key (cod_projeto)
);

insert into tb_projeto (cod_projeto,tipo,descricao) values
('LSC001','Novo Desenv.','Sistema de Estoque'),
('PAG02','Manutenção','Sistema de RH'),
('PO213','Manutenção','Sistema de PI (Pássáros Inteligentes)'),
('PWEG02','Novo Desenv.','Sistema de Amizade'),
('PAY021','Novo Desenv.','Sistema de Inimizade'),
('PAG212','Manutenção','Sistema de Amizade'),
('PAG302','Manutenção','Sistema de Inimizade'),
('QSG021','Novo Desenv.','Sistema de Amongus'),
('QS3921','Manutenção.','Sistema de Amongus'),
('ASSG21','Novo Desenv.','Sistema de Gatos');

select * from tb_projeto;

drop table tb_projeto;


create table tb_funcionario(
	cod_empresa		int,
	primeiro_nome	varchar(20),
	ultimo_nome		varchar(30),
	cat				varchar(2),
	datal_ni		date,
	sal				int,
	temp_ai			int,
primary key (cod_empresa)
);

insert into tb_funcionario (cod_empresa,primeiro_nome,ultimo_nome,cat,datal_ni,sal,temp_ai) values
(2146,'João','Pereira','A1','01-11-1991',4,24),
(3145,'Sílvio','Joaquim','A2','2-10-91',4,24),
(6128,'José','Amongus','B1','3-10-92',9,18),
(1214,'Carlos','Barbosa','A2','4-10-92',4,18),
(8191,'Mário','Moreira','A1','1-11-92',4,12),
(8002,'Carmelita','Hold','A9','10-12-80',2,21),
(8092,'Warren','Zevon','A9','12-08-80',2,21),
(9002,'Rick','Astley','C6','17-10-82',9,22),
(8102,'Billy','Idol','B1','09-09-82',2,21),
(1902,'Connor','Macleod','A8','14-11-89',10,21);

select * from tb_funcionario;

drop table tb_funcionario;


