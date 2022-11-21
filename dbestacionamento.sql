drop database dbestacionamento;

create database dbestacionamento;

use dbestacionamento;

create table estacionamento
(
codigo int,
descricao varchar (100),
placa char (7),
modelo varchar (50),
dataEntrada date,
horaEntrada time,
dataSaida date,
horaSaida time
);

insert into estacionamento (codigo,descricao,placa,modelo,dataEntrada,horaEntrada,dataSaida,horaSaida) values 
(1,'Preto','Bra1960','Civic','2022-11-7','11:30:00','2022-11-7','13:00:00');

insert into estacionamento (codigo,descricao,placa,modelo,dataEntrada,horaEntrada,dataSaida,horaSaida) values 
(2,'Branco','Rya1937','Lancer','2022-11-7','15:38:00','2022-11-8','10:50:00');

insert into estacionamento (codigo,descricao,placa,modelo,dataEntrada,horaEntrada,dataSaida,horaSaida) values 
(3,'Azul','Kmd2075','Golf','2022-11-7','09:30:40','2022-11-7','20:00:00');

insert into estacionamento (codigo,descricao,placa,modelo,dataEntrada,horaEntrada,dataSaida,horaSaida) values 
(4,'Prata','Sjw5042','Celta','2022-11-7','21:20:50','2022-11-7','23:40:59');

insert into estacionamento (codigo,descricao,placa,modelo,dataEntrada,horaEntrada,dataSaida,horaSaida) values 
(5,'Cinza','Lna0614','Gol','2022-11-7','22:30:10','2022-11-8','06:00:00');

select * from estacionamento;

-- alterando 2 registros 

update estacionamento set modelo = 'City',
where codigo = 4; 