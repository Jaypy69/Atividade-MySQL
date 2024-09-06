CREATE DATABASE bd_teste_1e;
USE bd_teste_1e;

CREATE TABLE usuarios(
id_user int primary key,
usuario varchar(50),
login varchar(20),
senha varchar(20),
perfil varchar(20)
);

CREATE TABLE pessoa(
id int primary key,
bi varchar(45),
nome varchar(45),
data_nasc date,
telefone varchar(45),
email varchar(45),
morada varchar(45)
);

CREATE TABLE funcionario(
id_func int,
nome varchar(50),
registro int,
guerra varchar(30),
gerencia varchar(20),
det varchar(20),
turno varchar(10),
cargo varchar(30),
atividade varchar(50),
funcao varchar(30),
primary key(id_func, registro)
);

DROP TABLE usuarios;
ALTER TABLE funcionario rename to Funcionarios;
ALTER TABLE Funcionarios rename column guerra to Area;
ALTER TABLE Funcionarios rename column turno to Turno;
ALTER TABLE Funcionarios rename column funcao to Funcao;
ALTER TABLE pessoa rename column data_nasc to datanascimento;
ALTER TABLE  pessoa DROP COLUMN morada;
