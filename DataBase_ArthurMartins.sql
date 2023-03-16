CREATE DATABASE Hop_Tech; -- cRIANDO BANCO DE DADOS

USE Hop_Tech; -- USANDO O BANCO DE DADOS

CREATE TABLE Cadastro (
id_cliente int primary key auto_increment,
cnpj char(18),
cpf char(14),
razao_nome varchar(100) NOT NULL,
email varchar(100) NOT NULL,
telefone varchar(50) NOT NULL,
cep char(9)
);
CREATE TABLE Lupulo (
idLupulo int primary key auto_increment,
tipo varchar(80),
horas_luz_dia int
);
INSERT INTO Lupulo VALUES
	(null, 'Citra', 13),
    (null, 'Cascade', 14),
    (null, 'Amarillo', 15),
	(null, 'Tropical', 16);
drop table Cadastro;

INSERT INTO Cadastro VALUES
(null,'21.659.998/0211-66','025.898.659/33','plantação do jorge','j0orge@gmail.com','(11)98986968','08260500');

INSERT INTO  Cadastro VALUES
(NULL,'25.988.965/5871-55','002.659.695/98','Carlinhos do arraial','CARLINHOS@gmail.com','(25)9847533645','02169864'),
(NULL,'25.878.946/3358-99','012.565.986/66','marcos plantas','marcosplantas@gmail.com','(30)987653485','02565915'),
(NULL,'25.658.946/3334-99','012.565.987/66','douglas plantas','douglasplantas@gmail.com','(30)987673680','02564875'),
(NULL,'25.878.997/3314-89','012.565.986/66','plantas da vovo','vovo@gmail.com','(45)987653485','02565915');
	
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
    
insert into Lupulo values
	(null, 'Admiral',16);
INSERT INTO Lupulo VALUES
	(null, 'amarillo', 15),
    (null, 'mosaic', 14);
    
select * from Lupulo where tipo like 'C%';

delete from Lupulo where idLupulo = 1;

update Sensor set status_sensor = 'Inativo'
	where id_Sensor = 1;
SELECT * FROM Sensor WHERE status_sensor = 'Inativo';
SELECT * FROM Sensor WHERE status_sensor = 'Ativo';
SELECT * FROM lupulo;

INSERT INTO Lupulo VALUES
	(null,'Tropicalia',11),
    (null,'Patagonia',13);
    
TRUNCATE TABLE lupulo;
TRUNCATE TABLE Cadastro;
DROP TABLE lupulo;
DROP TABLE Cadastro;
DROP DATABASE Hop_Tech;

