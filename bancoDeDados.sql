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
nome_adm varchar(255),
usuario_adm varchar(255)unique,
email_adm varchar(255),
senha_adm varchar(80),
dataCad_adm TIMESTAMP DEFAULT(CURRENT_TIMESTAMP())
);
insert into tb_administradores(nome_adm,usuario_adm,email_adm,senha_adm) VALUES ('matheus','a','matheus@aa.com','123');

create table tb_cadUsuario(
id_Usuario int primary key auto_increment,
nome_Usuario varchar(255)unique,
dtNasc_Usuario varchar(15),
email_Usuario varchar(255),
senha_Usuario varchar(80),
dataCad_Usuario TIMESTAMP DEFAULT(CURRENT_TIMESTAMP())
);
insert into tb_cadUsuario(nome_Usuario,email_Usuario,senha_Usuario) VALUES ('1','matheus@aa.com','123');


create table tb_reclamacao(
id_reclamacao int primary key auto_increment,
texto_reclamacao varchar(255),
nome_reclamacao varchar(255)
);

create table tb_funcionarios(
id_funcionario int unsigned not null primary key auto_increment,
nome_funcionario varchar(80) not null,
email_funcionario varchar(100) not null,
telefone_funcionario varchar(20) not null,
data_funcionario TIMESTAMP DEFAULT(CURRENT_TIMESTAMP())
);
insert into tb_funcionarios(nome_funcionario,email_funcionario,telefone_funcionario) VALUES ('Matheus','matheus@aa.com','1111123');

select * from tb_funcionarios;
drop table tb_funcionarios;

create table tb_entradas(
id_entrada int unsigned not null primary key auto_increment,
dataEHoraEntrada TIMESTAMP DEFAULT(CURRENT_TIMESTAMP())
references tb_funcionarios(id_funcionario)
);
insert into tb_entradas values(
);

 create table tb_saidas(
id_saida int unsigned not null primary key auto_increment,
dataEHorasaida TIMESTAMP DEFAULT(CURRENT_TIMESTAMP())
references tb_funcionarios(id_funcionario)
  );
  insert into tb_saidas values(
);

select*from tb_administradores;

drop table tb_entradas;

