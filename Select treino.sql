Create DataBase db_funcionarios;

use db_funcionarios;
CREATE TABLE Funcionarios (
    ID INT IDENTITY(1,1) PRIMARY KEY,      -- Identificador único, auto incrementado
    Nome NVARCHAR(100) NOT NULL,            -- Nome completo do funcionário
    Cargo NVARCHAR(50) NOT NULL,           -- Cargo do funcionário
    Departamento NVARCHAR(50),             -- Departamento onde o funcionário trabalha
    Data_Nascimento DATE,                  -- Data de nascimento
    Data_Admissao DATE NOT NULL,           -- Data de admissão
    Salario DECIMAL(18, 2) NOT NULL,       -- Salário do funcionário
    Email NVARCHAR(100) UNIQUE,            -- E-mail do funcionário (único)
    Telefone NVARCHAR(15),                 -- Telefone (formato simples)
    Endereco NVARCHAR(255)                 -- Endereço do funcionário
);

INSERT INTO Funcionarios (Nome, Cargo, Departamento, Data_Nascimento, Data_Admissao, Salario, Email, Telefone, Endereco)
VALUES
('Carlos Silva', 'Gerente', 'Vendas', '1980-02-15', '2010-03-01', 5000.00, 'carlos.silva@empresa.com', '(11) 98765-4321', 'Rua A, 123, São Paulo'),
('Ana Oliveira', 'Analista', 'TI', '1990-07-20', '2015-08-10', 3000.00, 'ana.oliveira@empresa.com', '(11) 99876-5432', 'Rua B, 456, São Paulo'),
('João Santos', 'Coordenador', 'RH', '1985-05-25', '2012-06-15', 4000.00, 'joao.santos@empresa.com', '(11) 96789-6543', 'Rua C, 789, São Paulo'),
('Maria Costa', 'Assistente', 'Marketing', '1992-11-12', '2018-09-20', 2500.00, 'maria.costa@empresa.com', '(21) 98877-6655', 'Rua D, 1011, Rio de Janeiro'),
('Pedro Almeida', 'Desenvolvedor', 'TI', '1988-03-30', '2016-01-10', 4500.00, 'pedro.almeida@empresa.com', '(11) 97654-3210', 'Rua E, 121, São Paulo'),
('Lucas Pereira', 'Assistente', 'Financeiro', '1993-06-22', '2017-07-05', 2200.00, 'lucas.pereira@empresa.com', '(31) 99988-7766', 'Rua F, 232, Belo Horizonte'),
('Beatriz Lima', 'Gerente', 'Marketing', '1984-01-18', '2011-04-25', 6000.00, 'beatriz.lima@empresa.com', '(21) 92233-4455', 'Rua G, 342, Rio de Janeiro'),
('Ricardo Souza', 'Coordenador', 'Vendas', '1980-09-13', '2010-05-18', 5500.00, 'ricardo.souza@empresa.com', '(11) 91432-7654', 'Rua H, 654, São Paulo'),
('Fernanda Rocha', 'Analista', 'TI', '1991-12-05', '2016-03-12', 3200.00, 'fernanda.rocha@empresa.com', '(61) 99876-4321', 'Rua I, 876, Brasília'),
('Gabriel Martins', 'Desenvolvedor', 'TI', '1987-04-17', '2014-02-22', 5000.00, 'gabriel.martins@empresa.com', '(21) 93456-7890', 'Rua J, 987, Rio de Janeiro'),
('Larissa Almeida', 'Assistente', 'Financeiro', '1994-08-14', '2019-11-15', 2100.00, 'larissa.almeida@empresa.com', '(31) 97777-6655', 'Rua K, 543, Belo Horizonte'),
('Eduardo Ferreira', 'Coordenador', 'Logística', '1982-10-25', '2013-05-28', 4800.00, 'eduardo.ferreira@empresa.com', '(41) 98888-2233', 'Rua L, 765, Curitiba'),
('Patricia Souza', 'Gerente', 'TI', '1983-07-30', '2010-09-01', 7000.00, 'patricia.souza@empresa.com', '(51) 99911-2233', 'Rua M, 321, Porto Alegre'),
('Tiago Costa', 'Analista', 'Financeiro', '1990-05-17', '2017-02-03', 3500.00, 'tiago.costa@empresa.com', '(41) 97777-3344', 'Rua N, 654, Curitiba'),
('Rafaela Lima', 'Assistente', 'RH', '1995-09-21', '2020-10-15', 2000.00, 'rafaela.lima@empresa.com', '(21) 91122-3344', 'Rua O, 101, Rio de Janeiro'),
('Renato Pereira', 'Desenvolvedor', 'TI', '1989-06-13', '2013-08-10', 4800.00, 'renato.pereira@empresa.com', '(11) 91567-4321', 'Rua P, 232, São Paulo'),
('Aline Martins', 'Coordenador', 'Marketing', '1986-03-04', '2012-11-18', 5300.00, 'aline.martins@empresa.com', '(31) 92222-5544', 'Rua Q, 543, Belo Horizonte'),
('Mauricio Rocha', 'Gerente', 'Financeiro', '1981-12-22', '2009-01-10', 6500.00, 'mauricio.rocha@empresa.com', '(61) 99666-7788', 'Rua R, 765, Brasília'),
('Simone Costa', 'Assistente', 'Logística', '1992-01-14', '2018-04-22', 2300.00, 'simone.costa@empresa.com', '(21) 93999-8844', 'Rua S, 432, Rio de Janeiro'),
('Carlos Eduardo', 'Desenvolvedor', 'TI', '1984-11-01', '2011-10-11', 4700.00, 'carlos.eduardo@empresa.com', '(11) 92345-8765', 'Rua T, 654, São Paulo');
-- selecionar a tabela toda
SELECT * FROM Funcionarios;

-- filtro por coluna
SELECT ID, Nome, Cargo FROM Funcionarios;

-- filtro por linha
SELECT * FROM Funcionarios Where Cargo = 'Gerente';

-- filtro por linha e coluna
SELECT Nome, Salario FROM Funcionarios Where Cargo = 'Gerente';
select * from Funcionarios where Departamento = 'Vendas';

-- filtro por linha e coluna
SELECT Nome, Departamento, Data_Admissao, Cargo, Salario FROM Funcionarios Where Salario > 4000.00;
select * from Funcionarios where Salario > 1000 and Salario < 3500;

SELECT Nome, Data_Admissao, Cargo, Departamento From Funcionarios
Where Departamento != 'RH';

SELECT Nome, Data_Admissao, Cargo, Departamento, Salario From Funcionarios
Where Salario <= 3000;

SELECT Nome, Data_Nascimento ,Data_Admissao, Cargo, Departamento, Salario From Funcionarios
Where Data_Nascimento >= '1990-10-01';

-- filtro por linha e coluna
SELECT Nome, Departamento, Data_Admissao, Cargo, Salario, Salario * 1.05 as novoSalario 
FROM Funcionarios

SELECT Nome, Departamento, Data_Admissao, Cargo, Salario, Salario + 500 as novoSalario 
FROM Funcionarios where Departamento = 'Vendas';


-- filtro por linha e coluna
SELECT Nome, Departamento, Data_Admissao, Cargo, Salario FROM Funcionarios 
Where Salario > 4000.00 and Departamento = 'TI';

SELECT Nome, Departamento, Data_Admissao, Cargo, Salario FROM Funcionarios 
Where Departamento = 'RH' or Departamento = 'TI';

