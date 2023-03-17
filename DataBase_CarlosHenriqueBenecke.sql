CREATE DATABASE HOP_ENTREGÁVEL_INDIVIDUAL;
USE HOP_ENTREGÁVEL_INDIVIDUAL;
CREATE TABLE login(
idLogin INT primary key auto_increment,
nome varchar(50) NOT NULL,
email varchar(50) NOT NULL,
CPFouCNPJ varchar(15) NOT NULL
);
CREATE TABLE lúpulo(
idLupulo int primary key auto_increment,
nomeLupulo varchar (25),

qtHoras float,
qtLumens float
);
CREATE TABLE sensores(
idSensor int primary key auto_increment,
serialNumber varchar(20),
cliente varchar(20),
statusSensor varchar(20) constraint chkStatus check(statusSensor IN('Ativo','Inativo','Manutenção'))
);
CREATE TABLE dadosArduino(
idDados INT PRIMARY KEY auto_increment,
datahora DATETIME,
luz varchar(10)
) auto_increment=10000;

INSERT INTO login VALUES
	(null, 'Joao Maria Jose','jmj@gmail.com','00100200301'),
    (null, 'Carlos Benecke Hops','cbhops@gmail.com','31585028000161'),
    (null, 'Luana Barros','luanabarros@yahoo.com','07613512911' ),
    (null, 'FledaHops','fledermaus@fledahops.com.br','55785001000141'),
    (null, 'BodeBrown ltda.', 'bdbw@bodebrown',''),
    (null, 'Claudinei campos', 'cc@cc.com.br', '007008009-47');

ALTER TABLE lúpulo DROP COLUMN qtLumens;
INSERT INTO lúpulo VALUES
	(null,'citra','14'),
    (null, 'tropicalia','12'),
    (null, 'errejota','13'),
    (null, 'mosaic','16'),
    (null, 'newzeland','15');

INSERT INTO sensores VALUES
(null,'123456789','BodeBrown','Ativo'),
(null,'123456as9','BodeBrown','Ativo'),
(null,'123456cd9','BodeBrown','Ativo'),
(null,'123456ad9','FledaHops','Ativo'),
(null,'123458ad9','FledaHops','Manutenção'),
(null,'003456cd9','FledaHops','Ativo'),
(null,'123456cd9','FledaHops','Ativo'),
(null,'123654cd9','Luana Barros','Ativo');

ALTER TABLE dadosArduino ADD COLUMN idSensor int;
ALTER TABLE dadosArduino MODIFY COLUMN luz float;
INSERT INTO dadosArduino VALUES
(null,'2023-01-01 12:00:00',180,1);
INSERT INTO dadosArduino VALUES
(null,'2023-01-01 12:00:00',250,2),
(null,'2023-01-01 12:00:00',240,3),
(null,'2023-01-01 12:00:00',250,4),
(null,'2023-01-01 12:00:00',246,5),
(null,'2023-01-01 12:00:00',250,6),
(null,'2023-01-01 12:00:00',240,7),
(null,'2023-01-01 17:30:00',150,1),
(null,'2023-01-01 17:30:00',140,2),
(null,'2023-01-01 17:30:00',150,3),
(null,'2023-01-01 17:30:00',140,4),
(null,'2023-01-01 17:30:00',130,5),
(null,'2023-01-01 17:30:00',140,6),
(null,'2023-01-01 17:30:00',150,7);
