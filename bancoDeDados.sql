create database metalcoin;
use metalcoin;


create table tb_cadastro(
id_produto int primary key auto_increment,
nome_produto varchar(255),
quantidade_produto varchar(255),
tempo_produto varchar(255)
);

create table tb_cadUsuario(
id_Usuario int primary key auto_increment,
nome_Usuario varchar(255),
dtNasc_Usuario varchar(15),
email_Usuario varchar(255),
senha_Usuario varchar(80),
dataCad_Usuario TIMESTAMP DEFAULT(CURRENT_TIMESTAMP())
);

create table tb_reclamacao(
id_reclamacao int primary key auto_increment,
texto_reclamacao varchar(255),
nome_reclamacao varchar(255)
);

select*from tb_cadUsuario;

drop table tb_reclamacao;

