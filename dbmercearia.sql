-- apagando o banco de dados

drop database dbmercearia;

-- criar o banco de dados

create database dbmercearia;

-- acessando o banco de dados

use dbmercearia;

-- criar as tabelas

create table tbfuncionarios(
codfunc int not null auto_increment,
nome varchar(100) not null,
email varchar(100), 
telefone char(10),
cpf char(14) not null unique,
sexo char(1) default 'F' check(sexo in('F','M')),
salario decimal(9,2) default 0 check (salario >= 0),
primary key (codfunc)
);

create table tbfornecedores(
codforn int not null auto_increment,
nome varchar(100),
cnpj char(18) unique,
ie char(12) unique,
logradouro varchar(100),
numero char(5),
cep char(9),
bairro varchar(100),
cidade varchar(50),
estado varchar(50),
telefone char(10),
primary key(codforn)
);

create table tbclientes(
codcli int not null auto_increment,
nome varchar(100),
email varchar(100),
cpf char(14) not null unique,
primary key(codcli)

);

create table tbusuarios(
codusu int not null auto_increment,
nome varchar(50) not null,
senha varchar(20) not null,
codfunc int not null,
primary key(codusu),
foreign key(codfunc)references tbfuncionarios(codfunc)
);

create table tbprodutos(
codprod int not null auto_increment,
descricao varchar(100),
quantidade int default 0 check(quantidade >= 0),
valor decimal(9,2) default 0 check(valor >= 0),
dataEntrada date,
horaEntrada time,
codforn int not null,
primary key(codprod),
foreign key(codforn)references tbfornecedores(codforn)
);

create table tbvendas(
codvend int not null auto_increment,
codcli int not null,
codprod int not null,
codusu int not null,
datavenda date,
horavenda time,
quantidade int default 0 check(quantidade >= 0),
primary key(codvend),
foreign key(codcli)references tbclientes(codcli),
foreign key(codprod)references tbprodutos(codprod),
foreign key(codusu)references tbusuarios(codusu)
);


-- visualizar a estrutura da tabela

desc tbfuncionarios;

desc tbusuarios;

desc tbfornecedores;

desc tbprodutos;

desc tbclientes;

desc tbvendas;

-- inserir registro na tabela

insert into tbfuncionarios(nome,email,telefone,cpf,sexo,salario)
	values('Kauan Souza','kauan.souza@hotmail.com',
		'97412-4875','258.247.258-88','M',1500.25);

insert into tbfuncionarios(nome,email,telefone,cpf,sexo,salario)
	values('Nicolau Maquiavel','nicolau.maquiavel@hotmail.com',
		'97412-4875','258.247.258-68','M',1900.25);

insert into tbusuarios(nome,senha,codfunc)
	values('nicolau.maquiavel','123456',2);

insert into tbusuarios(nome,senha,codfunc)
	values('kauan.souza','654321',1);

-- visualizar os registros da tabela

select * from tbfuncionarios;

select * from tbusuarios;

select * from tbfornecedores;

select * from tbprodutos;

select * from tbclientes;
                                  
select * from tbvendas;                                         