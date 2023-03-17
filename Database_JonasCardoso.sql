create database bdProjeto;

use bdProjeto;

create table Usuario (
	idUsuario int primary key auto_increment,
    nomeUsuario varchar(40),
    cpf varchar(11),
    cnpj varchar(14),
    email varchar(50),
    telefone varchar(20),
    cep varchar(8),
    endereco varchar(40),
    uf varchar (2)
    );

create table Lupulo (
	idLupulo int primary key auto_increment,
    tipo varchar(20)
    );
    
create table Sensor (
	idSensor int primary key auto_increment,
    dados int,
	statusSensor varchar (15),
    constraint chkstatusSensor check(statusSensor In ('Ativo','Inativo'))
    );

insert into Usuario values
	(null, 'Jonas Cardoso', '49935745601', '74736206000110','jonas.fontesneto@sptechschool','11-99896-2020','69350970','Avenida 1 de Julho','RR'),
	(null, 'Carlos','44455577701','29206469000163','carlos.estudo2023@sptechschool','11-99545-8765','96445971','Rua Quinhentos e Dez 788','RS'),
    (null, 'Abraão','11122233301','31690362000185','abraao.marcosmartins@sptechschool','11-95542-7795', '15780970', 'Rua XV de Novembro 681','SC');

insert into lupulo values
	(null, 'Admiral'),
    (null, 'Ahtnum'),
    (null, 'Amarillo'),
    (null, 'Cascade');

insert into sensor values
	(null,'400','Ativo'),
    (null,'450','Ativo'),
    (null,'500', 'Inativo');
    
update Usuario set nomeUsuario = 'Carlos Benecke'
	where idUsuario = 2;
update Usuario set email = 'carlos.benecke@sptechschool'
	where idUsuario = 2;

update Usuario set nomeUsuario = 'Abraão Marcos'
	where idUsuario = 3;
update Usuario set email = 'abraao.marcos@sptechschool'
	where idUsuario = 3;

update lupulo set tipo = 'Hallertauer Magnum'
	where idLupulo = 2;
    
delete from lupulo where idLupulo = 3;
delete from lupulo where idLupulo = 4;

select * from usuario where nomeUsuario like 'A%';
select * from usuario where cpf like '4%';
select nomeUsuario from usuario order by nomeUsuario;

select * from sensor where statusSensor != 'ativo';

insert into sensor values
	(null,'100','Inativo'),
	(null,'300','Inativo');