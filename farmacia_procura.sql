create database db_farmacia_procura;

use db_farmacia_procura;

create table tb_farmacia(
	cnpj		varchar(18),
	endereco	varchar(40),
	nome		varchar(30),
	telefone	varchar(13),
primary key (cnpj)
);

insert into tb_farmacia(cnpj, endereco, nome, telefone) values
('17.692.849/0001-76', 'China','Auramax','83988213670'),
('17.692.849/0333-13', 'Eslovaquia','Bloody','83988213212'),
('17.692.821/0001-76', 'China','Amongus','83988213222'),
('17.692.849/0031-01', 'Tailandia','67...','83988213130'),
('17.692.849/0021-22', 'China','Mango','83988213002');

drop table tb_farmacia;


create table tb_farmaceutico(
	rg						varchar(9),
	nome					varchar(30),
	data_nascimento			date,
	telefone				varchar(15),
	genero					varchar(9),
	salario					decimal(10,2),
	numero_dependentes		int,
	data_contratacao		date,
primary key (rg)
);

insert into tb_farmaceutico (rg, nome, data_nascimento, telefone, genero, salario, numero_dependentes, data_contratacao) values
('126543501','Hydra','12/06/1954','(11)97545-5586','feminino',6000.0,2,'23/09/2025'),
('126543214','Eivor','14/12/1980','(11)97545-5221','masculino',4100.00,0,'24/09/1973'),
('126542114','Diddy','14/02/1910','(11)97313-5221','masculino',4250.50,3,'12/09/1970'),
('121243214','Camis','10/11/1903','(11)97125-5221','feminino',5150.00,0,'21/02/1979'),
('126531244','Siegird','20/12/1932','(11)97545-6331','masculino',10500.00,10,'20/10/1970'),
('091543214','Bison','24/02/1830','(11)97545-5134','feminino',1200.00,1,'22/09/1910'),
('126543892','Dieter','01/12/1910','(11)97888-5221','masculino',2300.00,4,'11/10/1930'),
('126214091','Dusk','13/09/1910','(11)10545-5221','feminino',4500.00,1,'24/09/1990'),
('126543000','Ivarr','12/10/1950','(11)97520-5221','masculino',5000.00,0,'24/10/1910'),
('231444223','Rodin','11/10/1991','(11)97515-9002','feminino',4500.00,1,'14/02/1211'),
('126509041','Liebert','12/02/2004','(11)97545-3121','masculino',10000.00,21,'11/10/1923'),
('126540001','Silver','14/10/2013','(11)97545-5000','masculino',9200.00,10,'02/01/1923');

drop table tb_farmaceutico;


create table tb_produto(
	codigo					int,
	nome					varchar(30),
	descricao				varchar(60),
	preco					decimal(10,2),
	percentual_de_lucro		decimal(10,0),
primary key (codigo)
);

insert into tb_produto (codigo, nome, descricao, preco, percentual_de_lucro) values
(1,'Espada','Pedaço de metal preso em pedaço de madeira',10.20,10),
(2,'Bracelete amongus','Bracelet de couro e metal no emblema',40.20,12),
(3,'Escudo','Pedaço de madeira com bordas de ferro para defender',212.20,95),
(4,'TV','Metal com plastico e que mostra coisas usando pixels',122.50,10),
(5,'Vara de pesca','Haste de aluminio com linha de nailon',42.31,3),
(6,'Celular','aparelho pequeno com pixels',10.20,10),
(7, 'Tablet', 'aparelho portátil com tela', 20.50, 15),
(8, 'Smartwatch', 'relógio inteligente com notificações', 5.80, 5),
(9, 'Fone de ouvido', 'acessorio para ouvir música', 3.20, 8),
(10, 'Câmera', 'aparelho para capturar imagens', 15.00, 12),
(11, 'Carregador', 'acessorio para carregar bateria', 2.50, 10),
(12, 'Power Bank', 'bateria portátil para carregar dispositivos', 10.00, 18),
(13, 'Caixa de Som', 'acessorio para reproduzir áudio', 8.00, 12),
(14, 'Microfone', 'acessorio para capturar áudio', 4.00, 8),
(15, 'Webcam', 'acessorio para capturar vídeo', 6.00, 10),
(16, 'Teclado', 'acessorio para digitar', 5.00, 5),
(17, 'Mouse', 'acessorio para navegar', 3.00, 8),
(18, 'Monitor', 'aparelho para exibir imagens', 25.00, 15),
(19, 'Impressora', 'aparelho para imprimir documentos', 18.00, 12),
(20, 'Scanner', 'aparelho para digitalizar documentos', 12.00, 22);

drop table tb_produto;

-- Consultas

-- Todas farmacias
select * from tb_farmacia;

-- Todos produtos
select * from tb_produto;

-- Todos farmaceuticos
select * from tb_farmaceutico;

-- Todos farmaceuticos do sexo feminino
select * from tb_farmaceutico
where genero = 'feminino';

-- Todos os farmacêuticos que ingressaram antes de jan de 2024
select * from tb_farmaceutico
where data_contratacao <= '01/01/2024';

-- Todos os farmacêuticos do sexo masculino
select * from tb_farmaceutico
where genero = 'masculino';

-- Todos os farmacêuticos acima de 40 anos de idade
select * from tb_farmaceutico
where data_nascimento <= '01/01/1985';

-- Todos os farmacêuticos entre 20 e 35 anos do sexo masculino
select * from tb_farmaceutico
where data_nascimento <= '01/01/2005' and data_nascimento >= '01/01/1990' and genero = 'masculino';

-- Todos os farmacêuticos do sexo feminino maiores de 35 anos
select * from tb_farmaceutico
where data_nascimento <= '01/01/1990';

-- Os produtos cujo preço de venda está acima de R$20,00
select * from tb_produto
where preco > 20.00;

-- Os produtos cujo percentual de lucratividade está acima de 20%
select * from tb_produto
where percentual_de_lucro > 20;

-- Produtos cujo percentual de lucro está cima de 50% e o preço de venda acima de R$100,00
select * from tb_produto
where percentual_de_lucro > 50 and preco > 100;