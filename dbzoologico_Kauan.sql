--apagando o banco de dados se existir
drop database dbzoologico; 

-- 1- criar o banco de dados Zoologico
create database dbzoologico;

--acessando o banco de dados
use dbzoologico;

-- 2- criando as tabelas do banco de dados;
create table tbanimais(
codigo int,
tipo char(15),
nome char(30),
idade int,
valor decimal(10,2)
);

-- visualizando as tabelas criadas
show tables;

-- visualizandoa estrutura das tabelas
desc tbanimais;


-- cadastrando/inserindo registros nas tabelas
insert into tbanimais (codigo,tipo,nome,
	idade,valor) values (1,'cachorro','Djudi',3,300.00);

insert into tbanimais (codigo,tipo,nome,
	idade,valor) values (2,'cachorro','Sula',5,300.00);

insert into tbanimais (codigo,tipo,nome,
	idade,valor) values (3,'cachorro','Sarina',7,300.00);

insert into tbanimais (codigo,tipo,nome,
	idade,valor) values (4,'gato','Pipa',2,500.00);

insert into tbanimais (codigo,tipo,nome,
	idade,valor) values (5,'gato','Sarangue',2,500.00);

insert into tbanimais (codigo,tipo,nome,
	idade,valor) values (6,'gato','Clarences',1,500.00);

insert into tbanimais (codigo,tipo,nome,
	idade,valor) values (7,'coruja','Agnes',0,700.00);

insert into tbanimais (codigo,tipo,nome,
	idade,valor) values (8,'coruja','Arabela',1,700.00);

insert into tbanimais (codigo,tipo,nome,
	idade,valor) values (9,'sapo','Quash',1,100.00);

insert into tbanimais (codigo,tipo,nome,
	idade,valor) values (10,'peixe','Fish',0,100.00);

-- 3- escrevendo um comando que exiba todas as linhas e colunas

-- visualizando os registros cadastros/inseridos

select * from tbanimais;

-- 4- escrevendo um comando que exiba todas as colunas tipo e nome da tabela

select tipo, nome from tbanimais;

-- 5- escrevendo um comando que exiba todas as colunas tipo,nome e idade da tabela

select tipo,nome, idade from tbanimais;

-- 6- escrevendo um comando que exiba apenas as colunas tipo e nome da tabela animais
-- tipo alias tipo de animal,nome do animal 

select tipo as 'Tipo de Animal', nome as 'Nome do Animal' from tbanimais;

-- 7- escrevendo um comando que exiba apenas as colunas tipo,nome e idade da tabela animais
-- tipo alias tipo de animal,nome do animal e idade alias tempo de vida

select tipo as 'Tipo de Animal', nome as 'Nome do Animal', idade 'Tempo de Vida' from tbanimais;

-- 8- escrevendo um comando que apresenta os dados da tabela Animais

select 'Animal Doméstico' as 'Procedência', tipo , nome , idade as 'Tempo de Vida' from tbanimais; 

-- 9- escrevendo um comando que apresenta os dados da tabela Animais

select tipo, nome, idade, valor as 'Valor Original', valor *1.10 as 'Valor de Venda' from tbanimais;

-- 10- escreva um comando que apresente os dados da tabela Animais,apresentado uma vez os dados repetidos

select distinct tipo, valor as 'Valor Original', valor *1.10 as 'Valor de Venda' from tbanimais;     