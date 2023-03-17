CREATE DATABASE lupulosprint01;

USE lupulosprint01;

CREATE TABLE Lupulo (
idLupulo int primary key auto_increment,
tipo varchar(80),
horas_luz_dia int
);

INSERT INTO Lupulo VALUES
	(null, 'Citra', 13),
    (null, 'Cascade', 14),
    (null, 'Amarillo', 15),
	(null, 'Tropical', 16),
	(null, 'Dragon', 13),
	(null, 'Galaxy', 14),
    (null, 'Centennial', 15),
    (null, 'Mosaic', 16);
    
CREATE TABLE Cadastro (
id_cliente int primary key auto_increment,
cnpj char(20),
cpf char(11),
razao_nome varchar(100) NOT NULL,
email varchar(100) NOT NULL,
telefone varchar(50) NOT NULL,
cep char(9),
endereco varchar(80),
UF varchar(2)
);

INSERT INTO Cadastro VALUES
	(null, '12.345.678/0001-00',null , 'Empresa6', 'email6@gmail.com', '1354-4772', '5143-5576', 'Av Empresa 6', 'SP'), 
    (null, '12.345.678/0001-01',null , 'Empresa7', 'email7@gmail.com', '1354-4772', '5143-5576', 'Av Empresa 7', 'RJ'), 
    (null, '12.345.678-0001-02',null , 'Empresa8', 'email8@gmail.com', '1354-4772', '5143-5576', 'Av Empresa 8', 'MT'), 
    (null, '15.848.984-0001-01',null , 'Empresa1', 'email1@gmail.com', '1354-4772', '5143-5576', 'Av Empresa 1', 'MS'), 
    (null, '12.098.984-0001-01',null , 'Empresa2', 'email2@gmail.com', '8187-7821', '8756-9856', 'Av Empresa 2', 'SP'),
    (null, '65.568.984-0001-01',null , 'Empresa3', 'email3@gmail.com', '8752-9875', '9813-1249', 'Av Empresa 3', 'PA'),
    (null, '41.848.124-0001-01',null , 'Empresa4', 'email4@gmail.com', '5786-2158', '8753-6524', 'Av Empresa 4', 'AM'),
    (null, '12.541.984-0001-01',null , 'Empresa5', 'email5@gmail.com', '5887-6371', '8754-9875', 'Av Empresa 5', 'PI');
    
CREATE TABLE Sensor (
id_sensor int primary key auto_increment,
serial_number int,
status_sensor varchar(10) constraint chkstatus_sensor check(status_sensor IN ('Ativo', 'Inativo'))
);

INSERT INTO Sensor VALUES 
	(null, '001', 'Ativo'),
    (null, '002', 'Inativo'),
    (null, '003', 'Ativo'),
	(null, '004', 'Ativo'),
    (null, '005', 'Inativo'),
    (null, '006', 'Ativo'),
    (null, '007','Ativo');
    
CREATE TABLE Dados (
id_dados int primary key auto_increment,
dia datetime,
qtd_lumens float
)auto_increment=10000;

INSERT INTO Dados VALUE
	(null, '2023-03-03 12:30:00', 500),
    (null, '2023-03-03 12:45:00', 550),
    (null, '2023-03-03 13:00:00', 600),
    (null, '2010-12-05 12:00:00', 19),
    (null, '2021-12-04 14:08:30', 30),
    (null, '2005-08-04 13:09:45', 49),
    (null, '2009-09-08 09:08:48', 12),
    (null, '2023-03-03 14:00:00', 500);

ALTER TABLE Lupulo ADD CONSTRAINT chk_horas_luz_dia 
	CHECK (horas_luz_dia >= 0 and horas_luz_dia <=24);
    
SELECT * FROM Lupulo;
SELECT * FROM Cadastro;
SELECT * FROM Sensor;
SELECT * FROM Dados;


