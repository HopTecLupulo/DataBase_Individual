CREATE DATABASE sprint1;
USE sprint1;

-- Criando as tabelas:

CREATE TABLE Cadastro (
	idCliente INT PRIMARY KEY auto_increment,
	cnpj CHAR(18),
	cpf CHAR(14),
	razaoNome VARCHAR(100) NOT NULL,
	email VARCHAR(100) NOT NULL,
	telefone VARCHAR(50) NOT NULL,
	cep CHAR(9),
	endereco VARCHAR(70),
	UF VARCHAR(2)
);
DESC Cadastro;

CREATE TABLE Lupulo (
	idLupulo INT PRIMARY KEY auto_increment,
	tipo VARCHAR(80),
	qtdHoras INT
);
DESC Lupulo;

CREATE TABLE Sensor (
	idsensor INT PRIMARY KEY auto_increment,
	serialNumber INT,
	statusSensor VARCHAR(10) CHECK(statusSensor IN ('Ativo', 'Inativo'))
);
DESC Sensor;

CREATE TABLE Dados (
	idDados INT PRIMARY KEY auto_increment,
	dia DATETIME,
	qtdLumens FLOAT
	)auto_increment=10000;
DESC Dados;

-- Inserindo dados na tabela:

INSERT INTO Cadastro VALUES 
	(null, '12354698000134', null, 'Red River Lupulo', 'redRiveLupulo@gmail.com', '87659873', '3452-9836', 'Av. Nogueira, 543', 'SP'),
	(null, '19398699000187', null, 'Maximus Cerveja Artesanal', 'MaximusCerveja@gmail.com', '2133-9898', '09876242', 'Rua  Jacaré, 112',  'SC'),
	(null, '15218509000108', null, 'Upstart Beer', 'UpstartBeer@gmail.com','8765-0347', '71725162', 'Rua  Lorenga, 1609',  'SC'),
	(null, '29000709000145', null, 'BestWay Cerveja', 'BestWayCerveja@gmail.com', '5665-2345', '90872562', 'Rua  Epaminondas, 240',  'SC'),
	(null, '23456654000167', null, 'Renovação Lupulo', 'RenovacaoLup@gmail.com', '3645-1827', '09876435', 'Av Maramelia, 540', 'SP');
SELECT * FROM Cadastro;

INSERT INTO Lupulo VALUES
	(null, 'Amarillo', 15),
	(null, 'Centennial', 13),
	(null, 'Fuggle', 17),
	(null, 'Mount Hood', 14),
	(null, 'Saaz', 15),
	(null, 'Target', 18),
	(null, 'Zeus', 19),
	(null, 'Dragon', 14),
	(null, 'Citra', 16);
SELECT * FROM Lupulo;

INSERT INTO Sensor VALUES
	(null, 001, 'Inativo'),
	(null, 002, 'Ativo'),
	(null, 003, 'Ativo'),
	(null, 004, 'Inativo'),
	(null, 005, 'Ativo'),
	(null, 006, 'Inativo');
SELECT * FROM Sensor;

INSERT INTO Dados VALUES
	(null, '2022-11-01 12:00', 67),
	(null, '2022-12-09 15:00', 244),
	(null, '2023-01-20 17:30', 177),
	(null, '2023-02-13 16:15', 59),
	(null, '2023-03-14 18:30', 500),
	(null, '2023-04-23 20:00', 928);
SELECT * FROM Dados;


SELECT * FROM Cadastro;
SELECT * FROM Lupulo;
SELECT * FROM Sensor;
SELECT * FROM Dados;

-- Limpando e excluindo tabelas/database:

TRUNCATE TABLE Cadastro;
DROP TABLE Cadastro;
DROP TABLE Lupulo;
DROP TABLE Sensor;
DROP TABLE Dados;
DROP DATABASE sprint1;



