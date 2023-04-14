create database catraca;
use catraca;


create table tb_cadastro(
id_produto int primary key auto_increment,
nome_produto varchar(255),
quantidade_produto varchar(255),
tempo_produto varchar(255)
);

create table tb_administradores(
id_adm int primary key auto_increment,
nome_adm varchar(255)unique,
usuario_adm varchar(255),
email_adm varchar(255),
senha_adm varchar(80),
dataCad_adm TIMESTAMP DEFAULT(CURRENT_TIMESTAMP())
);
insert into tb_administradores(nome_adm,usuario_adm,email_adm,senha_adm) VALUES ('matheus','a','matheus@aa.com','123');

create table tb_cadUsuario(
id_Usuario int primary key auto_increment,
nome_Usuario varchar(255),
dtNasc_Usuario varchar(15),
email_Usuario varchar(255),
senha_Usuario varchar(80),
dataCad_Usuario TIMESTAMP DEFAULT(CURRENT_TIMESTAMP())
);
insert into tb_cadUsuario(nome_Usuario,email_Usuario,senha_Usuario) VALUES ('matheus','matheus@aa.com','123');


create table tb_reclamacao(
id_reclamacao int primary key auto_increment,
texto_reclamacao varchar(255),
nome_reclamacao varchar(255)
);

select*from tb_administradores;

drop table tb_administradores;

