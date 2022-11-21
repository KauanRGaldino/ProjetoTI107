-- apagando o bancos de dados criado
drop database dbloja;

-- criando banco de dados loja
create database dbloja;

-- acessando o banco de dados loja
use dbloja;

-- criando as tabelas no banco de dados 
create table tbusuarios(
codusu int,
nome varchar (50),
senha varchar (50)
);


create table tbfuncionarios(
codfunc int,
nome varchar (100),
email varchar (100),
telefone char (10),
cpf char (14),
logradouro varchar (100),
numero char (10),
bairro varchar (50),
cidade varchar (50),
estado varchar (50),
cep char (9)
);


create table tbprodutos(
codprod int, 
descricao varchar (100),
valor decimal (9,2),
dataEntrada date,
horaEntrada time,
quantidade int 
);

insert into tbProdutos(codprod,descricao,
valor,dataEntrada,horaEntrada,quantidade)
values(100,'Uva',10.50,'2022-10-31','11:14:50',12)

insert into tbProdutos(codprod,descricao,
valor,dataEntrada,horaEntrada,quantidade)
values(101,'Maracuja',10.51,'2022-10-31','11:14:50',12)

-- visualizando a estrutura das tabelas 

desc tbusuarios;
desc tbfuncionarios;

-- inserindo registros das tabelas 

insert into tbusuarios(codusu,nome,senha)
values(1,'kauan.rodrigues','123456');

insert into tbusuarios(codusu,nome,senha)
values(2,'antonio.lima','456789'); 

insert into tbfuncionarios(codfunc,nome,email,telefone,cpf,logradouro,numero,bairro,cidade,estado,cep)
values(1,'Kauan rodrigues','kauan.rodrigues@hotmail.com','99458-4875','258.352.357-88','Rua Dr. Antonio Bento','355',
'Santo Amaro','São Paulo','São Paulo','04436-365');

insert into tbfuncionarios(codfunc,nome,email,telefone,cpf,logradouro,numero,bairro,cidade,estado,cep)
values(2,'Antonio lima','antonio.lima@hotmail.com','99458-4874','258.352.357-87','Rua Dr. Antonio Bento','355',
'Santo Amaro','São Paulo','São Paulo','04436-365');

insert into tbProdutos(codprod,descricao,
valor,dataEntrada,horaEntrada,quantidade)
values(100,'Uva',10.50,'2022-10-31','11:14:50',12);

insert into tbProdutos(codprod,descricao,
valor,dataEntrada,horaEntrada,quantidade)
values(101,'Maracuja',10.51,'2022-10-31','11:14:50',13);

-- visualizando os registros das tabelas 

select * from tbusuarios;
select * from tbfuncionarios; 
select * from tbProdutos;

select descricao, valor, valor * 1.10 as 'aumentou em 10%' from tbProdutos;

-- alterando valores das colunas 

update tbProdutos set valor = valor * 1.25
where codprod = 101;

update tbProdutos set valor = valor * 0.75
where codprod = 100;

select * from tbProdutos;

-- apagando registros das linhas 
 
-- pesquisa por nome

-- pesquisa por codigo