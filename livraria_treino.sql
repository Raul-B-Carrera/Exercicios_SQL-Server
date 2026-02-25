create database db_livraria_treino1;

use db_livraria_treino1;

create table tb_endereco(
	id				int,
	rua				varchar(30),
	numero			varchar(5),
	complemento		varchar(50),
	cep				varchar(10),
	cidade			varchar(20),
	estado			varchar(20),
primary key (id)
);

insert into tb_endereco(id,rua,numero,complemento,cep,cidade,estado) values
(1,'Rua amongus 22','663','apt 21','19213','Morioh','Midgar'),
(2,'Avenida Kujo 45','123','casa 3','54321','Tokyo','Japao'),
(3,'Rua do Sol 789','456','loja 1','98765','Rio de Janeiro','Brasil'),
(4,'Calle de la Mafia 101','321','2º andar','13579','Neopolis','Italia'),
(5,'Boulevard Bucciarati 54','987','bloco B','24680','Veneza','Italia');

select * from tb_endereco;

drop table tb_endereco;


create table tb_pessoa_fisica(
	id		int,
	rg		varchar(11),
	cpf		varchar(12),
primary key (id)
);

insert into tb_pessoa_fisica(id,rg,cpf) values
(1,'222918','020909389'),
(2,'333444','111222333'),
(3,'555666','444777888'),
(4,'999000','777888999'),
(5,'123456','654321789');

select * from tb_pessoa_fisica;

drop table tb_pessoa_fisica;


create table tb_pessoa_juridica(
	id		int,
	ie		varchar(30),
	cnpj	varchar(15),
primary key (id)
);

insert into tb_pessoa_juridica(id,ie,cnpj) values
(1,'lalaal92u93','128912331'),
(2,'jojo123abc','456789012'),
(3,'standproud34','987654321'),
(4,'giornogovanna5','543210987'),
(5,'jotaro_kujo7','876543210');

select * from tb_pessoa_juridica;

drop table tb_pessoa_juridica;


create table tb_editora(
	codigo_editora		int,
	nome				varchar(30),
	contato				varchar(30),
	email				varchar(50),
	telefone_editora	varchar(11),
primary key (codigo_editora)
);

insert into tb_editora(codigo_editora,nome,contato,email,telefone_editora) values
(1,'Shura livros','Amigavel','shuralivros@gmail.com','12903904'),
(2,'LocaLivros','Entrega Rapida','localivros@gmail.com','54321098'),
(3,'Livros & Cia','Profissional','livroscia@gmail.com','76543210'),
(4,'Leia Mais','Atencioso','leiamais@gmail.com','98765432'),
(5,'Papelaria JP','Educativo','papelariajp@gmail.com','21098765');

select * from tb_editora;

drop table tb_editora;


create table tb_pedido(
	codigo_pedido		int,
	data_pedido			date,
	valor_pedido		money,
	id_cliente			int,
primary key (codigo_pedido),
foreign key (id_cliente) references tb_cliente (codigo_cliente) 
);

insert into tb_pedido(codigo_pedido,data_pedido,valor_pedido,id_cliente) values
(1, '1999-12-01', 19.20, 1),
(2, '2020-08-15', 50.50, 2),
(3, '2018-03-23', 30.00, 3),
(4, '2022-10-10', 15.75, 4),
(5, '2021-05-05', 25.90, 5),
(6, '2023-01-20', 40.00, 1),
(7, '2019-02-12', 18.50, 2),
(8, '2021-04-25', 22.00, 3),
(9, '2020-06-30', 35.75, 4),
(10, '2017-09-08', 12.30, 5),
(11, '2022-11-15', 28.90, 1),
(12, '2018-01-02', 19.99, 2),
(13, '2023-03-18', 45.50, 3),
(14, '2019-05-22', 20.00, 4),
(15, '2021-07-10', 38.75, 5),
(16, '2020-10-05', 16.50, 1),
(17, '2018-02-28', 29.90, 2),
(18, '2022-12-12', 50.00, 3),
(19, '2019-04-03', 14.99, 4),
(20, '2021-06-17', 26.50, 5);

select * from tb_pedido;

drop table tb_pedido;


create table tb_cliente(
	codigo_cliente	int,
	telefone		varchar(11),
	nome			varchar(30),
    email			varchar(50),
	endereco		int,
	pessoa_fisica	int,
	pessoa_juridica	int
primary key (codigo_cliente),
foreign key (endereco) references tb_endereco (id),
foreign key (pessoa_fisica) references tb_pessoa_fisica (id),
foreign key (pessoa_juridica) references tb_pessoa_juridica (id)
);

