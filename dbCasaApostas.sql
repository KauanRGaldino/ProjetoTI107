-- apagando o banco de dados

drop database dbCasaApostas;

-- criando o banco de dados

create database dbCasaApostas;

use dbCasaApostas;

-- criando as tabelas do banco de dados

create table tbusuarios(
codUsu int not null auto_increment,
nome varchar(100),
email varchar(100),
cpf char(14) not null unique,
primary key(codusu));

create table tbjogadores(
codJog int not null auto_increment,
nome varchar(100),
email varchar(100),
cpf char(14) not null unique,
primary key(codJog));

create table tbTimes(
codTime int not null auto_increment,
nome varchar(100),
localidade varchar(100),
serie char(1),
codJog int not null,
primary key(codTime),
foreign key(codJog)references tbjogadores(codJog));

create table tbapostas(
codApt int not null auto_increment,
codTime int not null,
data date,
hora time,
valor decimal(9,2) default 0 check(valor > 0),
codusu int not null,
primary key(codApt),
foreign key(codTime)references tbTimes(codTime),
foreign key(codusu)references tbusuarios(codusu));


--visualizando as estruturas

desc tbTimes;

desc tbusuarios;

desc tbjogadores;

desc tbapostas;

--inserindo registros nas tabelas 

insert into tbusuarios(nome,email,cpf)
	values('Lionel Messi','lionel.messi@hotmail.com','234.658.248-69');

insert into tbusuarios(nome,email,cpf)
	values('Rogerinho Almeida','rogerinho.almeida@hotmail.com','238.158.240-79');

insert into tbusuarios(nome,email,cpf)
	values('Gugu Souza','gugu.souza@hotmail.com','224.648.238-61');

insert into tbjogadores(nome,email,cpf)
	values('Vinicius Junior','vinicius.junior@hotmail.com','514.369.021-84');

insert into tbjogadores(nome,email,cpf)
	values('Karim Benzema','karim.benzema@hotmail.com','114.359.001-54');

insert into tbjogadores(nome,email,cpf)
	values('Luka Modric','luka.modric@hotmail.com','574.360.081-04');

insert into tbTimes(nome,localidade,serie,codJog)
	values('Real Madrid','Espanha','A',1);

insert into tbapostas(codTime,data,hora,valor,codusu)
	values(1,'2022-11-28','11:14:00',50.00,1);

-- visualizando registros das tabelas 


select * from tbusuarios;
select * from tbjogadores;
select * from tbTimes;
select * from tbapostas;


