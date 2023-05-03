CREATE DATABASE catraca;
USE catraca;

CREATE TABLE tb_administradores (
  id_adm INT PRIMARY KEY AUTO_INCREMENT,
  nome_adm VARCHAR(255),
  usuario_adm VARCHAR(255) UNIQUE,
  email_adm VARCHAR(255),
  senha_adm VARCHAR(80),
  dataCad_adm TIMESTAMP DEFAULT CURRENT_TIMESTAMP()
);

INSERT INTO tb_administradores (nome_adm, usuario_adm, email_adm, senha_adm) 
VALUES ('matheus', 'a', 'matheus@aa.com', '123');


CREATE TABLE tb_funcionarios (
  id_funcionario INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
  nome_funcionario VARCHAR(80) NOT NULL unique,
  dtNasc_funcionario VARCHAR(20) NOT NULL,
  cpf_funcionario VARCHAR(30) not null,
  rg_funcionario VARCHAR(30) not null,
  genero_funcionario varchar (20) not null,
  email_funcionario VARCHAR(100) NOT NULL,
  telefone_funcionario VARCHAR(20) NOT NULL,
  data_funcionario TIMESTAMP DEFAULT CURRENT_TIMESTAMP()
);
drop table tb_funcionarios;

INSERT INTO tb_funcionarios (nome_funcionario, email_funcionario, telefone_funcionario) 
VALUES ('Matheus Dias de Souza', 'matheus@aa.com', '1111123');

CREATE TABLE tb_entradas (
  id_entrada INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
  id_funcionario INT UNSIGNED NOT NULL,
  dataEHoraEntrada TIMESTAMP DEFAULT CURRENT_TIMESTAMP(),
  CONSTRAINT FK_entradas_funcionario FOREIGN KEY (id_entrada) REFERENCES tb_funcionarios(id_funcionario)
);


insert into tb_entradas values(
);

CREATE TABLE tb_saidas (
  id_saida INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
  id_funcionario INT UNSIGNED NOT NULL,
  dataEHorasaida TIMESTAMP DEFAULT CURRENT_TIMESTAMP(),
  CONSTRAINT FK_saidas_funcionario FOREIGN KEY (id_saida) REFERENCES tb_funcionarios(id_funcionario)
);

insert into tb_saidas values();



SELECT * FROM catraca.tb_funcionarios a inner join tb_entradas b on a.id_funcionario = id_entrada
inner join tb_saidas c on a.id_funcionario = id_saida;

DROP TABLE tb_funcionarios;