insert into tb_cliente(codigo_cliente,telefone,nome,email,endereco,pessoa_fisica,pessoa_juridica) values
(1,'1021923122','Johnny Joestar','johnnyjoestar@gmail.com',1,1,1),
(2,'4536789012','Jotaro Kujo','jotarokujo@gmail.com',2,2,2),
(3,'7890123456','Diosama','diosama@gmail.com',3,3,3),
(4,'3210987654','Giorno Giovanna','giornogiovanna@gmail.com',4,4,4),
(5,'5678901234','Bruno Bucciarati','brunobucciarati@gmail.com',5,5,5);

select * from tb_cliente;

drop table tb_cliente;


create table tb_livro(
	codigo_livro	int,
	nome_livro		varchar(50),
	autor			varchar(30),
	preco			money,
	categoria		varchar(20),
	isbn			varchar(15),
	ano				date,
	editora			int,
primary key (codigo_livro),
foreign key (editora) references tb_editora(codigo_editora)
);

insert into tb_livro(codigo_livro,nome_livro,autor,preco,categoria,isbn,ano,editora) values
(1,'Amongus enciclopedia','Amongus johnson',10.50,'enciclopedias','Amigavel','01-08-1999',1),
(2,'Jojo Referencia','Johnny Joestar',25.90,'biografias','Profissional','15-02-2020',1),
(3,'Stand Power','Jotaro Kujo',18.75,'aventuras','Educativo','20-11-2019',1),
(4,'Mafia Blues','Bruno Bucciarati',12.30,'ficcao','Entretenimento','10-06-2021',1),
(5,'Hamham Livros','Giorno Giovanna',8.99,'infantil','Amigavel','25-09-2022',1),
(6,'O Poder do Stand','Josuke Higashikata',20.00,'aventuras','Profissional','12-01-2023',1),
(7,'A Historia de DIO','Diosama',35.00,'biografias','Educativo','18-03-2021',1),
(8,'Morioh City Blues','Jotaro Kujo',15.50,'ficcao','Entretenimento','22-05-2020',1),
(9,'O Vento é Música','Giorno Giovanna',12.00,'infantil','Amigavel','28-07-2022',1),
(10,'A Verdade sobre a Mafia','Bruno Bucciarati',30.00,'biografias','Profissional','03-09-2019',1),
(11,'Neopolis Nights','Abbacchio',18.00,'aventuras','Educativo','10-10-2021',1),
(12,'O Caminho para a Vitória','Johnny Joestar',22.50,'biografias','Profissional','15-11-2020',1),
(13,'A Arte do Hamon','Joseph Joestar',25.00,'educativo','Educativo','20-12-2018',1),
(14,'Stand Atlas','Kira Yoshikage',40.00,'aventuras','Profissional','25-01-2022',1),
(15,'O Legado de DIO','Diosama',50.00,'biografias','Educativo','30-06-2023',1),
(16,'A Jornada de Jotaro','Jotaro Kujo',28.00,'biografias','Profissional','05-08-2022',1),
(17,'Mafia e Música','Bruno Bucciarati',20.50,'ficcao','Entretenimento','10-09-2021',1),
(18,'O Poder do Requiem','Giorno Giovanna',45.00,'aventuras','Profissional','15-10-2020',1),
(19,'A História de Josuke','Josuke Higashikata',32.00,'biografias','Educativo','20-11-2022',1),
(20,'Neopolis City','Abbacchio',18.50,'ficcao','Entretenimento','25-12-2021',1);

select * from tb_livro;

drop table tb_livro;


create table tb_estoque(
	id				int,
	quantidade		int,
	codigo_livro	int,
primary key (id),
foreign key (codigo_livro) references tb_livro (codigo_livro)
);

insert into tb_estoque(id,quantidade,codigo_livro) values
(1,20,1),
(2,15,1),
(3,10,2),
(4,8,3),
(5,12,1),
(6,18,2),
(7,22,1),
(8,5,3),
(9,11,2),
(10,25,1),
(11,6,3),
(12,9,2),
(13,14,1),
(14,7,3),
(15,19,2),
(16,4,1),
(17,13,3),
(18,16,2),
(19,21,1),
(20,3,3),
(21,1,2),
(22,23,1),
(23,17,3),
(24,2,2),
(25,24,1),
(26,14,3),
(27,6,2),
(28,11,1),
(29,19,3),
(30,8,2),
(31,16,1),
(32,22,3),
(33,5,2),
(34,10,1),
(35,18,3),
(36,3,2),
(37,12,1),
(38,20,3),
(39,7,2),
(40,15,1);

