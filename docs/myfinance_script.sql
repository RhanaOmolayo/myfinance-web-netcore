CREATE DATABASE myfinance
use myfinance

create table planoconta(
id int identity(1,1) not null,
descricao varchar(50) not null,
tipo char(1) not null,
primary key (id)
);

create table transacao(
id int identity(1,1) not null,
data datetime not null,
valor decimal(9,2),
historico text,
planocontaid int not null,
primary key(id),
foreign key(planocontaid) references planoconta(id)
);

SELECT id, data, valor, historico, planocontaid FROM transacao

--SQL

--DQL - Data Query Language (SELECT)
--DML - Data Manipulation Language (INSERT, UPDATE, DELETE)
--DDL - Data Definition Language (CREATE, ALTER, DROP)
--DCL - Data Create Language (GRANT, REVOKE)
--DTL - Data Transaction Language (BEGIN, COMMIT, ROLLBACK)