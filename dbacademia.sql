-- apagando o banco de dados se existir
drop database dbacademia;

-- criar o banco de dados
create database dbacademia;

-- acessando o banco de dados
use dbacademia;

-- criando as tabelas do banco de dados
create table tbfuncionarios(
codigo int,
nome varchar(100),
email varchar(100),
idade int,
rg char(12),
cpf char(14),
logradouro varchar(100),
numero char(10),
bairro varchar(100),
cidade varchar(50),
estado varchar(100));

create table tbusuarios(
codigo int,
nome varchar(20),
senha varchar(10));

create table tbprodutos(
codigo int,
descricao varchar(150),
valor decimal(9,2),
dataEntrada date,
horaEntrada time,
quantidade decimal(9,2));

-- visualizando as tabelas criadas 
show tables;

-- visualizando a estrutura das tabelas 
desc tbfuncionarios;
desc tbusuarios;
desc tbprodutos;

-- cadastrando/inserindo registros nas tabelas 

insert into tbfuncionarios (codigo,nome,email,idade,rg,cpf,
	logradouro,numero,bairro,cidade,estado) values (1,'Pedro Antunes',
	'pedro.antunes@hotmail.com',25,'25.247.258-7',
	'235.258.847.88','Av. Dr. Antonio Bento','355',
    'Santo Amaro','São Paulo','São Paulo');

insert into tbfuncionarios (codigo,nome,email,idade,rg,cpf,
	logradouro,numero,bairro,cidade,estado) values (2,'Ana Oliveira',
	'ana.oliveira@hotmail.com',19,'26.248.259-8',
	'236.259.848.89','Av. Dr Antonio Bento','356',
	'Santo Amaro','São Paulo','São Paulo');

insert into tbusuario(codigo,nome,senha)
	values(1,'pedro.antunes','123456');

insert into tbusuario(codigo,nome,senha)
	values(2,'ana.oliveira','456789');


insert into tbProdutos(codigo,descricao,valor,dataEntrada,horaEntrada,quantidade)
	values(1,'Banana Prata',10.50,'2022-10-07','08:40:55',12.5);

insert into tbProdutos(codigo,descricao,valor,dataEntrada,horaEntrada,quantidade)
	values(2,'Melancia',15.30,'2022-10-07','08:40:55',10.5);

--visualizando os registros cadastros/inserindos

select * from tbfuncionarios;

select * from tbusuario;

select * from tbProdutos;

-- alterar valores nos campos das tabelas 

update tbProdutos set valor = valor *1.10
	where codigo = 1;

update tbProdutos set descricao = 'Morango', valor = 5.25
	where codigo = 1;

select * from tbProdutos;

-- apagando registros das tabelas

--delete from tbProdutos where codigo = 1;

select * from tbProdutos; 