select * from tb_estoque;

drop table tb_estoque;

create table tb_livro_pedido(
	id			int,
	id_pedido	int,
	id_livro	int,
primary key (id),
foreign key (id_pedido) references tb_pedido (codigo_pedido),
foreign key (id_livro) references tb_livro (codigo_livro)
);

insert into tb_livro_pedido(id,id_pedido,id_livro) values
(1,1,1),
(2,2,1),
(3,1,2),
(4,3,1),
(5,2,2),
(6,1,3),
(7,3,2),
(8,2,3),
(9,1,4),
(10,4,1),
(11,3,3),
(12,2,4),
(13,1,5),
(14,4,2),
(15,3,4),
(16,2,5),
(17,1,6),
(18,5,1),
(19,4,3),
(20,3,5),
(21,2,6),
(22,1,7),
(23,5,2),
(24,4,4),
(25,3,6),
(26,2,7),
(27,1,8),
(28,6,1),
(29,5,3),
(30,4,5),
(31,3,7),
(32,2,8),
(33,1,9),
(34,6,2),
(35,5,4),
(36,4,6),
(37,3,8),
(38,2,9),
(39,1,10),
(40,7,1),
(41,6,3),
(42,5,5),
(43,4,7),
(44,3,9),
(45,2,10),
(46,1,11),
(47,7,2),
(48,6,4),
(49,5,6),
(50,4,8);

select * from tb_livro_pedido;

drop table tb_livro_pedido;


-- Consultas

-- 1. Listar todos os livros com preço maior que R$ 20,00
select * from tb_livro
where preco > 20.00;

-- 2. Atualizar o preço do livro "Amongus enciclopedia" para R$ 15,00
update tb_livro set preco = 15
where nome_livro = 'Amongus enciclopedia';
 
-- 4. Adicionar uma nova coluna "estoque_minimo" na tabela tb_estoque
alter table tb_estoque add estoque_minimo int;

-- 4,5. Preencher a coluna "esdtoque_minimo"
update tb_estoque set estoque_minimo = 10
where codigo_livro = 1;

update tb_estoque set estoque_minimo = 5
where codigo_livro = 3;


-- 5. Contar a quantidade de livros em estoque
select sum (quantidade) as total_livros from tb_estoque;

-- 6. Listar os 5 livros mais caros
select top 5 * from tb_livro
order by preco desc;

-- 7. Calcular a média de preço dos livros
select avg (preco) as media_livros from tb_livro; 

-- 8. Encontrar o livro mais barato
select nome_livro, preco from tb_livro
where preco = (select min (preco) as mais_barato from tb_livro);

-- 9. Encontrar o livro mais caro
select nome_livro, preco from tb_livro
where preco = (select max (preco) as mais_barato from tb_livro);

-- 10. Listar os livros da editora "Shura livros"
select * from tb_livro
where editora = 1;

-- 11. Atualizar o nome da editora "LocaLivros" para "Loca Livros Ltda."
update tb_editora set nome = 'Loca Livros Ltda.'
where nome = 'Localivros';

-- 12. Excluir a editora com código 5
delete from tb_editora
where codigo_editora = 5;

-- 13. Contar a quantidade de pedidos realizados em 2022
select count (codigo_pedido) as quantidade_pedidos from tb_pedido
where data_pedido > '01-01-2022' and data_pedido < '01-01-2023';

-- 14. Listar os pedidos com valor total maior que R$ 50,00
select * from tb_pedido
where valor_pedido > 50.00;

-- 15. Calcular o valor total de todos os pedidos
select sum (valor_pedido) as valor_total from tb_pedido;

-- 16. Listar todos os livros pedidos por um cliente específico (código_cliente = 1)
select nome_livro from tb_livro
where codigo_livro in (
select id_livro from tb_livro_pedido
where id_pedido in (
select codigo_pedido from tb_pedido
where id_cliente = 1
)
);

-- 17. Listar os pedidos realizados por um cliente específico (código_cliente = 1)
select * from tb_pedido
where id_cliente = 1;

-- 18. Listar os livros da categoria "aventuras"
select * from tb_livro 
where categoria = 'aventuras';

-- 19. Listar os clientes que moram em "Morioh"
select * from tb_cliente
where endereco = 1;

-- 20. Listar os pedidos com valor total maior que R$ 30,00 e realizados em 2022
select * from tb_pedido
where valor_pedido > 30.00 and
data_pedido >= '01-01-2022' and data_pedido < '01-01-2022';
